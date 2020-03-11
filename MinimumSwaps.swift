//
//  MinimumSwaps.swift
//  
//
//  Created by Maryam Alimohammadi on 3/12/20.
//

func minimumSwaps(arr: [Int]) -> Int {
    
    var a = arr
    var count = 0
    
    for (index, item) in a.enumerated(){
        
        if index+1 != item {
            a[index] = a[item-1]
            a[item-1] = item
            count += 1
            
        }
        
    }
    
    return count-1
}
