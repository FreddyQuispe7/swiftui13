//
//  ContentView.swift
//  anims
//
//  Created by Freddy Alexander Quispe Torres on 14/01/21.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonColorChanged = false
    @State private var iconColorChanged = false
    @State private var iconSizeChanged = false
    @State private var buttonColorChanged2 = false
    @State private var iconColorChanged2 = false
    @State private var iconSizeChanged2 = false
    
    var body: some View {
        VStack {
            
            // Teclado verde
            ZStack{
                Circle()
                    .frame(width: 180, height: 180)
                    .foregroundColor(buttonColorChanged ? Color(.systemGray4) : .green)

                Image(systemName: "keyboard")
                    .font(.system(size: 80))
                    .foregroundColor(iconColorChanged ? .green : Color(.systemGray6))
                    .scaleEffect(iconSizeChanged ? 1.0 : 0.5)
            }
            //.animation(.spring(response: 0.5, dampingFraction: 0.1, blendDuration: 0.5))
            .onTapGesture {
                withAnimation(.spring(response: 0.5, dampingFraction: 0.1, blendDuration: 0.5)) {
                    self.buttonColorChanged.toggle()
                    self.iconColorChanged.toggle()
                    self.iconSizeChanged.toggle()
                }
            }
            
            // Imagen redondeada
            ZStack{
                Circle()
                    .frame(width: 330, height: 330)
                    .foregroundColor(buttonColorChanged2 ? .gray : Color(.systemGray4))
                    .scaleEffect(iconSizeChanged2 ? 1.0 : 0.5)

                Image("usuario")
                    .scaleEffect(iconSizeChanged2 ? 1.0 : 0.5)
            }
            .animation(.spring(response: 1, dampingFraction: 0.2, blendDuration: 0.5))
            .onTapGesture {
                self.buttonColorChanged2.toggle()
                self.iconColorChanged2.toggle()
                self.iconSizeChanged2.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


