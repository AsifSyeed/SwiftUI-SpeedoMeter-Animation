//
//  Expense.swift
//  SwiftUIAnimation
//
//  Created by Asif Syeed on 31/8/23.
//

import Foundation
import SwiftUI

struct Expense: Identifiable {
    var id = UUID().uuidString
    var icon: String
    var title: String
    var subTitle: String
    var amount: String
}

var expenses: [Expense] = [
    Expense(icon: "Food", title: "Food", subTitle: "Starbucks", amount: "$14.00"),
    Expense(icon: "taxi", title: "Taxi", subTitle: "Uber payment", amount: "$24.90"),
    Expense(icon: "netflix ", title: "Netflix", subTitle: "Subscription", amount: "$12.99")
]
