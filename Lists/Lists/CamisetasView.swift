//
//  CamisetasView.swift
//  Lists
//
//  Created by Freddy Alexander Quispe Torres on 17/01/21.
//

import SwiftUI

struct CamisetasView: View {

    var camisetas = [
        Camiseta(nombre: "River Plate local", descripcion: "Camiseta de local de River Plate, temporada 2020/2021", imagen: "RiverPlate1", destacado:true),
        Camiseta(nombre: "River Plate alterna 1", descripcion: "Camiseta de visitante 1 de River Plate, temporada 2020/2021", imagen: "RiverPlate2"),
        Camiseta(nombre: "Real Madrid local", descripcion: "Camiseta de local de Real Madrid, temporada 2020/2021", imagen: "RealMadrid1", destacado:true),
        Camiseta(nombre: "Real Madrid alterna 1", descripcion: "Camiseta de visitante 1 de Real Madrid, temporada 2020/2021", imagen: "RealMadrid2"),
        Camiseta(nombre: "Barcelona alterna 1", descripcion: "Camiseta de visitante 1 de Barcelona, temporada 2020/2021", imagen: "Barcelona2", destacado:true),
        Camiseta(nombre: "Boca Juniors local", descripcion: "Camiseta de local de Boca Juniors, temporada 2020/2021", imagen: "BocaJuniors1"),
        Camiseta(nombre: "Juventus alterna 1", descripcion: "Camiseta de visitante 1 de Juventus, temporada 2020/2021", imagen: "Juventus2", destacado:true),
        Camiseta(nombre: "Juventus alterna 1 (2019/2020)", descripcion: "Camiseta de visitante 1 de Juventus, temporada 2019/2020", imagen: "Juventus2-2020"),
        Camiseta(nombre: "Peru alterna 2", descripcion: "Camiseta de visitante 2 de Peru, temporada 2020", imagen: "Peru3", destacado:true),
        Camiseta(nombre: "Roma local", descripcion: "Camiseta de local de Roma, temporada2020/2021", imagen: "Roma1"),
        Camiseta(nombre: "Manchester City alterna 1", descripcion: "Camiseta de visitante 1 de Manchester City, temporada 2020/2021", imagen: "ManchesterCity2", destacado:true)
        ]
    
    var body: some View {
        //NavigationView {
            List(camisetas.indices) { index in
                ZStack{
                    if self.camisetas[index].destacado {
                        CamisetaListaRow(camiseta: self.camisetas[index])
                    } else {
                        CamisetaImagenRow(camiseta: self.camisetas[index])
                    }
                    
                    NavigationLink(destination: DetalleCamisetaView(camiseta: self.camisetas[index])) {
                        EmptyView()
                    }
                    .frame(width:0)
                    .opacity(0)
                }
            }
            .navigationBarTitle("Lista de camisetas")
        //}
    }
}

struct CamisetasView_Previews: PreviewProvider {
    static var previews: some View {
        CamisetasView()
    }
}

struct Camiseta: Identifiable {
    var id = UUID()
    var nombre: String
    var descripcion: String
    var imagen: String
    var destacado: Bool = false
}

struct CamisetaListaRow: View {
    var camiseta: Camiseta
    
    var body: some View {
        HStack {
            Image(camiseta.imagen)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
            
            VStack(alignment:.leading) {
                Text(camiseta.nombre)
                    .font(.title3)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(.darkGray))

                Text(camiseta.descripcion)
                    .font(.headline)
                    .foregroundColor(.secondary)
                
                Spacer()
            }
        }
    }
}

struct CamisetaImagenRow: View {
    var camiseta: Camiseta
    
    var body: some View {
        HStack {
            VStack(alignment:.leading) {
                Text(camiseta.nombre)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.darkGray))
                Text(camiseta.descripcion)
                    .font(.headline)
                    .foregroundColor(.secondary)
                Spacer()
            }
            .frame(width: 240, alignment: .leading)
            .padding(.top, 10)
            
            Image(camiseta.imagen)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, alignment: .trailing)
                .clipped()
        }
    }
}
