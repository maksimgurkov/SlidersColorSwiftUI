//
//  TextFieldView.swift
//  SlidersColorSwiftUI
//
//  Created by Максим Гурков on 24.04.2023.
//

import SwiftUI

struct TextFieldView: View {
    
    @Binding var valueText: String
    @Binding var sliderValue: Double
    
    @State private var alert = false
    
    
    var body: some View {
        TextField("", text: $valueText) { _ in
            withAnimation {
                view()
            }
        }
        .textFieldStyle(.roundedBorder)
        .frame(width: 60)
        .keyboardType(.decimalPad)
        .alert("Не верный формат", isPresented: $alert, actions: {}) {
            Text("Пожалуйста введите верный формат")
        }
    }
}

extension TextFieldView {
    private func view() {
        if let value = Int(valueText), (0...255).contains(value) {
            self.sliderValue = Double(value)
            return
        }
        alert.toggle()
        sliderValue = 0
        valueText = "0"
    }
}


struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(valueText: .constant("100"), sliderValue: .constant(100))
    }
}
