//
//  DetalleCamisetaView.swift
//  Navigation
//
//  Created by Freddy Alexander Quispe Torres on 19/01/21.
//

import SwiftUI

struct DetalleCamisetaView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var camiseta: Camiseta
    
    var body: some View {
        VStack{
            Rectangle()
                .frame(height: 30)
                .foregroundColor(.gray)
                .opacity(0.20)
            
            Image(camiseta.imagen)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(
                    Rectangle()
                        .foregroundColor(.gray)
                        .opacity(0.20)
                )
                .offset(x: 0, y: -8)
            
            Text(camiseta.nombre)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .frame(width: 380, alignment: .leading)
                .foregroundColor(Color(.darkGray))
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            
            Text(camiseta.descripcion)
                .font(.system(.title3, design: .rounded))
                .frame(width: 380, alignment: .leading)
                .foregroundColor(.secondary)
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            
            Spacer()
        }
        //.navigationBarTitle("", displayMode: .inline)
        .edgesIgnoringSafeArea(.top)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
            Button(action:{
                //Navegar a la pantalla previa
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "arrow.backward")
                    .font(.title)
                    .foregroundColor(Color(.darkGray))
            })
        )
    }
}

struct DetalleCamisetaView_Previews: PreviewProvider {
    static var previews: some View {
        DetalleCamisetaView(camiseta: Camiseta(nombre: "River Plate local", descripcion: "Camiseta de local de River Plate, temporada 2020/2021", imagen: "RiverPlate1"))
    }
}
