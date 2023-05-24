//
//  ContentView.swift
//  AppPlayground
//
//  Created by Brais Castro on 24/5/23.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Public Properties
    
    @State var navigationPath = [NavigationState]()
    @ObservedObject var viewModel: ContentView.ViewModel
    
    
    // MARK: - Body
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            HomeBuilder.build(navigationPath: $navigationPath)
                .navigationDestination(for: NavigationState.self) { destination in
                    switch destination {
                    case .testView:
                        TestBuilder.build(navigationPath: $navigationPath)
                    }
                }
        }
        .tint(.text)
    }
}


// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentBuilder.build()
    }
    
}


extension UINavigationController {

    open override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        navigationBar.topItem?.backButtonDisplayMode = .minimal
        navigationBar.topItem?.backBarButtonItem?.tintColor = .black
    }
    
}
