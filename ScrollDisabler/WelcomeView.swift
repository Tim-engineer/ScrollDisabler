//
//  WelcomeView.swift
//  ScrollDisabler
//
//  Created by Tim Matlak on 26/06/2024.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            MeshBackground2()
            VStack(spacing: 120) {
//                Text("You are in the right place then...")
//                    .font(.headline)
                HStack {
                    Text("You are in the right place then...")
                    Spacer()
                }
                .padding(.leading)
                Spacer()
                NavigationLink("Welcome") { AppView() }
                Spacer()
            }
            .padding(.vertical, 80)
            .modifier(BigButton())
        }
        .navigationBarTitleDisplayMode(.large)
        .navigationBarBackButtonHidden()
        .ignoresSafeArea()
    }
}

#Preview {
    WelcomeView()
}
