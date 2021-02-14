//
//  DragView.swift
//  Gestos
//
//  Created by Freddy Alexander Quispe Torres on 10/02/21.
//

import SwiftUI

struct DragView: View {

    @State private var position = CGSize.zero
    @GestureState private var offset = CGSize.zero
    
    var body: some View {
        Image(systemName: "magnifyingglass.circle.fill")
            .font(.system(size: 80))
            .foregroundColor(.blue)
            .offset(x: position.width + offset.width,
                    y: position.height + offset.height)
            .animation(.easeIn)
            .gesture(
                DragGesture()
                    .updating($offset){ (value, state, transaction) in
                        state = value.translation
                    }
                .onEnded{ (value) in
                    self.position.height += value.translation.height
                    self.position.width += value.translation.width
                }
            )
    }
}

struct DragView_Previews: PreviewProvider {
    static var previews: some View {
        DragView()
    }
}
