//
//  ContentView.swift
//  SwiftUI_FirstHW
//
//  Created by Yevhen Shevchenko on 09.12.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State private var titleButton = "START"
    @State private var currentColor = UIColor.red
    
    @State private var redViewValue = 0.4
    @State private var yellowViewValue = 0.4
    @State private var greenViewValue = 0.4
    
    private let turnOn = 1.0
    private let turnOff = 0.4
    
    var body: some View {
        
        ZStack {
            Color(.darkGray)
                .ignoresSafeArea()
            VStack {
                VStack(spacing: 20.0) {
                    CircleView(color: .red).opacity(redViewValue)
                    CircleView(color: .yellow).opacity(yellowViewValue)
                    CircleView(color: .green).opacity(greenViewValue)
                }
                Spacer()
                Button(action: { updateUI() }) {
                    ButtonView(title: titleButton)
                }
            }
            .padding(.top, 20)
            .padding(.bottom, 20)
            
        }
    }
    
    private func updateUI() {
        
        titleButton = "NEXT"
        
        switch currentColor {
        case .red:
            greenViewValue = turnOff
            redViewValue = turnOn
            currentColor = .yellow
        case .yellow:
            redViewValue = turnOff
            yellowViewValue = turnOn
            currentColor = .green
        default:
            yellowViewValue = turnOff
            greenViewValue = turnOn
            currentColor = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
