//
//  MorphView.swift
//  anims
//
//  Created by Freddy Alexander Quispe Torres on 14/01/21.
//

import SwiftUI

struct MorphView: View {
    
    @State private var animBegin = false
    @State private var circle = false
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: animBegin ? 0 : 260, height: animBegin ? 0 : 70)
                .foregroundColor(.black)
            
            RoundedRectangle(cornerRadius: animBegin ? 30 : 10)
                .frame(width: animBegin ? 60 : 250, height: 60)
                .foregroundColor(animBegin ? .blue : .green)
                .overlay(
                    Image(systemName: "keyboard")
                        .font(.system(.largeTitle))
                        .foregroundColor(.white)
                        .scaleEffect(circle ? 0.5 : 1.0)
                )
        }.onTapGesture {
            withAnimation(Animation.spring()){
                self.animBegin.toggle()
            }
            
            withAnimation(Animation.spring().repeatForever().delay(0.25)){
                self.circle.toggle()
            }
        }
    }
}

struct MorphView_Previews: PreviewProvider {
    static var previews: some View {
        MorphView()
    }
}
