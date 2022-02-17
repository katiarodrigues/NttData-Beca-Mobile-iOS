//
//  MovieModel.swift
//  ListaFilme
//
//  Created by Katia Cristina Rodrigues on 15/02/22.


import Foundation


struct Movie: Codable {
    let page: Int
    let results: [Result]
    let totalPages, totalResults: Int
    
    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

struct Result: Codable {
    
    let overview: String
    let poster_path: String
    let title: String
    let vote_average: Double
}

    
    enum CodingKeys: String, CodingKey {
        
        
        case overview = "overview"
        case posterPath = "poster_path"
        case title = "title"
        case voteAverage = "vote_average"
    }






