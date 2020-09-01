import AWSLambdaRuntime
import Foundation

// swift-format-ignore
let siteURL = URL(string: "https://developer.apple.com/documentation/app_clips/fruta_building_a_feature-rich_app_with_swiftui")!

Lambda.run { (_: Lambda.Context, _: String, callback: @escaping (Result<String, Error>) -> Void) in
  let loader = DataLoader()
  loader.load(url: siteURL) { result in
    switch result {
    case .success(let data):
      let scrapper = Scrapper()
      scrapper.find(from: data) { result in
        switch result {
        case .success(let data):
          let scrapper = Scrapper()
          scrapper.find(from: data) { result in
          }
        case .failure(let error):
          callback(.failure(error))
        }
      }
    case .failure(let error):
      callback(.failure(error))
    }
  }
}
