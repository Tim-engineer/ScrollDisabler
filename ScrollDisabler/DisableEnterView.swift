//
//  Disable.swift
//  ScrollDisabler
//
//  Created by Tim Matlak on 26/06/2024.
//

import SwiftUI

struct DisableEnterView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 60) {
                Button("""
                       WELCOME
                       TO
                       THE
                       """) { }
                
                Button("SCROLLDISABLER") { }
                    .tint(.accentColor)
                    .padding(.bottom, 60)
                
                Button("Disable all the distractions with one button") { }
                    .font(.title3)
                NavigationLink("Disable") { ConsistencyView() }
            }
            .modifier(BigButtonModifier())
        }
    }
}

#Preview {
    DisableEnterView()
}
