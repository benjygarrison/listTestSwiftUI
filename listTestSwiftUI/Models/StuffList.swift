//
//  List.swift
//  listTestSwiftUI
//
//  Created by Ben Garrison on 5/22/22.
//

import Foundation

struct StuffList {
    
    let word: String
    let imageURL: String
    let number: Double
    
}

extension StuffList {
    
    static func listOfStuff() -> [StuffList] {
        
        return [
            StuffList(word: "Panda.jpg", imageURL: "panda", number: 1),
            StuffList(word: "Robot.jpg", imageURL: "robot", number: 2),
            StuffList(word: "Rock.jpg", imageURL: "rock", number: 3)
        ]
    }
    
}
