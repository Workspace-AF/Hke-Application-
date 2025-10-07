//
//  SettingsView.swift
//  Hike
//
//  Created by Bighnaraj Panda on 28/07/25.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - PROPERTIES
    private let alternateAppIcons: [String] =
    [
        "AppIcon-MagnifyingGlass",
        "AppIcon-Backpack",
        "AppIcon-Camera",
        "AppIcon-Campfire",
        "AppIcon-Map",
        "AppIcon-Mushroom"
    ]
    var body: some View {
        
        List {
            //MARK: - Section Header
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    //This helps to create a side leaf Imation near hike place in left side
                    
                    VStack (spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 59, weight: .black))
                        
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    //This helps to create a side leaf Imation near hike place in Right side
                    
                    Spacer()
                }
                .foregroundStyle (
                    LinearGradient(
                        colors:
                            [.CustomeGreenLight ,
                             .CustomeGreenMedium,
                             .CustomeGreenDark],
                        startPoint: .top,
                        endPoint: .bottom)
                )
                .padding(.top, 8)
                
                VStack (spacing: 8) {
                    Text("Where can we find  \nperfect Tracks")
                    /* \n this helps to break the line where , if you giving space post \n it will take the space in the in application if you are not then it will contues */
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("That stunning hike you see in the photo? It’s not just a dream — it’s real, and it’s waiting for you. Whether it’s a trail you’ve done before or one you hope to explore again. \nFind the perfect day to go hiking with our app. ")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust Off The Boots! it's time for Walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.CustomeGreenDark)
                    
                }
                .multilineTextAlignment(.center)
                //This helps to make the text what you are seeing in the paragraph it will converted into center
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity) 
            } //: Header SECTION
            .listRowSeparator(.hidden)
            // This helps to clear the lines or divider in between the paragraphs.
            
            //MARK: - Section: ICON
            
            Section(header: Text("Alternate Icon")) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack (spacing: 12) {
                        ForEach(alternateAppIcons.indices, id: \.self)
                        { item in
                            Button {
                                print("Icon \(alternateAppIcons[item]) was pressed. ")
                                
                                UIApplication.shared.setAlternateIconName(alternateAppIcons[item]){ error  in
                                    if error != nil {
                                        print("failed request to update the app's icon: \(String(describing: error?.localizedDescription))")
                                    } else {
                                        print("Success! You have changed the app's icon to \(alternateAppIcons[item])")
                                    }
                                }
                            } label: {
                                Image("\(alternateAppIcons[item])-preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80 , height: 80)
                                    .cornerRadius(16)
                            }
                            .buttonStyle(.borderless)
                        }
                    }

                }//: SCROLL VIEW
                .padding(.top, 12)
                
                Text("Make it yours — tap your favorite icon from the collection above!")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .padding(.bottom, 12)
            } //: SECTION
            .listRowSeparator(.hidden)

            
            
            
            //MARK: - Secction: ABOUT
            Section (
                header: Text("About The App"), //Thia gives an sction header view in the application
                footer: HStack {
                    Spacer()
                    Text("Copyright © All Right reserved.") // © :- this sing was created by an option tapping (OPTION+G)
                    Spacer()
                }
                    .padding(.vertical, 8)
            ) { //it helps us to create a section in the applicatio view
                //1. BASIC LABELED CONTENT
               // LabeledContent("Application", value: "Hike")
                
                //2. Advanced Labeled Contain
                
                CustomListRowView(rowLabel: "Application",
                                  rowIcon: "apps.iphone",
                                  rowContent: "Hike",
                                  rowTintColor: .blue )
                
                CustomListRowView(rowLabel: "Compactibility",
                                  rowIcon: "info.circle",
                                  rowContent: "iOS, iPadOS",
                                  rowTintColor: .red )
                
                CustomListRowView(rowLabel: "Technology",
                                  rowIcon: "swift",
                                  rowContent: "swift & Swift UI",
                                  rowTintColor: .orange )
                
                CustomListRowView(rowLabel: "Version",
                                  rowIcon: "gear",
                                  rowContent: "1.0",
                                  rowTintColor: .purple )
                
                CustomListRowView(rowLabel: "Developer",
                                  rowIcon: "ellipsis.curlybraces",
                                  rowContent: "@__Panda.06",
                                  rowTintColor: .mint )
                
                CustomListRowView(rowLabel: "Designer",
                                  rowIcon: "paintpalette",
                                  rowContent: "Bighnaraj",
                                  rowTintColor: .yellow )
                
                CustomListRowView(
                    rowLabel: "Website",
                    rowIcon: "globe",
                    rowTintColor: .indigo,
                rowLinkLabel: "LinkedIn" ,
                rowLinkDestination: "https://www.linkedin.com/in/bighnaraj-panda-in/")
                  }
                }
            } //: End SECTION
            }

#Preview {
    SettingsView()
}
