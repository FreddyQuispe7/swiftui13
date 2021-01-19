//
//  DetailCourseView.swift
//  Navigation
//
//  Created by Freddy Alexander Quispe Torres on 18/01/21.
//

import SwiftUI

struct DetailCourseView: View {
    var course: Course
    
    var body: some View {
        VStack{
            Image(course.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height:300)
                .clipped()
            
            Text(course.name)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .frame(width: 300)
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            
            Spacer()
        }
    }
}

struct DetailCourseView_Previews: PreviewProvider {
    static var previews: some View {
        DetailCourseView(course: Course(name: "Curso completo de iOS 13 con Swift UI", image: "swift"))
    }
}
