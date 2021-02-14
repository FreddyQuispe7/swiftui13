//
//  GestosCombinadosView.swift
//  Gestos
//
//  Created by Freddy Alexander Quispe Torres on 11/02/21.
//

import SwiftUI

struct GestosCombinadosView: View {
    
    // Gestos prolongados
    @GestureState private var hasBeenLongPressed = false
    
    // Gestos de arrastre
    @State private var position = CGSize.zero
    @GestureState private var offset = CGSize.zero
    
    var body: some View {
        Image(systemName: "person.crop.circle.fill")
            .font(.system(size: 80))
            .foregroundColor(.blue)
            .opacity(hasBeenLongPressed ? 0.5 : 1.0)
            .offset(x: position.width + offset.width,
                    y: position.height + offset.height)
            .animation(.easeIn)
            .gesture(
                LongPressGesture(minimumDuration: 0.25)
                    .updating($hasBeenLongPressed){ (value, state, transaction) in
                        state = value
                    }
                    .sequenced(before: DragGesture())
                    .updating($offset){ (value, state, transaction) in
                        switch value {
                        case .first(true):
                            print("El gesto es un Tap")
                        case .second(true, let drag):
                            state = drag?.translation ?? .zero
                        default:
                            break
                        }
                    }
                    .onEnded{ (value) in
                        guard case .second(true, let drag?) = value else { return }
                        self.position.height += drag.translation.height
                        self.position.width += drag.translation.width
                    }
            )
    }
}

struct GestosCombinadosView_Previews: PreviewProvider {
    static var previews: some View {
        GestosCombinadosView()
    }
}
