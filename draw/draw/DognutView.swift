//
//  DognutView.swift
//  draw
//
//  Created by Freddy Alexander Quispe Torres on 14/01/21.
//

import SwiftUI

struct DognutView: View {
    var body: some View {
        ZStack{
            Circle()
                .trim(from: 0.0, to: 0.3)
                .stroke(Color(.brown), lineWidth: 60)
            
            Circle()
                .trim(from: 0.3, to: 0.5)
                .stroke(Color(.systemPink), lineWidth: 60)
            
            Circle()
                .trim(from: 0.5, to: 0.75)
                .stroke(Color(.systemOrange), lineWidth: 60)
            
            Circle()
                .trim(from: 0.75, to: 1.0)
                .stroke(Color(.systemRed), lineWidth: 70)
                .overlay(
                    Text("25%")
                        .font(.system(.title, design: .rounded))
                        .bold()
                        .foregroundColor(.white)
                        .offset(x: 90, y: -90)
                )
        }
        .frame(width:250, height: 250)
    }
}

struct DognutView_Previews: PreviewProvider {
    static var previews: some View {
        DognutView()
    }
}
