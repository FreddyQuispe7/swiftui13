//
//  ContentView.swift
//  FirstApp
//
//  Created by Freddy Alexander Quispe Torres on 11/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Soy Tecnico Electronico, especialista en Automatizacion y Control Industrial, egresado de Tecsup, con estudios de ingenieria electronica en la Pontificia Universidad Catolica del Peru. Actualmente me encuentro desarrollando mi nuevo perfil profesional, estudiando Ingenieria de Sistemas en la UPC.")
            .fontWeight(.regular)
            .font(.custom("Gill Sans", size: 25))
            .foregroundColor(.blue)
            .multilineTextAlignment(.center)
            .lineLimit(nil)
            .truncationMode(.tail)
            .lineSpacing(8)
            .padding()
            //.rotationEffect(.degrees(15), anchor: UnitPoint(x: 0, y: 0))
            .rotation3DEffect(.degrees(30), axis: (x:1, y:0, z:0))
            .shadow(color: .gray, radius: 1, x: 0, y: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
