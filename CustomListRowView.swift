//
//  CustomListRowView.swift
//  Hike
//
//  Created by Bighnaraj Panda on 28/07/25.
//

import SwiftUI

struct CustomListRowView: View {
    
    //MARK: - PROPERTIES
    
    @State var  rowLabel: String
    @State var  rowIcon: String
    @State var  rowContent: String? = nil
    @State var  rowTintColor: Color
    @State var  rowLinkLabel: String? = nil
    @State var  rowLinkDestination: String? = nil

    var body: some View {
        LabeledContent{
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            }else if (rowLinkLabel != nil) &&
                        (rowLinkDestination != nil){
                Link(rowLinkLabel!, destination:
                        URL(string:rowLinkDestination!)!)
                .foregroundColor(.yellow)
                .fontWeight(.heavy)
            }  // Meaning of this is !)!) if the source or the data has anysort of link or data then it will use those URL Link
               else {
                EmptyView()
            }
        } label: {
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                
                Text(rowLabel)
                
            }
        }
    }
}
        
struct CustomListRowView_Previews: PreviewProvider {
    static var previews: some View {
        List(){
            CustomListRowView(
                rowLabel: "Website",
                rowIcon: "globe",
                rowContent: nil,
                rowTintColor: .teal,
            rowLinkLabel: "LinkedIn" ,
            rowLinkDestination: "https://www.linkedin.com/in/bighnaraj-panda-in/")
        }
    }
}
/* This is just an icon where we can use it for my preview of the setting View data in About session */
