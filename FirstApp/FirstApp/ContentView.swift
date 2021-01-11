//
//  ContentView.swift
//  FirstApp
//
//  Created by Freddy Alexander Quispe Torres on 11/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hola mundo")
            .fontWeight(.bold)
            .font(.system(size: 45, design: .rounded))
            .foregroundColor(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
