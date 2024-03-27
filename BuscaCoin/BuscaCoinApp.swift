//
//  BuscaCoinApp.swift
//  BuscaCoin
//
//  Created by Welliton da Conceicao de Araujo on 20/03/24.
//

import SwiftUI

@main
struct BuscaCoinApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .toolbar(.hidden)
            }
            .environmentObject(vm)
        }
    }
}
