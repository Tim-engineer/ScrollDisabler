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
//                Spacer()
//                Text("Do you want to be consistent in things that matter in your life ?")
//                    .font(.headline)
//                    .foregroundStyle(.secondary)
                HStack {
                    Text("""
                    Do you want to be 
                    consistent,
                    in things that
                    matter in your life ?
                    """)
                    Spacer()
                }
                .padding(.leading)
                Spacer()
                NavigationLink("Yes") { WelcomeView() }
                Spacer()
            }
            .padding(.vertical, 80)
            .modifier(BigButton())
        }
        .navigationBarBackButtonHidden()
        .ignoresSafeArea()
    }
}

#Preview {
    ConsistencyView()
}
