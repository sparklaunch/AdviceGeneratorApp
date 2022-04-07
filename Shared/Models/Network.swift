//
//  Network.swift
//  AdviceGeneratorApp (iOS)
//
//  Created by Jinwook Kim on 2022/04/07.
//

import SwiftUI

class Network: ObservableObject {
    @Published var slip: Slip?
    func fetchSlip() -> Void {
        guard let url: URL = URL(string: "https://api.adviceslip.com/advice")
        else {
            fatalError("Failed to connect to the server.")
        }
        let urlRequest: URLRequest = URLRequest(url: url)
        let dataTask: URLSessionDataTask = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            if let error: Error = error {
                fatalError(error.localizedDescription)
            }
            guard let response: HTTPURLResponse = response as? HTTPURLResponse
            else {
                fatalError("Failed to resolve the HTTP URL response.")
            }
            guard response.statusCode == 200
            else {
                fatalError("The server responded with \(response.statusCode).")
            }
            guard let data: Data = data
            else {
                fatalError("Failed to resolve the data.")
            }
            do {
                let decoder: JSONDecoder = JSONDecoder()
                let decodedSlip: Slip = try decoder.decode(Slip.self, from: data)
                self.slip = decodedSlip
            }
            catch let error {
                fatalError(error.localizedDescription)
            }
        }
        dataTask.resume()
    }
}
