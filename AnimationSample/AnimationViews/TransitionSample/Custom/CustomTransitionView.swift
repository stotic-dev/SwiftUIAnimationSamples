//
//  CustomTransitionView.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2024/10/03.
//

import SwiftUI

struct CustomTransitionView: View {
    
    @State var isShown = true
    
    var body: some View {
        VStack {
            Spacer()
            if isShown {
                Circle()
                    .frame(width: 100)
                    .transition(.rotation.combined(with: .opacity))
            }
            Spacer()
            Button {
                withAnimation(.linear(duration: 1.5)) {
                    isShown.toggle()
                }
            } label: {
                Text(isShown ? "Hide" : "Show")
            }
            Spacer()
        }
    }
}

struct RotationModifier: ViewModifier {
    
    let degrees: CGFloat
    let axis: (x: CGFloat, y: CGFloat, z: CGFloat)
    
    init(degrees: CGFloat,
         axis: (x: CGFloat, y: CGFloat, z: CGFloat) = (0, 0, 0)) {
        self.degrees = degrees
        self.axis = axis
    }
    
    func body(content: Content) -> some View {
        content
            .rotation3DEffect(.degrees(degrees), axis: axis)
    }
}

extension AnyTransition {
    
    static var rotation: AnyTransition {
        .modifier(active: RotationModifier(degrees: 720, axis: (1, 5, 5)),
                  identity: RotationModifier(degrees: 0))
    }
}

#Preview {
    CustomTransitionView()
}
