//
//  TabBar.swift
//  Gestos
//
//  Created by Freddy Alexander Quispe Torres on 10/02/21.
//

import SwiftUI

struct TabBar: View {
    
    @State private var selection: Tab = .categorias
    
    enum Tab {
        case categorias
        case todos
    }
    
    var body: some View {
        TabView(selection: $selection) {
            Categorias()
                .tabItem {
                    Label("Categorias", systemImage: "square.grid.2x2")
                }
                .tag(Tab.categorias)

            Todos()
                .tabItem {
                    Label("Todos", systemImage: "square")
                }
                .tag(Tab.todos)
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
