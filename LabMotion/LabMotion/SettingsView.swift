//
//  SettingsView.swift
//  LabMotion
//
//  Created by Garry on 10/02/22.
//

import SwiftUI

struct SettingsView: View {
    // View Model
    @ObservedObject var vm = SettingsViewModel.shared
    
    var body: some View {
        NavigationView {
            List {
                Toggle("Reverse order", isOn: $vm.isReversed)
            }.navigationTitle(Text("Settings"))
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
