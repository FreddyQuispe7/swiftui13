//
//  Course.swift
//  Modals
//
//  Created by Freddy Alexander Quispe Torres on 20/01/21.
//

import Foundation

struct Course: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var feature: Bool = false
    var descripcion = ""
}
