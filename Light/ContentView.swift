//
//  ContentView.swift
//  Light
//
//  Created by Murat Haktanır on 4.07.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack {
                Text("Your light for midnight!")
                    .font(.title)
                    .foregroundColor(isNight ? .black : .white)
            }
            
            // Accessibility
            .accessibilityElement(children: .ignore)
            .accessibility(label: Text("Your light for midnight!"))
            
        }.onTapGesture {
            isNight.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BackgroundView: View {
    @Binding var isNight: Bool
    
    var body: some View {
        Color(isNight ? .white : .black)
            .edgesIgnoringSafeArea(.all)
    }
}
