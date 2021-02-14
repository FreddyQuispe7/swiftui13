//
//  Categorias.swift
//  Gestos
//
//  Created by Freddy Alexander Quispe Torres on 10/02/21.
//

import SwiftUI

struct Categorias: View {
    
    var body: some View {
        NavigationView {
            List{
                NavigationLink(destination: SubCategoria()) {
                    CategoriaView(nombre: "Todos los Servicios", imagen: "person.3.fill", color: Color(.systemGreen))
                }
                
            }
            .navigationTitle("Categorias")
        }
    }
}

struct Categorias_Previews: PreviewProvider {
    static var previews: some View {
        Categorias()
    }
}

struct CategoriaView: View {
    var nombre = ""
    var imagen = ""
    var color = Color.black
    
    var body: some View {
        HStack{
            Image(systemName: imagen)
                .font(.system(size: 60))
                .foregroundColor(color)
            Text(nombre)
                .font(.title2)
                .bold()
        }
        .padding(.vertical)
    }
}
