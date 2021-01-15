//
//  ContentView.swift
//  transitions
//
//  Created by Freddy Alexander Quispe Torres on 15/01/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showTranslation = false
    
    var body: some View {
        VStack{
            Rectangle()
                .frame(width: 250, height: 250)
                .foregroundColor(.orange)
                .overlay(
                    Text("Car")
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                        .foregroundColor(.white)
                )
            
            if showTranslation {
                Rectangle()
                    .frame(width: 250, height: 250)
                    .foregroundColor(.purple)
                    .overlay(
                        Text("Coche")
                            .font(.system(.largeTitle, design: .rounded))
                            .bold()
                            .foregroundColor(.white)
                )
                    .transition(.offsetScaledOpacityOut)
            }
        }
        .onTapGesture {
            withAnimation(Animation.spring()) {
                self.showTranslation.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension AnyTransition {
    static var offsetScaledOpacityOut: AnyTransition{
        AnyTransition.offset(x: -700, y: 0)
            .combined(with: .scale)
            .combined(with: .opacity)
    }
}
