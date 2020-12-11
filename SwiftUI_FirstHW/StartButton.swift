//
//  ButtonView.swift
//  SwiftUI_FirstHW
//
//  Created by Yevhen Shevchenko on 10.12.2020.
//

import SwiftUI

struct StartButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            Text(title)
                .frame(width: 100, height: 50)
                .font(.custom("Futura", size: 30))
                .padding()
                .foregroundColor(Color.white)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .overlay(RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.white, lineWidth: 5))
        })
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.darkGray)
                .ignoresSafeArea()
            StartButton(title: "START", action: {
                
            })
        }
        
    }
}
