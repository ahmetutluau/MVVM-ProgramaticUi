//
//  APIURLs.swift
//  MVVM-Example
//
//  Created by MAC on 15.10.2022.
//

import Foundation

enum APIURLs {
    
    static func movies(page: Int) -> String {
        "https://api.themoviedb.org/3/movie/popular?api_key=d01c48435a43627d2ac87bf0d9e756ee&language=en-US&page=\(page)"
    }
    
    static func imageURL(posterPath: String) -> String {
        "https://image.tmdb.org/t/p/w500\(posterPath)"
    }
    
    static func detail(id: Int) -> String {
        "https://api.themoviedb.org/3/movie/\(id)?api_key=d01c48435a43627d2ac87bf0d9e756ee&language=en-US"
    }
}
