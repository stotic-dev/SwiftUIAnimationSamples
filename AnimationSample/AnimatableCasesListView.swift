//
//  AnimatableCasesListView.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2024/09/29.
//

import SwiftUI

struct AnimatableCasesListView: View {
        
    var body: some View {
        CaseListView(listCase: AnimatableDataCases.self)
    }
}

#Preview {
    AnimatableCasesListView()
}
