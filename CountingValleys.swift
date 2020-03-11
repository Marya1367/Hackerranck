//
//  CountingValleys.swift
//  
//
//  Created by Maryam Alimohammadi on 3/12/20.
//

func countingValleys(n: Int, s: String) -> Int {
    var cValley = 0
    var seaLevel = 0
    
    for c in s {
        if c == "U" {
            seaLevel += 1
            if seaLevel == 0{
                cValley += 1
            }
        }else{
            seaLevel -= 1
        }
    }
    return cValley
    
}
