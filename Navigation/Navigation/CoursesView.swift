//
//  CourseView.swift
//  Navigation
//
//  Created by Freddy Alexander Quispe Torres on 19/01/21.
//

import SwiftUI

struct CoursesView: View {
    var courses = [
        CourseUdemy(title: "Diseño de apps para iOS 13 con Swift UI desde cero", author: "Juan Gabriel Gomila", image: "swift", originalPrice: "199.99$", discountPrice: "10.99$"),
        CourseUdemy(title: "Curso de Andorid con Kotlin: Intensivo y práctico desde cero", author: "Juan Gomila, Alain Nicolas", image: "kotlin", originalPrice: "129.99$", discountPrice: "11.99$"),
        CourseUdemy(title: "Experto en Firebase para Android + MVP Curso Completo +30hrs", author: "Alain Nicolas, Juan Gomila", image: "android_firebase", originalPrice: "129.99$", discountPrice: "11.99$"),
        CourseUdemy(title: "Curso completo de iOS13 con Swift UI 5.2: de cero a experto", author: "Juan Gabriel Gomila", image: "swift2", originalPrice: "129.99$", discountPrice: "11.99$"),
        CourseUdemy(title: "POO en C#: aplica conceptos de POO en C# en proyectos reales", author: "Juan Gomila, Oak Academy", image: "csharp", originalPrice: "129.99$", discountPrice: "11.99$"),
        CourseUdemy(title: "Aplica SQL al mundo del Data Science desde cero", author: "Juan Gomila, Rocio del Carmen", image: "sql", originalPrice: "109.99$", discountPrice: "11.99$"),
        CourseUdemy(title: "Curso completo de Unity 2020: domina el mundo de videojuegos", author: "Juan Gabriel Gomila", image: "unity", originalPrice: "129.99$", discountPrice: "11.99$")
        ]
    
    var body: some View {
        //NavigationView {
            List(courses){ course in
                ZStack {
                    CourseRowView(course: course)
                    NavigationLink(destination: CourseDetailView(course: course)) {
                        EmptyView()
                    }
                    .frame(width: 0)
                    .opacity(0)
                }
            }
            .navigationBarTitle("Cursos de Juan Gomila")
        //}
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
