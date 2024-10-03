//
//  BlurReplaceTransitionView.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2024/10/03.
//

import SwiftUI

struct BlurReplaceTransitionView: View {
    
    @State var isShown = true
    
    var body: some View {
        VStack {
            Spacer()
            if isShown {
                Circle()
                    .frame(width: 100)
                    .transition(.blurReplace)
            }
            Spacer()
            Button {
                withAnimation(.linear(duration: 1.0)) {
                    isShown.toggle()
                }
            } label: {
                Text(isShown ? "Hide" : "Show")
            }
            Spacer()
        }
    }
}

#Preview {
    BlurReplaceTransitionView()
}
