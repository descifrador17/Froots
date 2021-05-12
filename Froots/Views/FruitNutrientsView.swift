//
//  FruitNutrientsView.swift
//  Froots
//
//  Created by Dayal, Utkarsh on 12/05/21.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    //MARK: - Properties
    var fruit:Fruit
    let nutrients : [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    //MARK: - Body
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional value per 100gm"){
                ForEach(0 ..< nutrients.count) { item in
                    Divider().padding(.vertical,2)
                    HStack(alignment: .firstTextBaseline){
                        Group{
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }//GROUP
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 50)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }//BOX
    }
}

//MARK: - Preview
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: FruitData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
