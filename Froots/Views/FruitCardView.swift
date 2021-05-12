//
//  FruitCardView.swift
//  Froots
//
//  Created by Dayal, Utkarsh on 12/05/21.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: - Properties
    
    @State private var isAnimating : Bool = false
    
    //MARK: - Body
    var body: some View {
        ZStack {
            VStack (spacing:20){
                //Image
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6.0, y: 8.0)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                //Title
                Text("Blueberry")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                //Headline
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in facilisis nulla, vel facilisis urna. Praesent sollicitudin tempor mi ac sodales. Fusce accumsan mattis ante sit amet tincidunt.")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth:480)
                
                //Button
                StartButtonView()
            }//VSTACK
        }//ZSTACK
        .onAppear{
            withAnimation(.easeOut(duration:0.5)){
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"),Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20.0)
        .padding(.horizontal, 20.0)
    }
}

//MARK:- Preview
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
