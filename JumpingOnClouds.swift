//
//  JumpingOnClouds.swift
//  
//
//  Created by Maryam Alimohammadi on 3/12/20.
//

func jumpingOnClouds(c: [Int]) -> Int {
    var index = 0
    var count = 0
    
    while index < c.count{
        
        if index+2<c.count, c[index+2] == 0{
            index = index+2
            count += 1
        }else if index+1<c.count, c[index+1] == 0{
            index = index+1
            count += 1
        }else{
            break
        }
    }
    
    return count
}
