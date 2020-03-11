//
//  WildCard.swift
//  
//
//  Created by Maryam Alimohammadi on 3/12/20.
//

import Foundation
struct Item {
    var group: String
    var category: String
}

class ItemMatcher {
    
    let items: [Item]
    
    init(items: [Item]) {
        self.items = items
    }
    
    func itemMatching(group: String, category: String) -> Item? {
        
        let groupArr = Array(group)
        let categoryArr = Array(category)
        
        if group == "*" && category == "*" {
            return items.first
        }
        
        for item in items {
            if item.group == group && item.category == category {
                return item
            }
        }
        
        
        for item in items {
            var isMatch = [Bool]()

            for (index, char) in groupArr.enumerated(){
                if index == groupArr.count - 1 , index != 0 {
                    if item.group.last == char || char == "*" || char == "?"{
                        isMatch.append(true)
                        break
                        
                    }else{
                        isMatch.append(false)
                        break
                    }
                }
            }
            
            for (index, char) in categoryArr.enumerated(){
                if index == category.count - 1 , index != 0 {
                    if item.category.last == char || char == "*" || char == "?"{
                        isMatch.append(true)
                        break
                    }else{
                        isMatch.append(false)
                        break
                    }
                }
                
            }
            
            let falseArr = isMatch.filter{$0 == false}
            return falseArr.count == 0 ?  item : nil
        }
        
       return nil
        
        
        
    }
    
}

let items = [Item(group: "c1", category: "g1"), Item(group: "c2", category: "g2"), Item(group: "c3", category: "g3"),Item(group: "c4", category: "g4")]

var im = ItemMatcher(items: items)
let x = im.itemMatching(group: "c5", category: "g5")
