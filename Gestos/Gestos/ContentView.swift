//
//  ContentView.swift
//  Gestos
//
//  Created by Freddy Alexander Quispe Torres on 10/02/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var hasBeenPressed = false
    @GestureState private var hasBeenLongPressed = false
    
    var body: some View {
        Image(systemName: "magnifyingglass.circle.fill")
            .font(.system(size: 150))
            .foregroundColor(.blue)
            .opacity(hasBeenLongPressed ? 0.5 : 1.0)
            .scaleEffect(hasBeenPressed ? 2.0 : 1.0)
            .animation(.easeIn)
            .gesture(
                LongPressGesture(minimumDuration: 0.5)
                    .updating($hasBeenLongPressed){ (value, state, transaction) in
                        state = value
                    }
                    .onEnded{ _ in
                        hasBeenPressed.toggle()
                    }
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
