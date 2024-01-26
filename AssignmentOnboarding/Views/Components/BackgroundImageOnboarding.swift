//
//  BackgroundImageOnboarding.swift
//  AssignmentOnboarding
//
//  Created by Yozi Reci Manda on 26/01/24.
//

import SwiftUI

struct BackgroundImageOnboarding: View {
    
    @Binding var selectionTab: Int
    
    var body: some View {
        TabView(selection: $selectionTab) {
            
            ForEach(OnboardingModel.mockData, id: \.self) { data in
                
                Image(data.image)
                    .resizable()
                    .ignoresSafeArea()
                    .overlay {
                        VStack(alignment: .leading, spacing: 16) {
                            Text(data.title)
                                .font(.system(size: 30, weight: .bold, design: .default))
                                .bold()
                            Text(data.description)
                                .font(.system(size: 18, weight: .semibold))
                        }
                        .foregroundStyle(Color.white)
                        .frame(maxWidth: 280)
                        .offset(y: 200)
                        
                    }
                    .tag(data.tag)
            }
        }
    }
}

#Preview {
    BackgroundImageOnboarding(selectionTab: .constant(0))
}
