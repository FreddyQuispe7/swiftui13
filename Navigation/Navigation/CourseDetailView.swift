//
//  CourseDetailView.swift
//  Navigation
//
//  Created by Freddy Alexander Quispe Torres on 19/01/21.
//

import SwiftUI

struct CourseDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var course: CourseUdemy
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            
            Image(course.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(course.title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.semibold)
                .padding(.leading, 10)
            
            Text(course.author)
                .font(.system(.title2, design: .rounded))
                .foregroundColor(.gray)
                .padding(.leading, 10)
            
            HStack(spacing: 10){
                Text(course.discountPrice)
                    .font(.system(.title, design: .rounded))
                    .foregroundColor(.black)
                Text(course.originalPrice)
                    .font(.system(.title2, design: .rounded))
                    .foregroundColor(.gray)
                    .strikethrough()
            }
            .padding(.leading, 10)
            
            Spacer()
        }
        //.navigationBarTitle("", displayMode: .inline)
        .edgesIgnoringSafeArea(.top)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
            Button(action:{
                //Navegar a la pantalla previa
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "arrow.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
        )
    }
}

struct CourseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetailView(course: CourseUdemy(title: "Diseño de apps para iOS 13 con Swift UI desde cero", author: "Juan Gabriel Gomila", image: "swift", originalPrice: "199.99$", discountPrice: "10.99$"))
    }
}
