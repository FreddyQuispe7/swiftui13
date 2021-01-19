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
                    .clipped()
                    .background(piloto.equipo.color)
                
                Text(piloto.nombre)
                    .font(.system(size:25, design: .rounded))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .frame(width: 145)
                    .offset(x: -120, y: -50)
                    .multilineTextAlignment(.center)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            }

            ZStack {
                Image(piloto.equipo.imagen)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:250)
                    .clipped()
                    .cornerRadius(20)
                    .offset(x: -70, y: -10)
                
                Text(piloto.equipo.nombre)
                    .font(.system(.title3, design: .rounded))
                    .offset(x: -140, y: -40)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
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
