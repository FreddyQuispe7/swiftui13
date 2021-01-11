//
//  ContentView.swift
//  Images
//
//  Created by Freddy Alexander Quispe Torres on 11/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Image(systemName: "recordingtape")
//            .font(.system(size: 80))
//            .foregroundColor(.green)
//            .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0, y: 10)
        HStack (spacing: 0) {
            Image(systemName: "f.square")
                .font(.system(size: 40))
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Image(systemName: "r.circle.fill")
                .font(.system(size: 40))
                .foregroundColor(.green)
            Image(systemName: "e.circle")
                .font(.system(size: 40))
                .foregroundColor(.red)
            Image(systemName: "d.circle.fill")
                .font(.system(size: 40))
                .foregroundColor(.purple)
            Image(systemName: "d.square")
                .font(.system(size: 40))
                .foregroundColor(.orange)
            Image(systemName: "y.circle.fill")
                .font(.system(size: 40))
                .foregroundColor(.gray)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
