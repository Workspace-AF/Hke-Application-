//
//  CardView.swift
//  Hike
//
//  Created by Bighnaraj Panda on 16/07/25.
//

import SwiftUI

struct CardView: View {
    //MARK: - PROPERTIES
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    
    //MARK: -FUNCTIOIN
    func randomImage(){
        print("The Button was Pressed")
        print("Status: old Number = \(imageNumber)")
        repeat{
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        imageNumber = randomNumber
        print("Reult = New Image Number = \(imageNumber)")
        print("----THE END----")
        print("\n")
    }
    
    var body: some View {
    //MARK: - CARD
        
        ZStack {
            CustomBackgroundView()
            VStack {
    //MARK: - HEADER
                VStack (alignment: .leading){
                    Text("Hiking")
                        .fontWeight(.black)
                        .font(.system(size: 63))
                        .foregroundStyle(
                            LinearGradient(
                                colors:
                                    [.CustomeGrayLight,
                                     .CustomeGrayMedium],
                                startPoint: .top,
                                endPoint: .bottom)
                        )
                    Button {
                        print("The Button Was Pressed.")
                        isShowingSheet.toggle()
                    } label: {
                        CustomButtonVIew()
                    }
                    .sheet(isPresented: $isShowingSheet) {
                        SettingsView()
                        //This is helps to add an icon/sheet in the icon [Image(systemName: "figure.hiking")] when a peron tap on it.
                            .presentationDragIndicator(.visible)
                        // This adds a new icon in the screen when someone preesed to hike icon he can notice
                            .presentationDetents([.medium, .large])
                        /* This line makes the image looks Or ViewSheet size small or according to user's Need Or application or device , and that can be draged to upper side ,
                         where .Medium Detents mean the Sheet goes 50% of the screen size and in the same time ,
                         .Large Detents mean it goes 100% of the Device Screen */
                        
                    }
                    Text("FUN AND OUTDOOR ACTIVITY FOR FRENDS AND FAMILIES.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.CustomeGrayMedium)
                         
                }// :HEADER
                .padding(.horizontal, 30)
                
   //MARK: - MAIN CONTENT

                ZStack {
                    CustomCircleView()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeOut(duration: 0.4), value: imageNumber)
                        //.animation(.default, value: imageNumber)
                }
  //MARK: - FOOTER
                Button{
            //Action: Generate the random number
                    randomImage()
                }label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(
                            colors: [.CustomeGreenDark, .CustomeGreenMedium ],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                        .shadow(color: .black .opacity(0.25), radius: 0.25) //This make the the letters what are present inside the explore makes it highlight, and makes it looks it little cleare
                }
                .buttonStyle(GradientButton())
            }
        } // : CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
  
