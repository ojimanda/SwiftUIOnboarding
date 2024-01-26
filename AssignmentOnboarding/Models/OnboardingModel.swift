//
//  OnboardingModel.swift
//  AssignmentOnboarding
//
//  Created by Yozi Reci Manda on 26/01/24.
//

import Foundation


struct OnboardingModel: Identifiable, Hashable {
    
    let id = UUID().uuidString
    let image: String
    let title: String
    let description: String
    let tag: Int
    
}

extension OnboardingModel {
    
    static var mockData: [OnboardingModel] = [
        OnboardingModel(image: "clear1", title: "Your Life in Lists", description: "Clear is colorful canvas for your thoughts, plans and goals. Here's what makes it uniquely fun and effective.", tag: 0),
        OnboardingModel(image: "clear2", title: "Radically Simple", description: "Clear is pristine place to think, totally free of distranctions or feature clutter.", tag: 1),
        OnboardingModel(image: "clear3", title: "Remarkably Fluent", description: "Clear's gesture shortcuts are intuitive and efficient. Try pinching to insert or take a screenshot to share a list.", tag: 2),
        OnboardingModel(image: "clear4", title: "Strangely Addictive", description: "Clear harnesses your dopamine with satisfying sounds, haptics, and collectibles that unlock as you get things done.", tag: 3),
        OnboardingModel(image: "clear5", title: "Insanely Personalizable", description: "Mix and match hundreds of collectibles, totally transforming Clear to suit your style and whims.", tag: 4),
        OnboardingModel(image: "clear6", title: "Treat Yourself", description: "Because it's productive to after a job well done. Clear is 100% free to use and also a treat to shop in. Happy listing!", tag: 5),
    ]
    
}
