//
//  Modifiers.swift
//  ScrollDisabler
//
//  Created by Tim Matlak on 26/06/2024.
//

import SwiftUI

struct BigButtonAligned: ViewModifier {
    func body(content: Content) -> some View {
        content
            .multilineTextAlignment(.center)
            .font(.title)
            .fontWeight(.black)
            .buttonStyle(.bordered)
            .tint(.primary)
    }
}

struct BigButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .fontWeight(.black)
            .buttonStyle(.bordered)
            .tint(.primary)
    }
}

struct BigFontCenterAligned: ViewModifier {
    func body(content: Content) -> some View {
        content
            .multilineTextAlignment(.center)
            .font(.title)
            .fontWeight(.black)
    }
}
