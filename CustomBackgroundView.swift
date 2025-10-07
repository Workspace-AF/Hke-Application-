//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Bighnaraj Panda on 16/07/25.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            //MARK: - 3. DEPTH
            Color.CustomeGreenDark
                .cornerRadius(55)
                .offset(y: 12)
            
            //MARK: - 2. LIGHT
            Color.CustomeGreenLight
                .cornerRadius(55)
                .offset(y: 3)
                .opacity(0.85)
            
            //MARK: - 1. SURFACE


            LinearGradient(
                colors: [
                    .CustomeGreenLight ,
                    .CustomeGreenMedium ],
                startPoint: .top,
                endPoint: .bottom )
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
}
