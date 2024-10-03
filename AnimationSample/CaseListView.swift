//
//  CaseListView.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2024/09/29.
//

import SwiftUI

struct CaseListView<Case>: View where Case: CaseIterable, Case.AllCases.Element: Hashable, Case.AllCases: RandomAccessCollection, Case.AllCases.Element == Case, Case: CaseShowable {
    
    let listCase: Case.Type
    
    var body: some View {
        List {
            ForEach(Case.allCases, id: \.self) { target in
                NavigationLink {
                    target.getCaseView()
                } label: {
                    Text(target.title)
                        .frame(maxWidth: .infinity, maxHeight: 70)
                        .background(target.backgroundColor)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
            }
            .listRowSeparator(.hidden)
            .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
        }
        .listStyle(.plain)
        .listRowSpacing(10)
        .padding(.horizontal, 16)
    }
}

#Preview {
    CaseListView(listCase: AnimationSampleType.self)
}
