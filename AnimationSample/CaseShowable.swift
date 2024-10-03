//
//  CaseShowable.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2024/09/29.
//

import SwiftUI

protocol CaseShowable {
    
    associatedtype Content: View
    
    var title: String { get }
    var backgroundColor: Color { get }
    @ViewBuilder func getCaseView() -> Content
}
