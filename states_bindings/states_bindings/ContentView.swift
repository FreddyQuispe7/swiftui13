//
//  ContentView.swift
//  states_bindings
//
//  Created by Freddy Alexander Quispe Torres on 13/01/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var counter1 = 0
    @State private var counter2 = 0
    @State private var counter3 = 0
    @State private var total = 0
    
    var body: some View {
        VStack {
            Text("\(total)")
                .font(.system(size: 120))
                .fontWeight(.bold)
            CounterView(counter: $counter1, total: $total, buttonColor: .purple)
            CounterView(counter: $counter2, total: $total, buttonColor: .yellow)
            CounterView(counter: $counter3, total: $total, buttonColor: .green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CounterView: View {
    
    @Binding var counter: Int
    @Binding var total: Int
    
    var buttonColor: Color
    
    var body: some View {
        Button(action: {
            self.counter += 1
            self.total += 1
        }){
            Circle()
                .frame(width:150, height: 150)
                .foregroundColor(buttonColor)
                .overlay(
                    Text("\(counter)")
                        .font(.system(size: 80, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                )
        }
    }
}

//@State private var isPlaying = false

//        Button(action: {
//            self.isPlaying = !self.isPlaying
//        }){
//            Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
//                .font(.system(size: 100))
//                .foregroundColor(isPlaying ? .red : .blue)
//        }

//        Button(action: {
//            self.counter = self.counter + 1
//        }){
//            Text("\(counter)")
//                .font(.system(size: 60))
//                .fontWeight(.semibold)
//                .frame(minWidth: 120, minHeight: 120)
//                .foregroundColor(.white)
//                .background(Color.purple)
//                .clipShape(Circle())
//        }
