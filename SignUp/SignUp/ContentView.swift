//
//  ContentView.swift
//  SignUp
//
//  Created by Freddy Alexander Quispe Torres on 27/01/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var usuario = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        VStack {
            Text("Hello World!")
            
            TextField("Nombre de usuario", text: $usuario)
                .font(.system(size: 18, weight: .bold, design: .rounded))
                .padding(.horizontal)
            
            SecureField("Contraseña", text: $password)
                .font(.system(size: 18, weight: .bold, design: .rounded))
                .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
