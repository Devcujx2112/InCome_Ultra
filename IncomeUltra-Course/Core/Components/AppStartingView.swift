//
//  ContentView.swift
//  IncomeUltra-Course
//
//  Created by Vu Tung Duong on 9/3/26.
//

import SwiftUI
import SwiftData

struct AppStartingView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    @StateObject var viewModel = AppStartingViewModel()
    var body: some View {
        Group{
            if viewModel.shouldShowWelcomeView {
                WelcomeView(shouldShowWelcomeView: $viewModel.shouldShowWelcomeView)
            }else{
                HomeTabView()
            }
        }
        .animation(.easeIn, value: viewModel.shouldShowWelcomeView)
    }
}

#Preview {
    AppStartingView()
        .modelContainer(for: Item.self, inMemory: true)
}
