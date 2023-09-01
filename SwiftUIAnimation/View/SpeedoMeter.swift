//
//  SpeedoMeter.swift
//  SwiftUIAnimation
//
//  Created by Asif Syeed on 1/9/23.
//

import SwiftUI

struct SpeedoMeter: View {
    @Binding var progress: CGFloat
    
    var body: some View {
        GeometryReader { proxy in
            let size = proxy.size
            
            ZStack {
                // Speedometer shape
                ForEach(1...60, id: \.self) { index in
                    let deg = CGFloat(index) * 3
                    
                    Capsule()
                        .fill(.gray.opacity(0.25))
                        .frame(width: 40, height: 4)
                        .offset(x: -(size.width - 40) / 2)
                        .rotationEffect(.init(degrees: deg))
                }
            }
            .frame(width: size.width, height: size.height, alignment: .bottom)
            
            ZStack {
                // Speedometer shape
                ForEach(1...60, id: \.self) { index in
                    let deg = CGFloat(index) * 3
                    
                    Capsule()
                        .fill(deg < 60 ? Color("Ring1") : (deg >= 60 && deg < 120 ? Color("Ring2") : Color("Ring3")))
                        .frame(width: 40, height: 4)
                        .offset(x: -(size.width - 40) / 2)
                        .rotationEffect(.init(degrees: deg))
                }
            }
            .frame(width: size.width, height: size.height, alignment: .bottom)
            
            // MARK: Update Progress
            .mask {
                Circle()
                    .trim(from: 0, to: (progress / 2) + 0.002)
                    .stroke(.white, lineWidth: 40)
                    .frame(width: size.width - 40, height: size.width - 40)
                    .offset(y: -(size.height) / 2)
                    .rotationEffect(.init(degrees: 180))
            }
        }
        .overlay(alignment: .bottom, content: {
            HStack {
                
            }
        })
        .padding(.top)
        .padding(10)
    }
}

struct SpeedoMeter_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
