//
//  Badge.swift
//  SwiftUI Essentials
//
//  Created by bMatheron on 26/05/2023.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols: some View {
        ForEach(0 ..< 8) { item in
            RotatedBadgeSymbol(angle: .degrees(Double(item) / Double(8)) * 360)
        }
        .opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader { geo in
                badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(
                        x: geo.size.width / 2.0,
                        y: (3.0 / 4.0 ) * geo.size.height)
            }
        }
        .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
