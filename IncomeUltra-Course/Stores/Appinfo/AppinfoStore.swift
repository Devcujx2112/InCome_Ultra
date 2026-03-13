//
//  AppinfoStore.swift
//  IncomeUltra-Course
//
//  Created by Vu Tung Duong on 13/3/26.
//

import Foundation

struct AppInfoLiveStore {
    let name: String = "Income Ultra"
    let description: String = "Income Ultra calculates your income from hourly rates or salary, including overtime, and provides detailed financial breakdowns."
    let developer: String = "Vu Tung Duong"
    let website: String = "https://github.com/Devcujx2112"
    let agreements: Agreements = .init()

    var version: String {
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            return version
        }
        return "-"
    }

    var compatibility: String {
        if let minVersion = Bundle.main.infoDictionary?["MinimumOSVersion"] as? String {
            return "iOS \(minVersion)+"
        }
        return "-"
    }
}

extension AppInfoLiveStore {
    struct Agreements {
        let privacyPolicyUrl: String = ""
        let termsAndConditionsUri: String = ""
        let copyrightPolicyUrl: String = ""
        let disclaimerUrl: String = ""
    }
}
