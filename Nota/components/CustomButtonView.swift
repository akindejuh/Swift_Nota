//
//  CustomButtonView.swift
//  Nota
//
//  Created by Oluwagbemiga Akindeju on 05/07/2025.
//

import SwiftUI

struct CustomButtonView: View {
    let label: String;
    let action: () -> Void;
    let background_color: Color;
    
    init(
        label: String,
        action: @escaping () -> Void = {},
        background_color: Color = .blue
    ) {
        self.label = label
        self.action = action
        self.background_color = background_color
    }

    
    var body: some View {
        Button(action: action, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background_color)
                
                Text(label)
                    .foregroundColor(Color.white)
                    .font(.system(size: 15))
                    .bold(true)
            }
        })
        .frame(height: 50)
    }
}
