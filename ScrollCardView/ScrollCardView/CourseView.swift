//
//  CourseView.swift
//  ScrollCardView
//
//  Created by Freddy Alexander Quispe Torres on 13/01/21.
//

import SwiftUI

struct CourseView: View {
    var image: String
    var title: String
    var teacher: String
    var rating: String
    var comments: String
    var hours: String
    var lections: String
    var price: String
    var price_old: String
    var alert: String?
    var alert_color: Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: .infinity, height: 175)
                .cornerRadius(8)
            
            Text(title)
                .font(.system(.title2, design: .rounded))
                .fontWeight(.semibold)
            
            Text(teacher)
                .font(.system(size: 17, design: .rounded))
                .foregroundColor(.gray)
            
            HStack(spacing: 0) {
                Text(rating)
                    .font(.system(size: 20, design: .rounded))
                    .fontWeight(.semibold)
                    .foregroundColor(.init(red: 250/255, green: 50/255, blue: 50/255))
                    .padding(.trailing, 5)
                Image(systemName: "star.fill")
                    .foregroundColor(.orange)
                Image(systemName: "star.fill")
                    .foregroundColor(.orange)
                Image(systemName: "star.fill")
                    .foregroundColor(.orange)
                Image(systemName: "star.fill")
                    .foregroundColor(.orange)
                Image(systemName: "star.leadinghalf.fill")
                    .foregroundColor(.orange)
                Text("(\(comments))")
                    .font(.system(size: 18, design: .rounded))
                    .foregroundColor(.gray)
                    .padding(.leading, 10)
            }
            
            HStack(spacing: 8){
                Text("\(hours) horas en total")
                    .font(.system(size: 17, design: .rounded))
                    .foregroundColor(.gray)
                Image(systemName: "circle.fill")
                    .font(.system(size: 8))
                    .foregroundColor(.gray)
                Text("\(lections) clases")
                    .font(.system(size: 17, design: .rounded))
                    .foregroundColor(.gray)
                Image(systemName: "circle.fill")
                    .font(.system(size: 8))
                    .foregroundColor(.gray)
                Text("Todos los niveles")
                    .font(.system(size: 17, design: .rounded))
                    .foregroundColor(.gray)
            }
            
            HStack(spacing: 10){
                Text("\(price) US$")
                    .font(.system(size: 22, design: .rounded))
                    .foregroundColor(.black)
                Text("\(price_old) US$")
                    .font(.system(size: 18, design: .rounded))
                    .foregroundColor(.gray)
                    .strikethrough()
            }
            
            VStack{
                alert.map({
                    Text($0)
                        .font(.system(size: 20, design: .rounded))
                        .fontWeight(.bold)
                })
                .padding(.vertical, 6)
                .padding(.horizontal, 16)
            }
            .background(alert_color)
            .opacity(0.5)
            .cornerRadius(8)
            
            
        }.padding(.horizontal)
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView(
            image: "csharp",
            title: "POO en C#: aplica conceptos de POO en C# en proyectos reales",
            teacher: "Juan Gabriel Gomila Salas, Oak Academy",
            rating: "4,7",
            comments: "32",
            hours: "13",
            lections: "104",
            price: "11,99",
            price_old: "129,99",
            alert: "Destacado y nuevo",
            alert_color: .red)
    }
}
