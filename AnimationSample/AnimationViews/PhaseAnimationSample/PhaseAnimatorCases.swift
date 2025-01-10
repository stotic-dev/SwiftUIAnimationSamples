//
//  PhaseAnimatorCases.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2025/01/08.
//

import SwiftUI

enum PhaseAnimatorCases: String, CaseIterable, CaseShowable {
    
    case multiStepAnimation
    case triggeredMultiStepAnimation
    case loading
    
    var title: String { self.rawValue }
    
    var backgroundColor: Color {
        
        guard let index = Self.allCases.firstIndex(of: self) else { return .white }
        return Color(red: Double(index) * 0.4,
                     green: Double(index) * 0.1,
                     blue: Double(index) * 0.2)
    }
    
    @ViewBuilder
    func getCaseView() -> some View {
        
        switch self {
        case .multiStepAnimation:
            MultiStepAnimationView()
            
        case .triggeredMultiStepAnimation:
            TriggeredMultiStepAnimationView()
            
        case .loading:
            LoadingView()
        }
    }
}
