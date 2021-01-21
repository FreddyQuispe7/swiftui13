//
//  ContentView.swift
//  Navigation
//
//  Created by Freddy Alexander Quispe Torres on 18/01/21.
//

import SwiftUI

struct ContentView: View {
    @State private var action: Int? = 0
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink(destination: CoursesJBView()) {
                    ButtonView(title: "Cursos JB", image: "book", color: Color(.systemBlue))
                }
                
                NavigationLink(destination: CoursesView()) {
                    ButtonView(title: "Cursos Udemy", image: "book.fill", color: Color(.systemPurple))
                }
                
                NavigationLink(destination: CamisetasView()) {
                    ButtonView(title: "Camisetas", image: "person.crop.square.fill", color: Color(.systemRed))
                }
                
                NavigationLink(destination: PilotosView()) {
                    ButtonView(title: "Pilotos", image: "figure.walk", color: Color(.systemGreen))
                }
            }
            .navigationBarTitle("Navigation SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LabelView: View {
    var title: String
    var image: String
    var color: Color
    
    var body: some View {
        Label(title, systemImage: image)
            .font(.title2)
            .foregroundColor(.white)
            .frame(width: 300, height: 60)
            .background(color)
            .cornerRadius(10)
    }
}

struct ButtonView: View {
    var title: String
    var image: String
    var color: Color
    
    var body: some View {
        HStack {
            Image(systemName: image)
            Text(title)
                .frame(width: 200, alignment: .leading)
            Spacer()
        }
        .padding(.leading)
        .font(.title2)
        .foregroundColor(.white)
        .frame(width: 300, height: 60)
        .background(color)
        .cornerRadius(10)
    }
}
