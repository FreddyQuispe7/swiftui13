//
//  Course.swift
//  Forms
//
//  Created by Freddy Alexander Quispe Torres on 21/01/21.
//

import Foundation

struct Course: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var type: String
    var priceLevel: Int
    var featured: Bool = false
    var purchased: Bool = false
}
