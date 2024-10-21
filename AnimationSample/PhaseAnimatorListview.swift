//
//  PhaseAnimatorListview.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2024/09/29.
//

import SwiftUI

struct PhaseAnimatorListview: View {
        
    var body: some View {
        CaseListView(listCase: PhaseAnimatorCases.self)
    }
}

#Preview {
    PhaseAnimatorListview()
}
