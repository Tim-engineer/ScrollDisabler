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
            MeshBackground3()
            VStack {
                Button { } label: {
                    Text("Then you are mostly welcomed to our app")
                }
            }
            .modifier(BigButtonModifier())
            .buttonStyle(.bordered)
            .tint(.primary)
        }
        .navigationTitle("Welcome")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .ignoresSafeArea()
        
    }
}

#Preview {
    NavigationStack {
        WelcomeView()
    }
}

struct MeshBackground3: View {
    var body: some View {
        MeshGradient(
            width: 3,
            height: 3,
            points: [
                [0.5, 0.0], [1.5, 0.0], [0.5, 0.0],
                [1.0, 0.0], [0.0, 1.0], [1.0, 0.5],
                [0.0, 0.5], [0.5, 1.0], [0.0, 1.0]
            ],
            colors: [
                .black, .black, .black,
                .blue, .green, .green,
                .black, .black, .blue
            ]
        )
        .phaseAnimator([false, true, false]) { wwdc24, chromaRotate in
            wwdc24
                .hueRotation(.degrees(chromaRotate ? 360 : 0))
        } animation: { chromaRotate in
            .smooth(duration: 8)
        }
    }
}


