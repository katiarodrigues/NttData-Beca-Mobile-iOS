//
//  MovieModel.swift
//  ListaFilme
//
//  Created by Katia Cristina Rodrigues on 15/02/22.


import UIKit
import Foundation

class MovieModel: Codable {
   
    var id: Int?
    var originalLanguage: String?
    var originalTitle: String?
    var overview: String?
    var popularity: Double?
    var posterPath: String?
    var title: String?
    var voteAverage: Double?
    
   init (
        
          id: Int?,
          originalLanguage: String?,
          originalTitle: String?,
          overview: String?,
          popularity: Double?,
          posterPath: String?,
          title: String?,
          voteAverage: Double?){
         
        self.id = id
        self.originalLanguage = originalLanguage
        self.originalTitle = originalTitle
        self.overview = overview
        self.popularity = popularity
        self.posterPath = posterPath
        self.title = title
        self.voteAverage = voteAverage
        
    }
    
        
    enum CodingKeys: String, CodingKey{
       
        case id = "id"
        case originalLanguage = "original_language"
        case originalTitle = "original_titulo"
        case overview = "overview"
        case popularity = "popularity"
        case posterPath = "poster_path"
        case title = "title"
        case voteAverage = "vote_average"
       
    }
}


