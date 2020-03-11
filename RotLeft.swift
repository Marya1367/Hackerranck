//
//  RotLeft.swift
//  
//
//  Created by Maryam Alimohammadi on 3/12/20.
//

func rotLeft(a: [Int], d: Int) -> [Int] {
    
    var orgArr = a
    
    
    for i in 0..<a.count{
        let newPlace = (i + (a.count-d)) % a.count
        orgArr[newPlace] = a[i]

    }
        
    return orgArr
    
}
