//
//  CheckMagazin.swift
//  
//
//  Created by Maryam Alimohammadi on 3/12/20.
//


func checkMagazine(magazine: [String], note: [String]) -> Void {
    var magDict:[String:Int] = [:]
    var noteDict:[String:Int] = [:]

    for word in magazine {
        magDict[word] = (magDict[word] ?? 0) + 1
    }
    
    for word in note {
        noteDict[word] = (noteDict[word] ?? 0) + 1
    }
    
    for (key, value) in noteDict{
        if let count = magDict[key]{
            if count<value {
                print("No")
                return
            }
          
        }else{
            print("No")
            return
        }
        
    }
    
    print("Yes")
    
}
