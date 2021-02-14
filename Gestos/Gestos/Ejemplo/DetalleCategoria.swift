//
//  DetalleCategoria.swift
//  Gestos
//
//  Created by Freddy Alexander Quispe Torres on 10/02/21.
//

import SwiftUI

struct DetalleCategoria: View {
    var body: some View {
        VStack {
            Image("hospital")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct DetalleCategoria_Previews: PreviewProvider {
    static var previews: some View {
        DetalleCategoria()
    }
}
