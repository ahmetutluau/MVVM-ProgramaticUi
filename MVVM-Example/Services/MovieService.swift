//
//  MovieService.swift
//  MVVM-Example
//
//  Created by MAC on 15.10.2022.
//

import Foundation

class MovieService {
    
    func downloadMovies(page: Int, completion: @escaping(([MovieResult]?) -> ())) {
        guard let url = URL(string: APIURLs.movies(page: page)) else {
            return
        }
        NetworkManager.shared.download(url: url) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let data):
                completion(self.handleWithData(data))
            case .failure(let error):
                self.handleWithError(error)
            }
        }
    }
    
    func downloadDetail(id: Int, completion: @escaping((MovieResult?) -> ())) {
        guard let url = URL(string: APIURLs.detail(id: id)) else {
            return
        }
        NetworkManager.shared.download(url: url) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let data):
                completion(self.handleWithData(data))
            case .failure(let error):
                self.handleWithError(error)
            }
        }
    }
    
    func handleWithData(_ data: Data) -> [MovieResult]? {
        do {
            let response = try JSONDecoder().decode(Movie.self, from: data)
            return response.results
        } catch  {
            print(error)
            return nil
        }
    }
    
    func handleWithError(_ error: Error) {
        print(error.localizedDescription)
    }
    
    func handleWithData(_ data: Data) -> MovieResult? {
        do {
            let response = try JSONDecoder().decode(MovieResult.self, from: data)
            return response
        } catch  {
            print(error)
            return nil
        }
    }
}
