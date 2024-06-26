//
//  Consistency.swift
//  ScrollDisabler
//
//  Created by Tim Matlak on 26/06/2024.
//

import SwiftUI

struct ConsistencyView: View {
    var body: some View {
        ZStack {
            MeshBackground()
            VStack {
                Spacer()
                Text("Do you want to be consistent in things that matter in your life ?")
                    .font(.headline)
                    .foregroundStyle(.secondary)
                Spacer()
                NavigationLink("Yes") { WelcomeView() }
                Spacer()
            }
            .modifier(BigButtonAligned())
        }
        .navigationBarBackButtonHidden()
        .ignoresSafeArea()
    }
}

#Preview {
    ConsistencyView()
}

struct MeshBackground: View {
    var body: some View {
        MeshGradient(
            width: 3,
            height: 3,
            points: [
                [0.5, 0.0], [1.5, 0.0], [0.5, 0.0],
                [0.0, 0.0], [0.0, 1.0], [1.0, 0.5],
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
