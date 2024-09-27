//
//  CircleAnimationView.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2024/09/26.
//

import SwiftUI

struct CircleAnimationView: View {
    
    @State private var progress: CGFloat = 1
    @State private var size: CGFloat = 100

    var body: some View {
        ZStack {
            Color.red
            Circle()
                .stroke(style: .init(lineWidth: 10, dash: [10, 5]))
                .trim(from: .zero, to: progress)
                .rotationEffect(.degrees(-90))
                .padding()
        }
        .frame(maxWidth: size, maxHeight: size)
        .onTapGesture {
            withAnimation(.linear(duration: 0.5)) {
                size = CGFloat.random(in: 10...200)
                progress = CGFloat.random(in: 0.5...1.0)
            }
        }
    }
}

#Preview {
    CircleAnimationView()
}
