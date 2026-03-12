//
//  View+infinityFrame.swift
//  IncomeUltra-Course
//
//  Created by Vu Tung Duong on 12/3/26.
//

import SwiftUI

extension View{
    func infinityFrame() -> some View{
        self
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
