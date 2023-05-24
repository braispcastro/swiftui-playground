//
//  View+Navigation.swift
//  AppPlayground
//
//  Created by Brais Castro on 24/5/23.
//

import SwiftUI

extension View {
    
    func customNavigation<Toolbar: View, Content: View>(
        title: String = "",
        @ViewBuilder toolbar: () -> Toolbar,
        @ViewBuilder content: () -> Content,
        navigationPath: Binding<[NavigationState]>
    ) -> some View {
        self.frame(maxWidth: .infinity, maxHeight: .infinity)
            .safeAreaInset(edge: .top) {
                VStack(alignment: .leading, spacing: 8) {
                    HStack(spacing: 16) {
                        if !navigationPath.isEmpty {
                            Button(
                                action: { navigationPath.wrappedValue.removeLast() },
                                label: { Image(systemName: "chevron.left") }
                            )
                        }
                        
                        Text(title).font(.title2.weight(.bold))
                        
                        Spacer()
                        
                        toolbar()
                    }
                    content()
                }
                .padding()
                .background(.ultraThinMaterial)
            }
            .navigationBarHidden(true)
            .tint(.text)
    }
    
    func customNavigation<Toolbar: View>(
        title: String = "",
        @ViewBuilder toolbar: () -> Toolbar,
        navigationPath: Binding<[NavigationState]>
    ) -> some View {
        customNavigation(title: title, toolbar: toolbar, content: {}, navigationPath: navigationPath)
    }
    
    func customNavigation<Content: View>(
        title: String = "",
        @ViewBuilder content: () -> Content,
        navigationPath: Binding<[NavigationState]>
    ) -> some View {
        customNavigation(title: title, toolbar: {}, content: content, navigationPath: navigationPath)
    }
    
    func customNavigation(
        title: String = "",
        navigationPath: Binding<[NavigationState]>
    ) -> some View {
        customNavigation(title: title, toolbar: {}, content: {}, navigationPath: navigationPath)
    }
    
}
