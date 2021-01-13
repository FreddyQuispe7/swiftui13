//
//  ContentView.swift
//  ScrollCardView
//
//  Created by Freddy Alexander Quispe Torres on 12/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ScrollView {
            HeaderView()
            
            TitleView(titleCourse: "Cursos sobre moviles")
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack {
                    CardView(imageName: "swift", authorName: "Juan Gabriel Gomila", courseTitle: "Diseño de apps para iOS 13 con Swift UI desde cero", originalPrice: "199.99$", discountPrice: "10.99$")
                        .frame(width:300)
                    
                    CardView(imageName: "kotlin", authorName: "Juan Gomila, Alain Nicolas", courseTitle: "Curso de Andorid con Kotlin: Intensivo y práctico desde cero", originalPrice: "129.99$", discountPrice: "11.99$")
                        .frame(width:300)

                    CardView(imageName: "android_firebase", authorName: "Alain Nicolas, Juan Gomila", courseTitle: "Experto en Firebase para Android + MVP Curso Completo +30hrs", originalPrice: "129.99$", discountPrice: "11.99$")
                        .frame(width:300)
                    
                    CardView(imageName: "swift2", authorName: "Juan Gabriel Gomila", courseTitle: "Curso completo de iOS13 con Swift UI 5.2: de cero a experto", originalPrice: "129.99$", discountPrice: "11.99$")
                        .frame(width:300)
                }
                Spacer()
            }
            
            TitleView(titleCourse: "Cursos sobre Software")
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack {
                    CardView(imageName: "csharp", authorName: "Juan Gomila, Oak Academy", courseTitle: "POO en C#: aplica conceptos de POO en C# en proyectos reales", originalPrice: "129.99$", discountPrice: "11.99$")
                        .frame(width:300)
                    
                    CardView(imageName: "sql", authorName: "Juan Gomila, Rocio del Carmen", courseTitle: "Aplica SQL al mundo del Data Science desde cero", originalPrice: "109.99$", discountPrice: "11.99$")
                        .frame(width:300)
                    
                    CardView(imageName: "unity", authorName: "Juan Gabriel Gomila", courseTitle: "Curso completo de Unity 2020: domina el mundo de videojuegos", originalPrice: "129.99$", discountPrice: "11.99$")
                        .frame(width:300)
                    
                    CardView(imageName: "android_firebase", authorName: "Alain Nicolas, Juan Gomila", courseTitle: "Experto en Firebase para Android + MVP Curso Completo +30hrs", originalPrice: "129.99$", discountPrice: "11.99$")
                        .frame(width:300)
                }
                Spacer()
            }
            
        }
        
//        VStack(spacing:20){
//
//            CourseView(image: "csharp", title: "POO en C#: aplica conceptos de POO en C# en proyectos reales", teacher: "Juan Gabriel Gomila Salas, Oak Academy", rating: "4,7", comments: "32", hours: "13", lections: "104", price: "11,99", price_old: "129,99",
//                alert: "Destacado y nuevo", alert_color: .red)
//
//            CourseView(image: "kotlin", title: "Curso de Android con Kotlin: intensivo y práctico desde cero", teacher: "Juan Gabriel Gomila Salas, Alain Nicolas Tello", rating: "4,7", comments: "25", hours: "18", lections: "205", price: "11,99", price_old: "129,99", alert: "Lo más vendido", alert_color: .yellow)
//
//            Spacer()
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        VStack {
            Image("logo-udemy")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 30)
            
            Text("Juan Gabriel Gomila")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.semibold)
                .foregroundColor(.primary)
            Text("UCI, Profesor universitario y CEO de Frogames")
                .fontWeight(.light)
                .foregroundColor(.secondary)
            HStack {
                Text("139,245 estudiantes")
                    .font(.system(.footnote, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(.secondary)
                Image(systemName: "circle.fill")
                    .font(.system(size: 5))
                    .foregroundColor(.secondary)
                Text("59 cursos")
                    .font(.system(.footnote, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(.secondary)
                Image(systemName: "circle.fill")
                    .font(.system(size: 5))
                    .foregroundColor(.secondary)
                Text("23,535 reseñas")
                    .font(.system(.footnote, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(.secondary)
            }
        }
        .padding(.bottom)
    }
}

struct TitleView: View {
    var titleCourse: String
    
    var body: some View {
        HStack {
            Text(titleCourse)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.semibold)
            Spacer()
        }
        
        .padding(.horizontal)
    }
}
