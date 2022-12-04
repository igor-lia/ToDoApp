//
//  File.swift
//  ToDoApp
//
//  Created by Ігор Ляхович on 04.12.2022.
//

import Foundation

protocol URLSessionProtocol {
    func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask
}

extension URLSession: URLSessionProtocol {}

class APIClient {
    lazy var urlSession: URLSessionProtocol = URLSession.shared
    
    func login(withName: String, password: String, completionHandler: @escaping (String?, Error?) -> ()) {
        guard let url = URL(string: "https://todoapp.com/login") else { fatalError() }
        
        urlSession.dataTask(with: url) { data, response, error in
            
        }.resume()
    }
    
   
}
