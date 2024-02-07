//
//  FrameworkGridViewModel.swift
//  FrameworkApp
//
//  Created by sakshi.j on 05/02/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
}
