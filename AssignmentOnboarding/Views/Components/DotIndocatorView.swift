//
//  DotIndocatorView.swift
//  AssignmentOnboarding
//
//  Created by Yozi Reci Manda on 27/01/24.
//

import SwiftUI

struct DotIndocatorView: View {
    
    var counterIndicator: Int
    @Binding var tag: Int
    var color: Color
    var secondaryColor: Color
    
    var body: some View {
        HStack {
            ForEach(0..<counterIndicator, id: \.self) { data in
                
                Circle()
                    .fill(tag == data ? color : secondaryColor)
                    .frame(width: 10, height: 10)
                    .padding(.horizontal,2)
//                    .scaleEffect(tag == data ? 2 : 1)
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            tag = data
                            print("asd")
                        }
                    }
            }
        }
        .background(Color.white.opacity(0.001))
    }
}

#Preview {
    DotIndocatorView(counterIndicator: 3, tag: .constant(1), color: .red, secondaryColor: .red.opacity(0.5))
}
