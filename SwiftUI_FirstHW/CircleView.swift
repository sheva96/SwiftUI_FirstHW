//
//  CircleView.swift
//  SwiftUI_FirstHW
//
//  Created by Yevhen Shevchenko on 09.12.2020.
//

import SwiftUI

struct CircleView: View {
    
    let color: UIColor
    let opacity: Double
    
    var body: some View {
        Color(color)
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .opacity(opacity)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.darkGray)
                .ignoresSafeArea()
            CircleView(color: .red, opacity: 1)
        }
    }
}
