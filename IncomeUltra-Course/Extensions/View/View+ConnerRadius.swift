//
//  View+Ext.swift
//  IncomeUltra-Course
//
//  Created by Vu Tung Duong on 12/3/26.
//

import SwiftUI

struct AppCornerRadius {
    let value: CGFloat
}

extension View {
    func cornerRadius(_ appCornerRadius: AppCornerRadius) -> some View {
        self
            .cornerRadius(appCornerRadius.value)
    }
}

extension AppCornerRadius {
    static var overall: Self = .init(value: 8)
    static var cell: Self = .init(value: 8)
    static var button: Self = .init(value: 8)
    static var textfield: Self = .init(value: 8)
}

fileprivate struct Preview: View {
    var body: some View {
        Text("Calculate")
            .foregroundStyle(Color.appTheme.accentContrastText)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.appTheme.accent)
            .cornerRadius(.button)
            .button(.press) {
            }
            .padding()
            .infinityFrame()
            .background(Color.appTheme.viewBackground)
    }
}

#Preview {
    Preview()
}
