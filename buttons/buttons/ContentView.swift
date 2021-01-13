//
//  ContentView.swift
//  buttons
//
//  Created by Freddy Alexander Quispe Torres on 13/01/21.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        
        VStack(spacing: 20) {
            /*Button(action: {
                // Que debe hacer el boton
                print("Boton hola pulsado!!!")
            }) {
                // Como debe verse el boton
                Text("!Hola mundo!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(50)
                    
                    .padding(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color.green, lineWidth: 5)
                    )
            }*/
            
            Button(action: {
                print("Editar pulsado")
            }){
                HStack {
                    Image(systemName: "square.and.pencil")
                    Text("Editar")
                        .fontWeight(.bold)
                }
            }
            .buttonStyle(BasicButtonStyle())
            
            Button(action: {
                print("Eliminar pulsado")
            }){
                HStack {
                    Image(systemName: "trash")
                    Text("Eliminar")
                        .fontWeight(.bold)
                }
            }
            .buttonStyle(BasicButtonStyle())
            
            Button(action: {
                print("Compartir pulsado")
            }){
                HStack {
                    Image(systemName: "square.and.arrow.up")
                    Text("Compartir")
                        .fontWeight(.bold)
                }
            }
            .buttonStyle(BasicButtonStyle())
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BasicButtonStyle: ButtonStyle{
    
    func makeBody(configuration: Self.Configuration) -> some View{
        configuration.label
            .frame(minWidth:0, maxWidth: .infinity)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color("Dark Ocean 1"), Color("Dark Ocean 2")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            .font(.largeTitle)
            .foregroundColor(.white)
            .cornerRadius(45)
            .shadow(color: .blue, radius: 10, x: 20, y: 5)
            .padding(.horizontal, 15)
            .rotationEffect(.degrees(configuration.isPressed ? 90.0 : .zero))
            //.scaleEffect(configuration.isPressed ? 0.8 : 1.0)
    }
    
}
