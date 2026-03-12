//
//  WelcomeView.swift
//  IncomeUltra-Course
//
//  Created by Vu Tung Duong on 9/3/26.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var shouldShowWelcomeView: Bool
    @StateObject private var viewModel = WelcomeViewModel()

    var body: some View {
        VStack {
            title
            Spacer()
            VStack(spacing: 0) {
                welcomeImage
                welcomeText
            }
            Spacer()
            getStartedButton
        }
        .padding()
        .background(Color.appTheme.viewBackground)
    }
}

private extension WelcomeView {
    var title: some View {
        Text(viewModel.getAppName()).font(.title).fontWeight(.bold)
    }

    var welcomeImage: some View {
        Image(.welcome).resizable().scaledToFit().frame(maxWidth: .infinity)
    }

    var welcomeText: some View {
        Text(viewModel.getTitleAppName()).font(.title3).fontWeight(.medium).multilineTextAlignment(.center).foregroundStyle(Color.appTheme.secondaryText)
    }

    var getStartedButton: some View {
        Button {} label: {
            Text(viewModel.getLabelButtonStarted())
                .primaryButton()
                .button(.press) {
                    shouldShowWelcomeView = false
                }
        }
    }
}

#Preview {
    WelcomeView(shouldShowWelcomeView: .constant(true))
}
