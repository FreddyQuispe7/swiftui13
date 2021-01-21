//
//  DetallePilotoView.swift
//  Navigation
//
//  Created by Freddy Alexander Quispe Torres on 19/01/21.
//

import SwiftUI

struct DetallePilotoView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var piloto: Piloto
    
    var body: some View {
        VStack{
            ZStack {
                Image(piloto.imagen)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, 20)
                    .clipped()
                    .background(piloto.equipo.color)
                
                Text(piloto.nombre)
                    .font(.system(size:25, design: .rounded))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .frame(width: 145)
                    .offset(x: -120, y: -40)
                    .multilineTextAlignment(.center)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            }

            ZStack(alignment: .topLeading) {
                Image(piloto.equipo.imagen)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 2)
                            .foregroundColor(piloto.equipo.color)
                    )
                
                Text(piloto.equipo.nombre)
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(piloto.equipo.color)
                    .padding()
            }
            .padding()
            
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
                Image(systemName: "arrowshape.turn.up.left.fill")
                    .font(.title)
                    .foregroundColor(.white)
            })
        )
    }
}

struct DetallePilotoView_Previews: PreviewProvider {
    static var previews: some View {
        DetallePilotoView(piloto: Piloto(nombre: "Lewis Hamilton", imagen: "hamilton", equipo: mercedes))
    }
}
