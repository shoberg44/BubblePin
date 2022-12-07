//
//  Item.swift
//  BubblePin
//
//  Created by STEVEN HOBERG on 12/6/22.
//

import Foundation
class Item{
    var name : String
    enum type {
        case general
        case password
    }
    var favorite : Bool
    var id : Int
    init(name: String, favorite: Bool, id: Int) {
        self.name = name
        self.favorite = favorite
        self.id = id
    }
}
