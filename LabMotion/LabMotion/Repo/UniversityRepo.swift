//
//  UniversityRepo.swift
//  LabMotion
//
//  Created by Garry on 03/02/22.
//

import Foundation

class UniversityRepo {
    // Singleton
    // Untuk membuat objek hanya sekali pada saat runtime
    static let shared = UniversityRepo()
    
    // Base URL API
    let baseURl = "http://universities.hipolabs.com"
    
    func getIndonesianUniversities() -> URL {
        let path = "/search"
        let query = "?country=Indonesia"
        
        // Approach 1
        // Keyword guard let untuk menjaga value optional
//        guard let url = URL(string: baseURl+path+query) else {
//            return
//        }
        
        
        
        // Approach 2
        // ! (bang) untuk unwrap optional value
        // ?? (optional value)
        
        // lebih baik pake guard let supaya app nya tidak crash karena ditakutkan URL nya kosong
        let url = URL(string: baseURl+path+query)!
        
        return url
    }
}
