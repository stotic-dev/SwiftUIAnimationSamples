//
//  LoadingView.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2024/10/21.
//

import SwiftUI

struct LoadingView: View {
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.3)
                .ignoresSafeArea()
            Circle()
                .trim(from: 0, to: 0.2)
                .stroke(lineWidth: 3)
                .rotation(.degrees(-90))
                .frame(width: 100, height: 100)
                .foregroundStyle(.gray)
                .phaseAnimator(0...10) { content, phase in
                    content
                        .rotationEffect(.degrees(Double(720 * phase)))
                        .opacity((phase == 10 || phase == 0) ? 0 : 1)
                        .scaleEffect((phase == 10 || phase == 0) ? 1.5 : 1)
                }
            Image(systemName: "cellularbars")
                .resizable()
                .symbolEffect(.variableColor)
                .frame(width: 50, height: 50)
        }
    }
}

#Preview {
    LoadingView()
}
