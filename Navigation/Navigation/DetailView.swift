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
        DetailView(course: Course(name: "Curso completo de iOS 13 con Swift UI", image: "swift"))
    }
}
