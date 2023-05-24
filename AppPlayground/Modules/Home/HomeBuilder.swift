//
//  HomeBuilder.swift
//  AppPlayground
//
//  Created by Brais Castro on 24/5/23.
//

import SwiftUI

final class HomeBuilder {
    
    static func build(navigationPath: Binding<[NavigationState]>) -> HomeView {
        
        let viewModel: HomeView.ViewModel = HomeView.ViewModel()
        let view: HomeView = HomeView(navigationPath: navigationPath, viewModel: viewModel)
        
        return view
        
    }
    
}
