//
//  OnboardingView.swift
//  Froots
//
//  Created by Dayal, Utkarsh on 12/05/21.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        
        TabView{
            ForEach(0..<5) { i in
                FruitCardView(fruit: FruitData[i])
            }
        }//TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    
    }
}

//MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
