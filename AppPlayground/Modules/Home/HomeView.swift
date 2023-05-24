//
//  HomeView.swift
//  AppPlayground
//
//  Created by Brais Castro on 24/5/23.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - Public Properties
    
    @Binding var navigationPath: [NavigationState]
    @ObservedObject var viewModel: HomeView.ViewModel
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                
                Button("NAVIGATE") {
                    navigationPath.append(.homeView)
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("HomeView")
    }
}

struct HomeView_Previews: PreviewProvider {
    
    static var previews: some View {
        HomeBuilder.build(navigationPath: .constant([NavigationState]()))
    }
    
}
