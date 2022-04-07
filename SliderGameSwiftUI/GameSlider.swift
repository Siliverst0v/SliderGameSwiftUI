//
//  GameSlider.swift
//  SliderGameSwiftUI
//
//  Created by Анатолий Силиверстов on 07.04.2022.
//

import SwiftUI

struct GameSlider: View {
    @Binding var currentValue: Double
    
    let targetValue: Int
    let color: UIColor
    let alpha: Int
    
    var body: some View {
        VStack {
            Text("Подвиньте слайдер, как можно ближе к: \(targetValue)")
            HStack{
                Text("0")
                CustomSlider(value: $currentValue, alpha: alpha, color: color)
                Text("100")
            }
            .padding()
        }
    }
}

struct GameSlider_Previews: PreviewProvider {
    static var previews: some View {
        GameSlider(currentValue: .constant(50), targetValue: 100, color: .red, alpha: 50)
    }
}
