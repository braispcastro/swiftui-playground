//
//  TestBuilder.swift
//  AppPlayground
//
//  Created by Brais Castro on 24/5/23.
//

import SwiftUI

final class TestBuilder {
    
    static func build(navigationPath: Binding<[NavigationState]>) -> TestView {
        
        let viewModel: TestView.ViewModel = TestView.ViewModel()
        let view: TestView = TestView(navigationPath: navigationPath, viewModel: viewModel)
        
        return view
        
    }
    
}
