//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Bighnaraj Panda on 17/07/25.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical)
            .padding(.horizontal, 20)
            .background(
                // Condition statement with Nil Coalesing
                // condition ? A : B
                configuration.isPressed ?
                    // A when user press button
                    LinearGradient(
                        colors: [.CustomeGrayMedium, .CustomeGrayLight],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                : // B when the user is not pressed Button (<<-- THIS IS THE MISSING COLON)
                    LinearGradient( 
                        colors: [.CustomeGrayLight, .CustomeGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom
                    )
            )
            .cornerRadius(35)
    }
}
