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
    Expense(icon: "netflix", title: "Netflix", subTitle: "Subscription", amount: "$12.99"),
    Expense(icon: "food", title: "Food", subTitle: "Starbucks", amount: "$14.00"),
    Expense(icon: "taxi", title: "Taxi", subTitle: "Uber payment", amount: "$24.90"),
    Expense(icon: "netflix", title: "Netflix", subTitle: "Subscription", amount: "$12.99"),
    Expense(icon: "food", title: "Food", subTitle: "Starbucks", amount: "$14.00"),
    Expense(icon: "taxi", title: "Taxi", subTitle: "Uber payment", amount: "$24.90")
]

let months: [String] = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
let progressArray: [CGFloat] = [0.1, 0.4, 0.9, 0.5, 0.3, 0.8, 0.6, 0.2, 0.89, 0.45, 0.98, 0.32]
