//
//  UniversityDetailView.swift
//  LabMotion
//
//  Created by Garry on 10/02/22.
//

import SwiftUI

struct UniversityDetailView: View {
    @Environment(\.managedObjectContext) private var viewContext
    var university: University
    
    var body: some View {
        VStack {
            Spacer()
            
            Text(university.name)
            
            Spacer()
        }
        .onAppear {
            let newUni = UniversityModel(context: viewContext)
            
            newUni.name = university.name
            newUni.country = university.country
            
            do {
                try viewContext.save()
            } catch {
                let nsError = error as NSError
                debugPrint(nsError)
            }
        }
    }
}

struct UniversityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UniversityDetailView(university: University(name: "Test", country: "ID"))
    }
}
