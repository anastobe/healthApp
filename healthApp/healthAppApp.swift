//
//  healthAppApp.swift
//  healthApp
//
//  Created by Peter on 06/03/2025.
//

import SwiftUI

@main
struct healthAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                OnBoardingScreen()
            }
            .navigationViewStyle(.stack)
        }
    }
}
