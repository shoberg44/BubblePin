//
//  Item.swift
//  BubblePin
//
//  Created by STEVEN HOBERG on 12/6/22.
//

import Foundation
class Item{
    var name : String
    var type : String
    var favorite : Bool
    var id : Int
    init(name: String, type: String, favorite: Bool, id: Int) {
        self.name = name
        self.type = type
        self.favorite = favorite
        self.id = id
    }
}
