//
//  KeyframeAnimationCase.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2025/01/08.
//

import SwiftUI

enum KeyframeAnimationCase: String, CaseIterable, CaseShowable {
    
    case singleKeyframeSampleAnimation
    case multiKeyframeSampleAnimation
    
    var title: String {
        
        return self.rawValue
    }
    
    var backgroundColor: Color {
        
        guard let index = Self.allCases.firstIndex(of: self) else { return .white }
        return Color(red: Double(index) * 0.4,
                     green: Double(index) * 0.1,
                     blue: Double(index) * 0.2)
    }
    
    func getCaseView() -> some View {
        
        switch self {
            
        case .singleKeyframeSampleAnimation:
            SingleKeyframeAnimationView()
            
        case .multiKeyframeSampleAnimation:
            MultiKeyFrameAnimationView()
        }
    }
}
