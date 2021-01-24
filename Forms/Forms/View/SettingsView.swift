//
//  SettingsView.swift
//  Forms
//
//  Created by Freddy Alexander Quispe Torres on 23/01/21.
//

import SwiftUI

struct SettingsView: View {
    
    private var sortingOrders = [
        "Alfabeticamente",
        "Los favoritos al inicio",
        "Los comprados al inicio"
    ]
    
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedOrder = 0
    @State private var showPurchasedOnly = false
    @State private var maxPrice = 5 {
        didSet{
            if maxPrice > 5 {
                maxPrice = 5
            }
            if maxPrice < 1 {
                maxPrice = 1
            }
        }
    }
    
    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("ORDENA LOS CURSOS")){
                    Picker(selection: $selectedOrder, label: Text("Orden de los cursos")){
                        ForEach(0..<sortingOrders.count, id: \.self){
                            Text(self.sortingOrders[$0])
                        }
                    }
                }
                Section(header: Text("FILTRAR LOS CURSOS")){
                    Toggle(isOn: $showPurchasedOnly){
                        Text("Mostrar solo cursos comprados")
                    }
                    Stepper(
                        onIncrement: {
                            self.maxPrice += 1
                        },
                        onDecrement: {
                            self.maxPrice -= 1
                        }){
                            Text("Mostrar \(String(repeating:"$", count: maxPrice)) o menos")
                        }
                }
            }
            .navigationBarTitle("Configuración")
            .navigationBarItems(
                leading:
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }){
                        Image(systemName: "arrowtriangle.down.circle")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                    },
                trailing:
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }){
                        Image(systemName: "checkmark.circle.fill")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                    }
            )
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
