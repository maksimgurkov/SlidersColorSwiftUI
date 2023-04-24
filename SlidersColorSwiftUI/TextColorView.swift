//
//  TextColorView.swift
//  SlidersColorSwiftUI
//
//  Created by Максим Гурков on 24.04.2023.
//

import SwiftUI

struct TextColorView: View {
    let sliderValue: Double
    
    var body: some View {
        Text("\(lround(sliderValue))")
    }
}

struct TextColorView_Previews: PreviewProvider {
    static var previews: some View {
        TextColorView(sliderValue: 255)
    }
}
