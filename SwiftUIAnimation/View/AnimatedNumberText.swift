//
//  AnimatedNumberText.swift
//  SwiftUIAnimation
//
//  Created by Asif Syeed on 3/9/23.
//

import SwiftUI

struct AnimatedNumberText: Animatable, View {
    var value: CGFloat
    var font: Font
    var floatingPoint: Int = 2
    var isCurrency: Bool = false
    var additionalString: String = ""
    
    var animatableData: CGFloat {
        get { value }
        set { value = newValue }
    }
    
    var body: some View {
        Text("\(isCurrency ? "$" : "")\(String(format: "%.\(floatingPoint)f", value))" + additionalString)
            .font(font)
    }
}
