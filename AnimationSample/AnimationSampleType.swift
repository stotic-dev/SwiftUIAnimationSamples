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
        }
    }
}

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
