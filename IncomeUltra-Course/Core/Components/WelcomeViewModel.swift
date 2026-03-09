//
//  WelcomeViewModel.swift
//  IncomeUltra-Course
//
//  Created by Vu Tung Duong on 9/3/26.
//

import Combine
import Foundation

@MainActor
final class WelcomeViewModel: ObservableObject {
    func getAppName() -> String {
        "Income Ultra"
    }

    func getTitleAppName() -> String {
        "Effortlessly calculate your income. \nLet's get started!"
    }

    func getLabelButtonStarted() -> String {
        "Get Started"
    }
}
