//
//  ContentView.swift
//  Navigation
//
//  Created by Freddy Alexander Quispe Torres on 18/01/21.
//

import SwiftUI

struct ContentView: View {
    
    var courses = [
        Course(name: "Aplica SQL al mundo del Data Science desde cero", image: "sql"),
        Course(name: "Curso de Android con Kotlin: Intensivo y práctico desde cero", image: "kotlin", feature: true),
        Course(name: "Experto en Firebase para Android + MVP Curso Completo +30hrs", image: "android_firebase"),
        Course(name: "Diseño de apps para iOS 13 con Swift UI desde cero", image: "swift", feature: true),
        Course(name: "Curso completo de iOS 13 con Swift UI 5.2: de cero a experto", image: "swift2"),
        Course(name: "POO en C#: aplica conceptos de POO en C# en proyectos reales", image: "csharp", feature: true),
        Course(name: "Curso completo de Unity 2020: domina el mundo de videojuegos", image: "unity"),
        Course(name: "Probabilidad para Machine Learning y Big Data con R y Python", image: "probabilidades", feature: true),
        Course(name: "Machine Learning de A a la Z: R y Python para Data Science", image: "machine_learning")
        ]
    
    var body: some View {
        NavigationView {
            List(courses.indices) { index in
                if courses[index].feature {
                    CourseFullImageRow(course: self.courses[index])
                } else {
                    CourseRoundImageRow(course: self.courses[index])
                }
            }
            .navigationBarTitle("Cursos online de JB")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Course: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var feature: Bool = false
}

struct CourseRoundImageRow: View {
    var course: Course
    
    var body: some View {
        HStack {
            Image(course.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(30)
            Text(course.name)
        }
    }
}

struct CourseFullImageRow: View {
    var course: Course
    
    var body: some View {
        ZStack {
            Image(course.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .cornerRadius(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.gray)
                        .opacity(0.25)
                )
            Text(course.name)
                .font(.system(.headline, design: .rounded))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        }
    }
}
