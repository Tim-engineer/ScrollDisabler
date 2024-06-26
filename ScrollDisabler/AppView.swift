//
//  AppView.swift
//  ScrollDisabler
//
//  Created by Tim Matlak on 26/06/2024.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            BlockView()
                .tabItem {
                    Label("Block", systemImage: "hand.raised")
                }
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person")
                }
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    AppView()
}
