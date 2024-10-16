//
//  ContentView.swift
//  Restart
//
//  Created by Bruno Mazzocchi on 16/10/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
