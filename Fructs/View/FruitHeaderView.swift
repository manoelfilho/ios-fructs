//
//  FruitHeaderView.swift
//  Fructs
//
//  Created by Manoel Filho on 13/04/21.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: - Properties
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false
    
    //MARK: Body
    var body: some View {
        
        ZStack{
            
            ZStack {
                
                LinearGradient(
                    gradient: Gradient(colors: fruit.gradientColors),
                    startPoint: .top,
                    endPoint: .bottomTrailing
                )
                
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.3),
                        radius: 3, x: 2, y: 2
                    )
                    .padding(.vertical, 20)
                    .scaleEffect( isAnimating ? 1.0 : 0.6)
                    .onAppear{
                        withAnimation(.easeInOut(duration: 0.5)){
                            isAnimating = true
                        }
                    }
            }
            
        }//:ZSTACK
        
        .frame(height: 440)
    }
}
//MARK: Preview
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
