//
//  UniversityService.swift
//  LabMotion
//
//  Created by Garry on 03/02/22.
//

import Foundation
import Alamofire
// library networking, membuat networking lebih beautiful dan simple
// saran: gunakan moya

class UniversityService {
    static let shared = UniversityService()
    let repo = UniversityRepo.shared
    
    func fetchUniversity(completion: @escaping ((Result<Universities, AFError>) -> Void)) {
        AF.request(repo.getIndonesianUniversities())
            .validate()
            .responseDecodable(of: Universities.self) { response in
                completion(response.result)
            }
    }
}
