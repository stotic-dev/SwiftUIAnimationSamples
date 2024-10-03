//
//  TransitionCasesListView.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2024/09/29.
//

import SwiftUI

struct TransitionCasesListView: View {
        
    var body: some View {
        CaseListView(listCase: TransitionCases.self)
    }
}

#Preview {
    TransitionCasesListView()
}
