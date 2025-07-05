//
//  header.swift
//  Nota
//
//  Created by Oluwagbemiga Akindeju on 05/07/2025.
//

import SwiftUI

struct HeaderView: View {
    let title: String;
    let sub_title: String;
    let background_color: Color;
    let rotation_angle: Double;
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background_color)
                .frame(width: UIScreen.main.bounds.width * 3, height: 350)
                .rotationEffect(Angle(degrees: rotation_angle))
            
            VStack {
                Text(title)
                    .foregroundColor(Color.white)
                    .bold(true)
                    .font(.system(size: 50))
                
                Text(sub_title)
                    .foregroundColor(Color.white)
                    .font(.system(size: 20))
                    .italic(true)
            }
            .padding(.top, 100)
        }
        .offset(y: -150)
    }
}
