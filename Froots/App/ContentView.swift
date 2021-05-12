//
//  ContentView.swift
//  Froots
//
//  Created by Dayal, Utkarsh on 12/05/21.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        NavigationView{
            List{
                ForEach(FruitData.shuffled()){ item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4.0)
                    }
                }
            }
            .navigationTitle("Fruits")
        }
    }
}   

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
