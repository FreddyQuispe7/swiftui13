//
//  CourseRowView.swift
//  Navigation
//
//  Created by Freddy Alexander Quispe Torres on 19/01/21.
//

import SwiftUI

struct CourseRowView: View {
    
    var course: CourseUdemy
    
    var body: some View {
        VStack {
            Image(course.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                VStack(alignment: .leading){
                    Text(course.author)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(course.title.uppercased())
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    HStack {
                        Text(course.discountPrice)
                            .font(.subheadline)
                            .foregroundColor(.primary)
                        Text(course.originalPrice)
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .strikethrough()
                    }
                }
                .layoutPriority(10)
                Spacer()
            }.padding()
        }
        .cornerRadius(12)
        .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.2), lineWidth: 2))
    }
}

struct CourseRowView_Previews: PreviewProvider {
    static var previews: some View {
        CourseRowView(course: CourseUdemy(title: "Diseño de apps para iOS 13 con Swift UI desde cero", author: "Juan Gabriel Gomila", image: "swift", originalPrice: "199.99$", discountPrice: "10.99$"))
    }
}

struct CourseUdemy: Identifiable {
    var id = UUID()
    var title: String
    var author: String
    var image: String
    var originalPrice: String
    var discountPrice: String
}
