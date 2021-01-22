//
//  DetailView.swift
//  Navigation
//
//  Created by Freddy Alexander Quispe Torres on 18/01/21.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var showAlerView = false
    
    var course: Course
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 8){
                Image(course.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text(course.name)
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.black)
                    .padding(.horizontal, 16)
                
                Text(course.type)
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.secondary)
                    .padding(.horizontal, 16)
                
                HStack {
                    Text(String(repeating: "$", count: course.priceLevel))
                        .font(.system(.title2, design: .rounded))
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    if course.featured {
                        Text("Destacado")
                            .font(.system(.headline, design: .rounded))
                            .foregroundColor(.black)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 16)
                            .background(Color.yellow)
                            .cornerRadius(6)
                    }
                    
                    if course.purchased {
                        Text("Comprado")
                            .font(.system(.headline, design: .rounded))
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 16)
                            .background(Color.green)
                            .cornerRadius(6)
                    }
                }
                .padding(.horizontal, 16)
                
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
            Button(action:{
                //Navegar a la pantalla previa
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "arrow.left.circle.fill")
                    .font(.title)
                    .foregroundColor(.white)
            })
        )
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(course: Course(name: "Diseño de apps para iOS 13 con Swift UI desde cero", image: "swift", type: "Desarrollo de Apps", priceLevel: 5, featured: true, purchased: true))
    }
}
