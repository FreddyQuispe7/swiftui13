//
//  LoginView.swift
//  SignUp
//
//  Created by Freddy Alexander Quispe Torres on 9/02/21.
//

import SwiftUI

struct LoginView: View {
    var primaryColor = Color(red: 0.804, green: 0.345, blue: 0.933)
    @State private var correo = "" //"freddy.quispet@gmail.com"
    @State private var clave = "" //"123456"
    @State private var recordarme = false
    
    var body: some View {
        VStack(alignment: .leading){
            Image("logo_principal")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.top, 40)
                .padding(.bottom, 30)
                
            Text("Iniciar sesión para continuar")
                .font(.system(.title3, design: .rounded))
                .foregroundColor(.secondary)
                .padding(.bottom, 30)
            
            TextField("Ingrese su correo", text: $correo)
                .font(.title3)
                .padding(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color(.systemGray3), lineWidth: 1)
                )
                .padding(.bottom, 10)
            
            SecureField("Ingrese su contraseña", text: $clave)
                .font(.title3)
                .padding(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color(.systemGray3), lineWidth: 1)
                )
                .padding(.bottom)
            
            HStack {
                Button(action: {
                    recordarme.toggle()
                }) {
                    Image(systemName: recordarme ? "checkmark.square.fill" : "square")
                        .font(.title)
                        .foregroundColor(primaryColor)
                }
                
                Text("Recordarme")
                    .font(.system(.callout, design: .rounded))
                    .foregroundColor(.secondary)
            }
            .padding(.bottom, 20)
            
            HStack {
                Spacer()
                
                Button(action: {
                    //
                }) {
                    Text("Olvido su contraseña ?")
                        .font(.system(.callout, design: .rounded))
                        .foregroundColor(.secondary)
                        .padding(.bottom, 25)
                }
            }
            
            Button(action: {
                //
            }) {
                Text("INGRESAR")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .foregroundColor(.white)
                    .background(primaryColor)
                    .cornerRadius(10)
                    .padding(.bottom, 25)
            }
            
            HStack {
                Spacer()
                
                Button(action: {
                    //
                }) {
                    Text("Nuevo usuario ? Registrese aquí")
                        .font(.system(.callout, design: .rounded))
                        .foregroundColor(.secondary)
                        .padding(.bottom, 25)
                }
            }
            
            HStack {
                Spacer()
                
                Button(action: {
                    //
                }) {
                    Text("Usted es Profesional ? Registrese aquí")
                        .font(.system(.callout, design: .rounded))
                        .foregroundColor(.secondary)
                }
            }
            
            Spacer()
        }
        .padding(.horizontal, 30)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
