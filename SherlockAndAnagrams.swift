//
//  SherlockAndAnagrams.swift
//  
//
//  Created by Maryam Alimohammadi on 3/12/20.
//

func sherlockAndAnagrams(s: String) -> Int {
 let chars = Array(s)
    var nAnagrams = 0
    for length in 0...chars.count-2 {
        var counter:[String:Int] = [:]
        for i in 0..<chars.count - length {
            let txt = String(chars[i...i+length].sorted())
            counter[txt] = (counter[txt] ?? 0) + 1
        }
        for c in counter {
            nAnagrams += c.value * (c.value - 1)/2
        }
    }
    return nAnagrams
}

