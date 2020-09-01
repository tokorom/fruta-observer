//
//  DataLoader.swift
//
//  Created by ToKoRo on 2020-09-01.
//

import Foundation

final class DataLoader {
  init() {}

  func load(url: URL, completion: (Result<Data, Error>) -> Void) {
    let data: Data

    data = Data()
    completion(.success(data))
  }
}
