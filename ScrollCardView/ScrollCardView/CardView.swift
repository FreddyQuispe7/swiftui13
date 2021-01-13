//
//  CardView.swift
//  ScrollCardView
//
//  Created by Freddy Alexander Quispe Torres on 12/01/21.
//

import SwiftUI

struct CardView: View {
    
    var imageName: String
    var authorName: String
    var courseTitle: String
    var originalPrice: String
    var discountPrice: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                VStack(alignment: .leading){
                    Text(authorName)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(courseTitle.uppercased())
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    HStack {
                        Text(discountPrice)
                            .font(.subheadline)
                            .foregroundColor(.primary)
                        Text(originalPrice)
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
        .padding(.leading)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(imageName: "swift", authorName: "Juan Gabriel Gomila", courseTitle: "Diseño de apps para iOS 13 con Swift UI desde cero", originalPrice: "199.99$", discountPrice: "10.99$")
    }
}
