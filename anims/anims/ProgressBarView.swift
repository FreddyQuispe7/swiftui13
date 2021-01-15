//
//  ProgressBarView.swift
//  anims
//
//  Created by Freddy Alexander Quispe Torres on 14/01/21.
//

import SwiftUI

struct ProgressBarView: View {
    
    @State private var progress2: CGFloat = 0.0
    
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
                .stroke(Color(progress2 < 1.0 ? .systemGreen : .systemRed), lineWidth: 5)
                .frame(width: progress2*300, height: 4)
                .offset(x: -150 + progress2*150, y: 0)
                .animation(Animation.default)
                .onAppear(){
                    Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                        self.progress2 += 0.025
                        if self.progress2 >= 1.0 {
                            timer.invalidate()
                        }
                    }
                }
            
            Text("\(Int(progress2*100)) %")
                .font(.system(.title, design: .rounded))
                .bold()
                .offset(x: 0, y: 30)
        }
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView()
    }
}
