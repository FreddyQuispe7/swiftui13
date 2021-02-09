//
//  ContentView.swift
//  SignUp
//
//  Created by Freddy Alexander Quispe Torres on 27/01/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        VStack {
            Text("Crea una cuenta")
                .font(.system(.largeTitle, design: .rounded))
                .bold()
                .padding(.bottom, 50)
            
            SingleFormView(fieldName: "Nombre de usuario", fiedlValue: $username)
            ValidationFormView(formText: "Minimo 6 caracteres", conditionChecked: false)
                .padding()
            
            SingleFormView(fieldName: "Contraseña", fiedlValue: $password, isProtected: true)
            VStack{
                ValidationFormView(formText: "Mínimo 8 caracteres")
                ValidationFormView(formText: "Una mayúscula y una minúscula", conditionChecked: false)
            }
            .padding()
            
            SingleFormView(fieldName: "Confirmar Contraseña", fiedlValue: $confirmPassword, isProtected: true)
            ValidationFormView(formText: "Las dos contraseñas deben ser iguales", conditionChecked: false)
                .padding()
                .padding(.bottom, 30)
            
            Button(action: {
                
            }) {
                Text("Registrarme")
                    .font(.system(.title, design: .rounded))
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow]), startPoint: .top, endPoint: .bottom))
                    .cornerRadius(8)
            }
            
            HStack{
                Text("Ya tienes cuenta ?")
                    .font(.system(.body, design: .rounded))
                    .bold()
                Button(action: {
                    
                }) {
                    Text("Entrar ahora")
                        .font(.system(.headline))
                        .foregroundColor(.green)
                }
            }
            .padding()
            
            Spacer()
        }.padding()
    }
}

struct ValidationFormView: View {
    
    var iconName = "xmark.circle"
    var iconColor = Color(red: 0.9, green: 0.5, blue: 0.5)
    var formText = ""
    var conditionChecked = false
    
    var body: some View {
        HStack{
            Image(systemName: iconName)
                .foregroundColor(iconColor)
            Text(formText)
                .font(.system(.body, design: .rounded))
                .foregroundColor(.gray)
                .strikethrough(conditionChecked)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SingleFormView: View {
    
    var fieldName = ""
    @Binding var fiedlValue: String
    var isProtected = false
    
    var body: some View{
        VStack{
            if isProtected {
                SecureField(fieldName, text: $fiedlValue)
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .padding(.horizontal)
            } else {
                TextField(fieldName, text: $fiedlValue)
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .padding(.horizontal)
            }
            Divider()
                .frame(height: 1)
                .background(Color.gray)
                .padding(.horizontal)
        }
    }
}
