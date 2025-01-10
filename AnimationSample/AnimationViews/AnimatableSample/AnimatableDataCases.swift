//
//  AnimatableDataCases.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2025/01/08.
//

import SwiftUI

enum AnimatableDataCases: String, CaseIterable, CaseShowable {
    
    case customRectangle
    case countUpAnimation
    case circleAnimation
    case chibakunAnimation
    
    var title: String { self.rawValue }
    
    var backgroundColor: Color {
        
        guard let index = Self.allCases.firstIndex(of: self) else { return .white }
        return Color(red: Double(index) * 0.1,
                     green: Double(index) * 0.3,
                     blue: Double(index) * 0.7)
    }
    
    @ViewBuilder
    func getCaseView() -> some View {
        
        switch self {
            
        case .customRectangle:
            CustomRectangleView()
            
        case .countUpAnimation:
            CountUpAnimationTextView()
            
        case .circleAnimation:
            CircleAnimationView()
            
        case .chibakunAnimation:
            ChibakunView()
        }
    }
}
