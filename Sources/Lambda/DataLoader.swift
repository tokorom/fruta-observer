//
//  DataLoader.swift
//
//  Created by ToKoRo on 2020-09-01.
//

import Foundation

final class DataLoader {
  init() {}

  func load(url: URL, completion: @escaping (Result<Data, Error>) -> Void) {
    let task = URLSession.shared.dataTask(with: url) { data, _, error in
      if let error = error {
        completion(.failure(error))
        return
      }
      completion(.success(data ?? Data()))
    }
    task.resume()
  }
}
