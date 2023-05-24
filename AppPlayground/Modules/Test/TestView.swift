//
//  TestView.swift
//  AppPlayground
//
//  Created by Brais Castro on 24/5/23.
//

import SwiftUI

struct TestView: View {
    
    // MARK: - Public Properties
    
    @Binding var navigationPath: [NavigationState]
    @ObservedObject var viewModel: TestView.ViewModel
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            Text("Test Screen")
        }
        .customNavigation(title: "TestView", navigationPath: $navigationPath)
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestBuilder.build(navigationPath: .constant([NavigationState]()))
    }
}
