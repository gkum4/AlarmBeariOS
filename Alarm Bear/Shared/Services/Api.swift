//
//  Api.swift
//  Alarm Bear
//
//  Created by Gustavo Kumasawa on 18/01/22.
//

import Foundation

struct ApiResponseData: Decodable {
    let name: String
    let banana: String
}

final class Api {
    static func getData(callback: @escaping(ApiResponseData) -> Void) {
        let url = URL(string: "http://192.168.15.8:3333/test-get")!

        let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
            if let error = error {
                print("Error with fetching films: \(error)")
                return
            }

            guard let httpResponse = response as? HTTPURLResponse,
                (200...299).contains(httpResponse.statusCode) else {
                    print("Error with the response, unexpected status code: \(response!)")
                return
            }

            if let data = data,
                let filmSummary = try? JSONDecoder().decode(ApiResponseData.self, from: data) {
                callback(filmSummary)
            }
        })
            
        task.resume()
    }
}
