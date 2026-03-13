//
//  Container+Registration.swift
//  IncomeUltra-Course
//
//  Created by Vu Tung Duong on 14/3/26.
//

import Factory

extension Container{
    var appInfoStore: Factory<AppInfoLiveStore>{
        self {
            MainActor.assumeIsolated{ AppInfoLiveStore() }}
        .singleton
    }
    
    var incomeStore: Factory<IncomeStore>{
        self{
            MainActor.assumeIsolated{
                IncomeLiveStore()
            }}
        .singleton
        
    }
}
