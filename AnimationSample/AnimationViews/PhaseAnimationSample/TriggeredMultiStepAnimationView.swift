//
//  TriggeredMultiStepAnimationView.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2024/10/21.
//

import SwiftUI

struct TriggeredMultiStepAnimationView: View {
    
    @State var trigger = 2
    
    var body: some View {
        VStack {
            Spacer()
            Rectangle()
                .frame(width: 100, height: 100)
                .phaseAnimator([1,2,3], trigger: trigger) { view, phase in
                    view
                        .opacity(phase == 2 ? 0 : 1)
                        .rotationEffect(.degrees(phase == 2 ? 360 : 0))
                        .foregroundStyle(phase == 1 ? .red : .blue)
                }
            Spacer()
            Button {
                trigger += 1
            } label: {
                Text("START")
            }
        }
    }
}

#Preview {
    TriggeredMultiStepAnimationView()
}
