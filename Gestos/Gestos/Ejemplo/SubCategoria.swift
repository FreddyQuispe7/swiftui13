//
//  SubCategoria.swift
//  Gestos
//
//  Created by Freddy Alexander Quispe Torres on 10/02/21.
//

import SwiftUI

struct SubCategoria: View {
    var body: some View {
        List{
            NavigationLink(destination: DetalleCategoria()) {
                HStack{
                    Image("hospital")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .clipped()
                    Text("Hospital Miguel")
                        .font(.title)
                        .bold()
                }
                .padding(.vertical)
            }
            
        }
        .navigationTitle("Salud")
        .toolbar {
            Button(action: {
                // TODO
            }) {
                Image(systemName: "slider.horizontal.3")
            }
        }
    }
}

struct SubCategoria_Previews: PreviewProvider {
    static var previews: some View {
        SubCategoria()
    }
}
