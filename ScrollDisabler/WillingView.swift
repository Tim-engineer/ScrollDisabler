//
//  Willing.swift
//  ScrollDisabler
//
//  Created by Tim Matlak on 26/06/2024.
//

import SwiftUI

struct WillingView: View {
    var body: some View {
        ZStack {
            MeshBackground2()
            VStack {
                Spacer()
                Button { } label: {
                    Text("Are you willing to get rid of all those distractions that are holding you back ?")
                }
                Spacer()
                NavigationLink("Yes") {
                    WelcomeView()
                }
                Spacer()
            }
            .navigationTitle("Distractions")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden()
            .buttonStyle(.bordered)
            .tint(.primary)
            .modifier(BigButtonModifier())
        }
        .ignoresSafeArea()
    }
}

#Preview {
    NavigationStack {
        WillingView()
    }
}

struct MeshBackground2: View {
    var body: some View {
        MeshGradient(
            width: 4,
            height: 4,
            points: [
                [0.0, 0.0], [0.5, 0.0], [1.0, 0.0],
                [0.0, 0.5], [0.9, 0.3], [1.0, 0.5],
                [0.0, 1.0], [0.5, 1.0], [1.0, 1.0]
            ],
            colors: [
                .black,.black,.black,
                .blue, .blue, .blue,
                .green, .green, .green
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

