//
//  MultiStepAnimationView.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2024/10/21.
//

import SwiftUI

struct MultiStepAnimationView: View {
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.system(size: 24, weight: .bold))
            .phaseAnimator([1, 2, 3], content: { view, phase in
                view
                    .opacity(phase == 2 ? 1 : 0)
                    .scaleEffect(phase * 0.5)
            }, animation: { phase in
                
                phase == 2 ? .spring : .linear(duration: 1)
            })
    }
}

#Preview {
    MultiStepAnimationView()
}
