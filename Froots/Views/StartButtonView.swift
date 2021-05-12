//
//  StartButtonView.swift
//  Froots
//
//  Created by Dayal, Utkarsh on 12/05/21.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        Button(action: {
            print("Button Clicked")
        }, label: {
            HStack (spacing:12){
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }//HStack
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .background(Capsule().strokeBorder(Color.white,lineWidth: 1.25))
        })//Button
        .accentColor(Color.white)
    }
}

//MARK: - Preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
