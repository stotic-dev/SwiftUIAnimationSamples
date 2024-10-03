//
//  SlideTransitionView.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2024/09/29.
//

import SwiftUI

struct SlideTransitionView: View {
    
    @State var isShown = true
    
    var body: some View {
        VStack {
            if isShown {
                Circle()
                    .frame(width: 100)
                    .transition(.slide)
            }
            Button {
                withAnimation(.linear(duration: 1.0)) {
                    isShown.toggle()
                }
            } label: {
                Text(isShown ? "Hide" : "Show")
            }
        }
    }
}

#Preview {
    SlideTransitionView()
}
