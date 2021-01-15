//
//  LoadingBarView.swift
//  anims
//
//  Created by Freddy Alexander Quispe Torres on 14/01/21.
//

import SwiftUI

struct LoadingBarView: View {
    
    @State private var isLoading2 = false
    
    var body: some View {
        ZStack{
            Text("Cargando")
                .font(.system(.title, design: .rounded))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .offset(x: 0, y: -30)
            
            RoundedRectangle(cornerRadius: 4)
                .stroke(Color(.systemGray6), lineWidth: 5)
                .frame(width: 300, height: 4)
            
            RoundedRectangle(cornerRadius: 4)
                .stroke(Color(.systemGreen), lineWidth: 5)
                .frame(width: 50, height: 4)
                .offset(x: isLoading2 ? 125 : -125, y: 0)
                .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))
                .onAppear(){
                    self.isLoading2 = true
                }
        }
    }
}

struct LoadingBarView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingBarView()
    }
}
