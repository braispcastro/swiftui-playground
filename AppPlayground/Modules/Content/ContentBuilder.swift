//
//  ContentBuilder.swift
//  AppPlayground
//
//  Created by Brais Castro on 24/5/23.
//

import Foundation

final class ContentBuilder {
    
    static func build() -> ContentView {
        
        let viewModel: ContentView.ViewModel = ContentView.ViewModel()
        let view: ContentView = ContentView(viewModel: viewModel)
        
        return view
        
    }
    
}
