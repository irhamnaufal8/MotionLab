//
//  ContentView.swift
//  LabMotion
//
//  Created by Garry on 03/02/22.
//

import SwiftUI

enum TabSelection {
    case universities
    case lastSeen
    case settings
}

struct ContentView: View {
    
    
    var body: some View {
        TabView {
            UniversitiesView()
                .tabItem {
                    Text("Universities")
                }
                .tag(TabSelection.universities)
            
            LastSeenView()
                .tabItem {
                    Text("Last Seen")
                }
                .tag(TabSelection.lastSeen)
            
            SettingsView()
                .tabItem {
                    Text("Settings")
                }
                .tag(TabSelection.settings)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
