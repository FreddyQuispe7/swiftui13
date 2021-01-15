//
//  ApplePayView.swift
//  transitions
//
//  Created by Freddy Alexander Quispe Torres on 15/01/21.
//

import SwiftUI

struct ApplePayView: View {
    
    @State private var estadoPago = 0
    @State private var progress = 0.0
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .trim(from: 0.0, to: estadoPago==1 ? 0: 1)
                .frame(width: 250, height: 60)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .overlay(
                    Image(systemName: "applelogo")
                        .font(.largeTitle)
                        .foregroundColor(.white)
            )
            
            if estadoPago==1 {
                ZStack {
                    Circle()
                        .stroke(Color(.systemGray6), lineWidth: 16)
                        .frame(width: 150, height: 150)
                    
                    Circle()
                        .trim(from: 0.0, to: 0.3)
                        .stroke(Color.blue, lineWidth: 8)
                        .frame(width: 150, height: 150)
                        .rotationEffect(Angle(degrees: 360))
                        .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))
                }
                .transition(/*@START_MENU_TOKEN@*/.identity/*@END_MENU_TOKEN@*/)
            }

        }
        .onTapGesture {
            self.estadoPago += 1
            
            if estadoPago == 1 {
                Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                    self.progress += 0.025
                    if self.progress >= 1.0 {
                        estadoPago = 2
                        timer.invalidate()
                    }
                }
            }
            
            if estadoPago == 3 {
                estadoPago = 0
            }
            
        }
    }
}

struct ApplePayView_Previews: PreviewProvider {
    static var previews: some View {
        ApplePayView()
    }
}
