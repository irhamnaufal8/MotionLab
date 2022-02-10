//
//  ContentView.swift
//  Resto
//
//  Created by Garry on 02/02/22.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = .white
    }
    
    var body: some View {
        VStack {
            
            
            TabView {
                Eksplor()
                    .tabItem {
                        Image(systemName: "safari.fill")
                        Text("Eksplor")

                    }
                
                Riwayat()
                    .tabItem {
                        Image(systemName: "doc.plaintext.fill")
                        Text("Riwayat")
                    }
            }
            .accentColor(Color("ijo"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
