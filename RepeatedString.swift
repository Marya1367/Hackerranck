//
//  RepeatedString.swift
//  
//
//  Created by Maryam Alimohammadi on 3/12/20.
//

func repeatedString(s: String, n: Int) -> Int {
    
    var countA = 0
    if n<s.count{
        for (i,item) in s.enumerated(){
            if item == "a", i<n {
                countA += 1
                
            }
        }
        return countA
    }
    
    for item in s {
        if item == "a"{
            countA += 1
        }
    }
    
    var x = (n/s.count)*countA
    let y = n%s.count
    var c = 0
    for item in s {
        if item == "a", c<y{
            x += 1
            
        }
        c += 1
        
    }
    
    return x
    
}

