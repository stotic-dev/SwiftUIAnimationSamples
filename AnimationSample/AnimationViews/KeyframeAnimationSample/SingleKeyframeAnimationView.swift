//
//  SingleKeyframeAnimationView.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2025/01/10.
//

import SwiftUI

struct SingleKeyframeAnimationView: View {
    
    @State private var animationTrigger = false
    
    var body: some View {
        ZStack {
            Divider()
            Text("😇")
                .font(.largeTitle)
                .keyframeAnimator(initialValue: 0.0, trigger: animationTrigger) { content, value in
                    content
                        .offset(y: value)
                } keyframes: { _ in
                    KeyframeTrack {
                        LinearKeyframe(0.0, duration: 1.0)
                        SpringKeyframe(90.0, duration: 4.0)
                        SpringKeyframe(-90.0, duration: 4.0, spring: .smooth(duration: 4.0))
                        MoveKeyframe(90.0)
                        CubicKeyframe(-90.0, duration: 1.0)
                        CubicKeyframe(90.0, duration: 4.0)
                        MoveKeyframe(-90.0)
                        LinearKeyframe(0, duration: 1.0)
                    }
                }
                .onTapGesture {
                    animationTrigger.toggle()
                }
        }
    }
}

#Preview {
    SingleKeyframeAnimationView()
}
