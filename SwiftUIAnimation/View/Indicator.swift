//
//  Indicator.swift
//  SwiftUIAnimation
//
//  Created by Asif Syeed on 3/9/23.
//

import SwiftUI

struct Indicator: Shape {
    func path(in rect: CGRect) -> Path {
        return Path { path in
            let width = rect.width
            let height = rect.height
            
            path.move(to: CGPoint(x: width / 2, y: 0))
            path.addLine(to: CGPoint(x: 0, y: height))
            path.addLine(to: CGPoint(x: width, y: height))
        }
    }
}
