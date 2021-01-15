//
//  ProgressView.swift
//  anims
//
//  Created by Freddy Alexander Quispe Torres on 14/01/21.
//

import SwiftUI

struct ProgressView: View {
    
    @State private var progress: CGFloat = 0.0
    
    var body: some View {
        ZStack{
            Text("\(Int(progress*100)) %")
                .font(.system(.title, design: .rounded))
                .bold()
            
            Circle()
                .stroke(Color(.systemGray6), lineWidth: 12)
                .frame(width: 150, height: 150)
            
            Circle()
                .trim(from: 0, to: progress)
                .stroke(progress < 1.0 ? Color.green : Color.blue, lineWidth: 12)
                .frame(width: 150, height: 150)
                .rotationEffect(Angle(degrees: -90))
        }.onAppear(){
            Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                self.progress += 0.025
                if self.progress >= 1.0 {
                    timer.invalidate()
                }
            }
        }
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
