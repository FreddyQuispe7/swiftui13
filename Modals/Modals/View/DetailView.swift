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
            VStack{
                Image(course.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text(course.name)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.black)
                    .multilineTextAlignment(.center)
                    .frame(width: 350)
                    .lineLimit(3)
                Text(course.descripcion)
                    .font(.system(.body, design: .rounded))
                    .padding()
                
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.top)
        .overlay(
            HStack{
                Spacer()
                
                VStack {
                    Button(action:{
                        self.showAlerView = true
                    }, label: {
                        Image(systemName: "chevron.down.circle")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    })
                    .padding(.trailing,20)
                    .padding(.top, 20)
                    
                    Spacer()
                }
            }
        )
        .alert(isPresented: $showAlerView){
            Alert(title: Text("Cuidado!"),
                  message: Text("Estas seguro de cerrar esta ventana ?"),
                  primaryButton: .default(Text("Si"), action: {self.presentationMode.wrappedValue.dismiss()}),
                  secondaryButton: .cancel(Text("No")))
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(course: Course(name: "Curso completo de iOS 13 con Swift UI", image: "swift"))
    }
}
