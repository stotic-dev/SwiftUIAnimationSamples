//
//  CountUpAnimationTextView.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2024/09/27.
//

import SwiftUI

struct CountUpAnimationTextView: View {
    
    @State private var text: String = "0"
    
    var body: some View {
        CountUpAnimationText(text: text)
            .onAppear {
                withAnimation(.linear(duration: 5)) {
                    text = "100"
                }
            }
    }
}

struct CountUpAnimationText: View, Animatable {
    
    private var text = "0"
    
    init(text: String = "0") {
        
        self.text = text
    }
    
    var animatableData: Double {
        
        get { Double(text) ?? 0 }
        set { text = String(format: "%.0f", newValue) }
    }
    
    var body: some View {
        Text(text)
            .font(.system(size: 30, weight: .bold))
    }
}

#Preview {
    CountUpAnimationTextView()
}
