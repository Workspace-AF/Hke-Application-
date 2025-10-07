//
//  CustomCircleView.swift
//  Hike
//
//  Created by Bighnaraj Panda on 18/07/25.
//

import SwiftUI

struct CustomCircleView: View {
    
    @State private var isAmimationGradient : Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(
                    colors: [
                        .yellow ,
                        .colorGreenMedium
                    ],
                    startPoint: isAmimationGradient ? .trailing : .bottomLeading,
                    endPoint: isAmimationGradient ? .bottomLeading : .leading
                )
                )
                .onAppear() {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAmimationGradient.toggle()
                    }
                }
            MotionAnimationView()
        }//: ZStack
        .frame(width: 280, height: 280)
    }
}

#Preview {
    CustomCircleView()
}
 
