//
//  ContentView.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2024/09/26.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            CaseListView(listCase: AnimationSampleType.self)
        }
    }
}

#Preview {
    ContentView()
}
