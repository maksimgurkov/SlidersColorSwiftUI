//
//  ColorView.swift
//  SlidersColorSwiftUI
//
//  Created by Максим Гурков on 24.04.2023.
//

import SwiftUI

struct ColorView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    let isOnToggle: Bool
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .frame(height: 200)
            .cornerRadius(20)
            .offset(x: isOnToggle ? 0 : 360)
            .animation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 0.3), value: isOnToggle)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 1, green: 1, blue: 1, isOnToggle: false)
    }
}
