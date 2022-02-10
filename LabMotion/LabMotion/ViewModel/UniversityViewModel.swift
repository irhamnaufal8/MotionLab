//
//  UniversityViewModel.swift
//  LabMotion
//
//  Created by Garry on 03/02/22.
//

import Foundation

// Menurut buku uncle bob, lebih baik pake final class
final class UniversityViewModel: ObservableObject { // Observable supaya si view bisa nge subscribe variable di class ini
    // Singleton
    static let shared = UniversityViewModel()
    let service = UniversityService.shared
    
    // Data
    @Published var universities: Universities = []
    
    // State
    @Published var isLoading: Bool = false
    @Published var isError: Bool = false
    
    func getUniversities() {
        self.isLoading = true
        
        service.fetchUniversity { result in
            switch (result) {
            case .success(let data):
                // The call succeed
                DispatchQueue.main.async { // DispatchQueue untuk memindahkan Published variable ke main treat. kalau skrg sudah diganti dengan async await.
                    self.isLoading = false
                    self.universities = data
                }
                
            case .failure(let error):
                // You can handle error here...
                DispatchQueue.main.async {
                    self.isLoading = false
                }
            }
        }
    }
    
}
