//
//  KeyframeAnimationListView.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2025/01/08.
//

import SwiftUI

struct KeyframeAnimationListView: View {
    
    var body: some View {
        CaseListView(listCase: KeyframeAnimationCase.self)
    }
}
