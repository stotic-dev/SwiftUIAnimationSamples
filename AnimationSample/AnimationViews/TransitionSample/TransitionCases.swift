//
//  TransitionCases.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2025/01/08.
//

import SwiftUI

enum TransitionCases: String, CaseIterable, CaseShowable {
    
    case slideTransition
    case scaleTransition
    case pushTransition
    case opacityTransition
    case offsetTransition
    case moveTransition
    case identityTransition
    case blurReplaceTransition
    case asymmetricTransition
    case customRotationTransition
    
    var title: String { self.rawValue }
    
    var backgroundColor: Color {
        
        guard let index = Self.allCases.firstIndex(of: self) else { return .white }
        return Color(red: Double(index) * 0.1,
                     green: Double(index) * 0.05,
                     blue: Double(index) * 0.08)
    }
    
    @ViewBuilder
    func getCaseView() -> some View {
        
        switch self {
            
        case .slideTransition:
            SlideTransitionView()
            
        case .scaleTransition:
            ScaleTransitionView()
            
        case .pushTransition:
            PushTransitionView()
            
        case .opacityTransition:
            OpacityTransitionView()
            
        case .offsetTransition:
            OffsetTransitionView()
            
        case .moveTransition:
            MoveTransitionView()
            
        case .identityTransition:
            IdentityTransitionView()
            
        case .blurReplaceTransition:
            BlurReplaceTransitionView()
            
        case .asymmetricTransition:
            AsymmetricTransitionView()
            
        case .customRotationTransition:
            CustomTransitionView()
        }
    }
}
