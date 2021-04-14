//
//  FructsApp.swift
//  Fructs
//
//  Created by Manoel Filho on 12/04/21.
//

import SwiftUI

@main
struct FructsApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            }else{
                ContentView()
            }
        }
    }
}
