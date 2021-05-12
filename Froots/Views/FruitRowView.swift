//
//  FruitRowView.swift
//  Froots
//
//  Created by Dayal, Utkarsh on 12/05/21.
//

import SwiftUI

struct FruitRowView: View {
    //MARK: - Properties
    var fruit: Fruit
    
    //MARK: - Body
    var body: some View {
        HStack{
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.3), radius: 3, x:2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8.0)
            
            VStack(alignment: .leading, spacing: 5){
                
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
                
            }//VStack
            
        }//HStack
    }
}

//MARK: - Preview
struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: FruitData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}