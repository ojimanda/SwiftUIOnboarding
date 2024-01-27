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
        ZStack(alignment: .bottom) {
            BackgroundImageOnboarding(selectionTab: $selectionTab)
            DotIndocatorView(counterIndicator: OnboardingModel.mockData.count, tag: $selectionTab, color: .white, secondaryColor: .white.opacity(0.5)) 
        }
    }
}

#Preview {
    OnboardingView()
}
