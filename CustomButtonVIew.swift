//
//  CustomButtonVIew.swift
//  Hike
//
//  Created by Bighnaraj Panda on 16/07/25.
//

import SwiftUI

struct CustomButtonVIew: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(LinearGradient(colors: [
                    .white,.CustomeGreenLight,
                        .CustomeGreenMedium],
                    startPoint: .top,
                    endPoint: .bottom)
                )
            Circle()
                .stroke(LinearGradient(
                    colors: [.CustomeGrayLight,
                        .CustomeGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom) ,
                        lineWidth: 4)
            
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 38))
                .foregroundStyle(LinearGradient(
                    colors:[
                        .CustomeGrayLight,
                        .CustomeGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom))
        } //ZStack
        .frame(width: 58, height: 58)
    }
}

struct CustomeButtonView_Preview: PreviewProvider {
    static var previews: some View {
        CustomButtonVIew()
            .previewLayout(.sizeThatFits)
            .padding()
    } /* for Selectable Vew you need to write this code or else it does not show how it is showing now
    #Preview {
    CardView() } you have to remember this code*/
}


