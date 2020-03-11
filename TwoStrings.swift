//
//  TwoStrings.swift
//  
//
//  Created by Maryam Alimohammadi on 3/12/20.
//

func twoStrings(s1: String, s2: String) -> String {
    var dict1:[String: Int] = [:]
    var dict2:[String:Int] = [:]
    
    for c in s1 {
        dict1["\(c)"] = (dict1["\(c)"] ?? 0) + 1
    }
    
    for c in s2 {
        dict2["\(c)"] = (dict2["\(c)"] ?? 0) + 1
    }
    
    for (key, _) in dict1{
        if let _ = dict2[key] {
            return "Yes"
        }
    }
    
    return "No"
}
