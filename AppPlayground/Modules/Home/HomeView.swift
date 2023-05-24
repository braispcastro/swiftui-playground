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
            ScrollView {
                ForEach(0 ..< 15) { item in
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.orange)
                        .frame(height: 44)
                        .padding()
                }
            }
        }
        .customNavigation(
            title: "HomeView",
            toolbar: { toolbar },
            content: { navigationContent },
            navigationPath: $navigationPath
        )
    }
    
    
    // MARK: - View Accessories
    
    var toolbar: some View {
        HStack {
            Button(action: { navigationPath.append(.testView) }) {
                Image(systemName: "lightbulb")
            }
        }
    }
    
    var navigationContent: some View {
        Text("With safeAreaInset you can create your own custom nav bar.")
            .font(.caption)
    }
}

struct HomeView_Previews: PreviewProvider {
    
    static var previews: some View {
        HomeBuilder.build(navigationPath: .constant([NavigationState]()))
    }
    
}
