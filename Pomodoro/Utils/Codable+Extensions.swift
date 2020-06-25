//
//  Codable+Extensions.swift
//  Pomodoro
//
//  Created by JD on 6/23/20.
//  Copyright © 2020 JDoor. All rights reserved.
//

import Foundation
import FirebaseFirestore

extension Encodable {
    /// Returns a JSON dictionary, with choice of minimal information
    func getDictionary() -> [String: Any]? {
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        guard let data = try? encoder.encode(self) else { return nil }
        guard let dictionary = (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap({ $0 as? [String: Any]}) else { return nil
        }
        
        return CodableConverter.toFirbaseAcceptable(dictionary: dictionary)
    }
}

extension Decodable {
    /// Initialize from JSON Dictionary. Return nil on failure
    init?(dictionary value: [String:Any]) {
        
        let dictionaryJson = CodableConverter.toJsonAcceptable(dictionary: value)
        
        guard JSONSerialization.isValidJSONObject(dictionaryJson) else { return nil }
        guard let jsonData = try? JSONSerialization.data(withJSONObject: dictionaryJson, options: []) else { return nil }
        
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        guard let newValue = try? decoder.decode(Self.self, from: jsonData) else { return nil }
        self = newValue
    }
}

fileprivate struct CodableConverter {
    static func toFirbaseAcceptable(dictionary: [String: Any]) -> [String: Any] {
        var tmpDicitonary = dictionary
        
        tmpDicitonary.forEach { (key: String, value: Any) in
            switch value {
            case let bool as Bool:
                tmpDicitonary[key] = bool
            case let date as TimeInterval:
                let timestamp = Timestamp(date: Date(timeIntervalSince1970: date))
                tmpDicitonary[key] = timestamp
            case let arr as [[String: Any]]:
                tmpDicitonary[key] = arr.map{toJsonAcceptable(dictionary:$0)}
            case let dict as [String: Any]:
                tmpDicitonary[key] = toJsonAcceptable(dictionary: dict)
            default:
                break
            }
        }
        
        return tmpDicitonary
    }
    
    static func toJsonAcceptable(dictionary: [String: Any]) -> [String: Any] {
        var tmpDicitonary = dictionary
        
        tmpDicitonary.forEach { (key: String, value: Any) in
            switch value {
            case _ as DocumentReference:
                tmpDicitonary.removeValue(forKey: key)
            case let ts as Timestamp:
                let date = ts.dateValue()
                
                let jsonValue = date.timeIntervalSince1970
                tmpDicitonary[key] = jsonValue
            case let arr as [[String: Any]]:
                tmpDicitonary[key] = arr.map{toJsonAcceptable(dictionary:$0)}
            case let dict as [String: Any]:
                tmpDicitonary[key] = toJsonAcceptable(dictionary: dict)
            default:
                break
            }
        }
        
        return tmpDicitonary
    }
}
