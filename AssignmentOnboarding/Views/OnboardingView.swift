//
//  ContentView.swift
//  AssignmentOnboarding
//
//  Created by Yozi Reci Manda on 26/01/24.
//

import SwiftUI

struct OnboardingView: View {
    
    @State private var selectionTab: Int = 0
    
    var body: some View {
        ZStack {
            BackgroundImageOnboarding(selectionTab: $selectionTab)
            .tabViewStyle(PageTabViewStyle())
            .ignoresSafeArea()
        }
    }
}

#Preview {
    OnboardingView()
}
