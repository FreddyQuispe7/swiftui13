//
//  ContentView.swift
//  Images
//
//  Created by Freddy Alexander Quispe Torres on 11/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("newyork")
            .resizable()
//            .edgesIgnoringSafeArea(.vertical)
            //.scaledToFit()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300)
            //.clipped()
            .clipShape(Capsule())
            .opacity(0.9)
            .overlay(
                /*Image(systemName: "heart.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.pink)
                    .opacity(0.5)*/
                /*Text("Que ganas de volver a Nueva York, sentir el frio de invierno y pasear por el Central Park con un buen Bagel en la mano!")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(.headline, design: .rounded))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(10)
                    .opacity(0.7)
                    .padding(),
                alignment: .bottom*/
                Capsule()
                    .foregroundColor(.gray)
                    .opacity(0.5)
                    .overlay(
                        Text("Nueva York")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width:250)
                    )
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//        HStack (spacing: 0) {
//            Image(systemName: "f.square")
//                .font(.system(size: 40))
//                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//            Image(systemName: "r.circle.fill")
//                .font(.system(size: 40))
//                .foregroundColor(.green)
//            Image(systemName: "e.circle")
//                .font(.system(size: 40))
//                .foregroundColor(.red)
//            Image(systemName: "d.circle.fill")
//                .font(.system(size: 40))
//                .foregroundColor(.purple)
//            Image(systemName: "d.square")
//                .font(.system(size: 40))
//                .foregroundColor(.orange)
//            Image(systemName: "y.circle.fill")
//                .font(.system(size: 40))
//                .foregroundColor(.gray)
//        }
