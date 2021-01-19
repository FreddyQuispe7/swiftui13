//
//  PilotosView.swift
//  Lists
//
//  Created by Freddy Alexander Quispe Torres on 18/01/21.
//

import SwiftUI

let mercedes = Equipo(color: Color(red: 79.0/255.0, green: 164.0/255.0, blue: 161.0/255.0), nombre: "Mercedes", imagen: "car_mercedes")
let ferrari = Equipo(color: Color(red: 231.0/255.0, green: 50.0/255.0, blue: 40.0/255.0), nombre: "Ferrari", imagen: "car_ferrari")
let redbull = Equipo(color: Color(red: 34.0/255.0, green: 44.0/255.0, blue: 54.0/255.0), nombre: "Red Bull", imagen: "car_redbull")
let renault = Equipo(color: Color(red: 240.0/255.0, green: 238.0/255.0, blue: 95.0/255.0), nombre: "Renault", imagen: "car_renault")
let mclaren = Equipo(color: Color(red: 240.0/255.0, green: 172.0/255.0, blue: 61.0/255.0), nombre: "Mc Laren", imagen: "car_mclaren")

struct PilotosView: View {

    var pilotos = [
        Piloto(nombre: "Lewis Hamilton", imagen: "hamilton", equipo: mercedes),
        Piloto(nombre: "Valteri Bottas", imagen: "bottas", equipo: mercedes),
        Piloto(nombre: "Sebastian Vettel", imagen: "vettel", equipo: ferrari),
        Piloto(nombre: "Charles Leclerc", imagen: "leclerc", equipo: ferrari),
        Piloto(nombre: "Max Verstappen", imagen: "verstappen", equipo: redbull),
        Piloto(nombre: "Pierre Gasly", imagen: "gasly", equipo: redbull),
        Piloto(nombre: "Daniel Ricciardo", imagen: "ricciardo", equipo: renault),
        Piloto(nombre: "Andre Hulkenberg", imagen: "hulkenberg", equipo: renault),
        Piloto(nombre: "Carlos Sainz", imagen: "sainz", equipo: mclaren),
        Piloto(nombre: "Julen Norris", imagen: "norris", equipo: mclaren)
        ]
    
    /*
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.largeTitleTextAttributes = [
            .font: UIFont(name: "Verdana", size: 32)!,
            .foregroundColor: UIColor.systemGreen
        ]
        appearance.titleTextAttributes = [
            .font: UIFont(name: "Verdana", size: 24)!,
            .foregroundColor: UIColor.systemGreen
        ]
        appearance.setBackIndicatorImage(UIImage(systemName: "arrowshape.turn.up.left.fill"), transitionMaskImage: UIImage(systemName: "arrowshape.turn.up.left.fill"))
        UINavigationBar.appearance().tintColor = .systemGreen
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    */
    
    var body: some View {
        NavigationView {
            List(pilotos){ piloto in
                NavigationLink(destination: DetallePilotoView(piloto: piloto)) {
                    PilotosListaRow(piloto: piloto)
                }
            }
            .navigationBarTitle("Lista de pilotos")
        }
    }
}

struct PilotosView_Previews: PreviewProvider {
    static var previews: some View {
        PilotosView()
    }
}


struct Piloto: Identifiable {
    var id = UUID()
    var nombre: String
    var imagen: String
    var equipo: Equipo
}

struct Equipo {
    var color: Color
    var nombre: String
    var imagen: String
}

struct PilotosListaRow: View {
    var piloto: Piloto
    
    var body: some View {
        HStack {
            Image(piloto.imagen)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
                .clipped()
                .background(piloto.equipo.color)
                .cornerRadius(40)
                .overlay(
                    RoundedRectangle(cornerRadius: 40)
                        .foregroundColor(.gray)
                        .opacity(0.2)
                )
            VStack(alignment:.leading) {
                Spacer()
                Text(piloto.nombre)
                    .font(.system(.title2, design: .rounded))
                Spacer()
                Text(piloto.equipo.nombre)
                    .font(.system(.title3, design: .rounded))
                    .foregroundColor(.secondary)
                Spacer()
            }
        }
    }
}
