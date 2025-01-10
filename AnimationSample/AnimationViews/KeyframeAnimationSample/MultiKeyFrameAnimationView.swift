//
//  MultiKeyFrameAnimationView.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2025/01/08.
//

import SwiftUI

struct MultiKeyFrameAnimationView: View {
    
    @State var animationTrigger = true
    
    var body: some View {
        getReactionView(reaction: "😇")
            .keyframeAnimator(initialValue: AnimationValue(), trigger: animationTrigger) { content, value in
                content
                    .scaleEffect(value.scale)
                    .rotationEffect(value.rotation)
                    .scaleEffect(y: value.verticalStretch)
            } keyframes: { _ in
                KeyframeTrack(\.scale) {
                    LinearKeyframe(1, duration: 0.36)
                    SpringKeyframe(3, duration: 1.0)
                    SpringKeyframe(1, duration: 0.36)
                }
                KeyframeTrack(\.rotation) {
                    LinearKeyframe(.degrees(90), duration: 1.0)
                    SpringKeyframe(.degrees(360), duration: 6.0, spring: .bouncy(duration: 6.0))
                    SpringKeyframe(.degrees(0), duration: 1.0)
                }
                KeyframeTrack(\.verticalStretch) {
                    LinearKeyframe(1, duration: 0.5)
                    MoveKeyframe(1.5)
                    SpringKeyframe(3.0, duration: 4.5)
                    LinearKeyframe(1, duration: 1.0)
                }
            }
            .onTapGesture {
                animationTrigger.toggle()
            }
    }
    
    func getReactionView(reaction: String) -> some View {
        Text(reaction)
            .font(.largeTitle)
    }
}

extension MultiKeyFrameAnimationView {
    
    struct AnimationValue {
        
        var scale = 1.0
        var verticalStretch = 1.0
        var rotation: Angle = .degrees(0)
    }
}

#Preview {
    MultiKeyFrameAnimationView()
}
