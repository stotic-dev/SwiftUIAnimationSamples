//
//  AnimationSampleType.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2024/09/29.
//

import SwiftUI

enum AnimationSampleType: String, CaseIterable, CaseShowable {    
    
    case animatableData
    case transition
    case phaseAnimator
    case keyframe
    
    var title: String { self.rawValue }
    
    var backgroundColor: Color {
        
        guard let index = Self.allCases.firstIndex(of: self) else { return .white }
        return Color(red: Double(index * 0),
                     green: Double(index) * 0.2,
                     blue: Double(index) * 0.5)
    }
    
    @ViewBuilder
    func getCaseView() -> some View {
        
        switch self {
            
        case .animatableData:
            AnimatableCasesListView()
            
        case .transition:
            TransitionCasesListView()
            
        case .phaseAnimator:
            PhaseAnimatorListview()
            
        case .keyframe:
            KeyframeAnimationListView()
        }
    }
}
