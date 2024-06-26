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
                VStack(spacing: 20){
                    Text("WELCOME")
                    Text("TO")
                    Text("THE")
                }
                .foregroundStyle(LinearGradient(colors: [.gray, .orange.opacity(0.2)], startPoint: .topLeading, endPoint: .bottomTrailing))
                Text("""
                     SCROLL
                     KILLER
                    """)
                    .foregroundStyle(LinearGradient(colors: [.red, .orange], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .font(.system(size: 60))
                
                NavigationLink("CONTINUE") { ConsistencyView() }
                    .tint(.secondary)
            }
            .modifier(BigButtonAligned())
        }
    }
}

#Preview {
    DisableEnterView()
}
