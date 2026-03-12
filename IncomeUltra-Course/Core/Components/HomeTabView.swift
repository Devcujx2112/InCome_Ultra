//
//  HomeTabView.swift
//  IncomeUltra-Course
//
//  Created by Vu Tung Duong on 9/3/26.
//

import SwiftUI

struct HomeTabView: View {
    let iconDollar: String = "dollarsign.square.fill"
    let iconSetting: String = "gear"
    var body: some View {
        TabView{
            incomeTabItemView
            settingTabView
        }
    }
}

private extension HomeTabView{
    var incomeTabItemView: some View{
        NavigationStack{
            IncomeView()
        }
        .tabItem {
            Image(systemName: iconDollar)
                Text("Income")
        }
    }
    var settingTabView: some View{
        NavigationStack{
            SettingView()
        }
        .tabItem {
            Image(systemName: iconSetting)
                Text("Setting")
        }
    }
}

#Preview {
    HomeTabView()
}
