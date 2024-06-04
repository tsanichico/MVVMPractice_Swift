//
//  ItemModel.swift
//  MVVMPractice
//
//  Created by Tsani Chico Bragi on 04/06/24.
//

import Foundation

struct Item: Identifiable, Codable {
    var id = UUID()
    var name: String
    var description: String
    
    static var exampleItem = Item(name: "Nintendo", description: "Sample Description")
}
