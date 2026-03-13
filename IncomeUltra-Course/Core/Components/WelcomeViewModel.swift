//
//  WelcomeViewModel.swift
//  IncomeUltra-Course
//
//  Created by Vu Tung Duong on 9/3/26.
//

import Combine
import Foundation
import Factory

@MainActor
final class WelcomeViewModel: ObservableObject {
    @Injected(\.appInfoStore) var appInfoStore
    func getAppName() -> String {
        appInfoStore.name
    }

    func getTitleAppName() -> String {
        "Effortlessly calculate your income. \nLet's get started!"
    }

    func getLabelButtonStarted() -> String {
        "Get Started"
    }
}
