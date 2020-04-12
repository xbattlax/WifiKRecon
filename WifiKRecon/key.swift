//
//  key.swift
//  WifiKRecon
//
//  Created by Nathan Metzger on 4/12/20.
//  Copyright © 2020 Metzger inc. All rights reserved.
//

import Foundation

struct Key: Codable{
    let name: String?
    let key : String?
    
    static func loadKey()->[Key]{
            print("funvtion")
            let path = Bundle.main.path(forResource: "key", ofType: "json") ?? nil
            print(path as Any);
            if (path != nil) {
                print("in");
                do {
                    let data = try Data(contentsOf: URL(fileURLWithPath:path ?? "/Users/nathanmetzger/Documents/WifiKRecon/WifiKRecon/key.json"))//, options:.mappedIfSafe);
                    
                    let keys = try JSONDecoder().decode([Key].self, from: data);
    //                print(keys);
                    return keys;
                } catch{
                    print(error);
                    return [Key(name:nil, key:nil)];
                }
            }
            return [Key(name:nil, key:nil)];
        }

}
