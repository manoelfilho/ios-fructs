//
//  FruitCardView.swift
//  Fructs
//
//  Created by Manoel Filho on 12/04/21.
//

import SwiftUI

struct FruitCardView: View {
    
    var fruit: Fruit
    
    // MARK: - Properties
    @State private var isAnimating: Bool = true
    
    // MARK: - BODY
    var body: some View {
        
        ZStack {
            
            VStack(spacing: 20) {
                
                // FRUIT IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                // FRUIT TITLE
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                // FRUIT HEADLINE
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // BUTTON START
                StartButtonView()
                
            }// : VStack
            
        } //: ZSTACK
        
        .onAppear{
            withAnimation(.easeInOut(duration: 0.5)){
                isAnimating = true
            }
        }
        
        .onDisappear(){
            isAnimating = false
        }
        
        .frame(minWidth: 0,
               maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
               minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,
               maxHeight: .infinity,
               alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
        .background(
            LinearGradient(
                gradient: Gradient(
                    colors: fruit.gradientColors
                ),
                startPoint: .top, endPoint: .bottom
            )
        )
        .cornerRadius(20)
        .padding(.horizontal, 20)
    
    }
}

// MARK: Preview
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[3])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
