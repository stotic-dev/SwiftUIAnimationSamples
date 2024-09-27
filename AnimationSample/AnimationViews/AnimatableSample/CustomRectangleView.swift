//
//  CustomRectangleView.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2024/09/26.
//

import SwiftUI

struct CustomRectangleView: View, Animatable {
    
    @State private var width: CGFloat = 100
    @State private var height: CGFloat = 100
    
    var body: some View {
        ZStack {
            CustomShape(width: width, height: height)
        }
        .frame(maxWidth: width, maxHeight: height)
        .onTapGesture {
            withAnimation(.linear(duration: 0.5)) {
                width = CGFloat.random(in: 10...200)
                height = CGFloat.random(in: 10...200)
            }
        }
    }
    
    struct CustomShape: Shape {
        
        var width: CGFloat
        var height: CGFloat
        
//        var animatableData: AnimatablePair<CGFloat, CGFloat> {
//            get { .init(width, height) }
//            set {
//                width = newValue.first
//                height = newValue.second
//            }
//        }
        
//        var animatableData: CGFloat {
//            
//            get { return width }
//            set { width = newValue }
//        }
        
        nonisolated func path(in rect: CGRect) -> Path {
            var path = Path()
            path.addRect(.init(x: (rect.width - width) / 2, y: (rect.height - height) / 2, width: width, height: height))
            return path
        }
    }
}

#Preview {
    CustomRectangleView()
}
