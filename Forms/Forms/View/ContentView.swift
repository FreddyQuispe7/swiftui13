//
//  ContentView.swift
//  Forms
//
//  Created by Freddy Alexander Quispe Torres on 21/01/21.
//

import SwiftUI

struct ContentView: View {
    @State var courses = [
        Course(name: "Aplica SQL al mundo del Data Science desde cero", image: "sql", type: "Base de datos", priceLevel: 4, purchased: true),
        Course(name: "Curso de Android con Kotlin: Intensivo y práctico desde cero", image: "kotlin", type: "Desarrollo de Apps", priceLevel: 3, featured: true),
        Course(name: "Experto en Firebase para Android + MVP Curso Completo +30hrs", image: "android_firebase", type: "Desarrollo de Apps", priceLevel: 4),
        Course(name: "Diseño de apps para iOS 13 con Swift UI desde cero", image: "swift", type: "Desarrollo de Apps", priceLevel: 5, featured: true, purchased: true),
        Course(name: "Curso completo de iOS 13 con Swift UI 5.2: de cero a experto", image: "swift2", type: "Desarrollo de Apps", priceLevel: 4, purchased: true),
        Course(name: "POO en C#: aplica conceptos de POO en C# en proyectos reales", image: "csharp", type: "Software", priceLevel: 4, featured: true),
        Course(name: "Curso completo de Unity 2020: domina el mundo de videojuegos", image: "unity", type: "Juegos", priceLevel: 3, purchased: true),
        Course(name: "Probabilidad para Machine Learning y Big Data con R y Python", image: "probabilidades", type: "Machine Learning", priceLevel: 3, featured: true),
        Course(name: "Machine Learning de A a la Z: R y Python para Data Science", image: "machine_learning", type: "Machine Learning", priceLevel: 2)
        ]
    
    @State private var selectedCourse: Course?
    
    @State private var showSettingsView: Bool = false
    
    var body: some View {
        NavigationView {
            List{
                ForEach(courses) { course in
                    ZStack{
                        CourseRoundImageRow(course: course)
                            .contextMenu{
                                Button(action: {
                                    self.setPurchased(item: course)
                                }) {
                                    HStack {
                                        Text("Comprar")
                                        Image(systemName: "checkmark.circle")
                                    }
                                }
                                Button(action: {
                                    self.setFeatured(item: course)
                                }) {
                                    HStack {
                                        Text("Destacar")
                                        Image(systemName: "star")
                                    }
                                }
                                Button(action: {
                                    self.deleteItem(item: course)
                                }) {
                                    HStack {
                                        Text("Eliminar")
                                        Image(systemName: "trash")
                                    }
                                }
                            }
                            .onTapGesture {
                                self.selectedCourse = course
                            }
                            .actionSheet(item: self.$selectedCourse) { course in
                                ActionSheet(title: Text("Indica tu accion a realizar"),
                                            message: nil,
                                            buttons: [
                                                .default(Text("Marcar como favorito"), action: {
                                                    self.setFeatured(item: course)
                                                }),
                                                .default(Text("Marcar como comprado"), action: {
                                                    self.setPurchased(item: course)
                                                }),
                                                .default(Text("Ver detalle curso"), action: {
                                                    //
                                                }),
                                                .destructive(Text("Eliminar curso"), action: {
                                                    self.deleteItem(item: course)
                                                }),
                                                .cancel()
                                            ])
                            }
                        
                        /*NavigationLink(destination: DetailView(course: course)) {
                            EmptyView()
                        }
                        .frame(width: 0)
                        .opacity(0)
                        */
                    }
                }.onDelete{ (indexSet) in
                    self.courses.remove(atOffsets: indexSet)
                }
            }
            .navigationBarTitle("Cursos online de JB", displayMode: .automatic)
        }
    }
    
    private func setFeatured(item course: Course){
        if let idx = self.courses.firstIndex(where: {$0.id == course.id}){
            self.courses[idx].featured.toggle()
        }
    }
    
    private func setPurchased(item course: Course){
        if let idx = self.courses.firstIndex(where: {$0.id == course.id}){
            self.courses[idx].purchased.toggle()
        }
    }
    
    private func deleteItem(item course: Course){
        if let idx = self.courses.firstIndex(where: {$0.id == course.id}){
            self.courses.remove(at: idx)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CourseRoundImageRow: View {
    var course: Course
    
    var body: some View {
        HStack {
            Image(course.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .padding(.trailing,10)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(course.name)
                        .font(.system(.body, design: .rounded))
                        .bold()
                    Text(String(repeating: "$", count: course.priceLevel))
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
                Text(course.type)
                    .font(.system(.subheadline, design: .rounded))
                    .bold()
                    .foregroundColor(.secondary)
            }
            
            Spacer().layoutPriority(-10)
            
            if course.featured {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
            
            if course.purchased {
                Spacer()
                
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(.green)
            }
        }
    }
}
