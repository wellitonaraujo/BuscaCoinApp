//
//  ContentView.swift
//  BuscaCoin
//
//  Created by Welliton da Conceicao de Araujo on 20/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color
                .theme.secondaryText
                .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
