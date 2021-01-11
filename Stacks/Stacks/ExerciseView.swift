//
//  ExerciseView.swift
//  Stacks
//
//  Created by Freddy Alexander Quispe Torres on 11/01/21.
//

import SwiftUI

struct ExerciseView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            ZStack{
                PricingView(
                    title: "Básico",
                    subtitle: "Un curso incluido",
                    price: "9.99$",
                    textColor: .white,
                    backgroundColor: .green,
                    icon: "star")
                    
                PricingView(
                    title: "Carrera",
                    subtitle: "Toda una carrera",
                    price: "29.99$",
                    textColor: .black,
                    backgroundColor: Color(red:230/255, green:230/255, blue:230/255),
                    icon: "timer",
                    alert: "El mejor para empezar")
                    .offset(x: 0, y: 110)
                
                PricingView(
                    title: "Definitivo",
                    subtitle: "Todos los cursos online",
                    price: "99.99$",
                    textColor: .white,
                    backgroundColor: Color(red:50/255, green:50/255, blue:50/255),
                    icon: "lightbulb",
                    alert: "Conviertete en un máster del universo")
                    .offset(x: 0, y: 220)
            }.padding(.horizontal)
            
            Spacer()
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView()
    }
}
