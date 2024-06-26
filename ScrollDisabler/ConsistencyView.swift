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
                Button { } label: {
                    Text("Do you want to be consistent in things that matter in your life ?")
                }
                Spacer()
                NavigationLink("Yes") {
                    WillingView()
                }
                Spacer()
            }
            .navigationTitle("Consistency")
            .navigationBarTitleDisplayMode(.inline)
            
            .modifier(BigButtonModifier())
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ConsistencyView()
}

struct BigButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .multilineTextAlignment(.center)
            .font(.title)
            .fontWeight(.black)
            .buttonStyle(.bordered)
            .tint(.primary)
    }
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

struct MeshBackgroundRandom: View {
    
    @State private var number = Float.random(in: 0.5...1.5)
    @State private var number2 = Float.random(in: 0.0...1.5)
    @State private var number3 = Float.random(in: 0.5...1.5)
    @State private var number4 = Float.random(in: 0.0...1.5)
    @State private var number5 = Float.random(in: 0.5...1.5)
    @State private var number6 = Float.random(in: 0.0...1.5)
    
    var body: some View {
        MeshGradient(
            width: 3,
            height: 3,
            points: [
                [number, number2], [number4, number4], [number, number6],
                [number, number5], [number, number], [number4, number],
                [number, number6], [number4, number2], [number2, number],
            ],
            colors: [
                .black, .black, .black,
                .blue, .green, .green,
                .black, .black, .blue
            ]
        )
//        .phaseAnimator([false, true, false]) { wwdc24, chromaRotate in
//            wwdc24
//                .hueRotation(.degrees(chromaRotate ? 360 : 0))
//        } animation: { chromaRotate in
//            .smooth(duration: 2)
//        }
    }
}
