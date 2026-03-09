//
//  AppStartingViewModel.swift
//  IncomeUltra-Course
//
//  Created by Vu Tung Duong on 9/3/26.
//

import Combine
import Foundation

@MainActor
final class AppStartingViewModel: ObservableObject {
    @Published var shouldShowWelcomeView: Bool = true
}
