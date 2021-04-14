//
//  OnBoardingView.swift
//  Fructs
//
//  Created by Manoel Filho on 12/04/21.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK: Properties
    var fruits: [Fruit] = fruitsData
    
    //MARK: Body
    var body: some View {
        
        TabView{
            ForEach(fruits[0...12]){ item in
                FruitCardView(fruit: item)
            }
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}

//MARK: Preview
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitsData)
    }
}
