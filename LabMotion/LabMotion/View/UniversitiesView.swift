//
//  UniversitiesView.swift
//  LabMotion
//
//  Created by Garry on 10/02/22.
//

import SwiftUI

struct UniversitiesView: View {
    @ObservedObject var vm = UniversityViewModel.shared
    @ObservedObject var settingsVm = SettingsViewModel.shared
    
    var body: some View {
        NavigationView {
            VStack {
                if vm.isLoading {
                    VStack {
                        Spacer()
                        ProgressView()
                            .progressViewStyle(.circular)
                        Spacer()
                    }
                    
                } else if vm.isError {
                    Text("Uh Oh :(")
                } else {
                    // Identifieable of ID!
                    // MUST BE UNIQUE
                    List(settingsVm.isReversed ? vm.universities.reversed() : vm.universities, id: \.name) { university in
                        NavigationLink {
                            UniversityDetailView(university: university)
                        } label: {
                            Text(university.name)
                        }

                    }
                }
            }
            .navigationTitle(Text("Universities"))
            
        }
        .onAppear {
            if vm.universities.isEmpty {
                vm.getUniversities()
            }
        }
    }
}

struct UniversitiesView_Previews: PreviewProvider {
    static var previews: some View {
        UniversitiesView()
    }
}
