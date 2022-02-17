//
//  MovieAPI.swift
//  ListaFilme
//
//  Created by Katia Cristina Rodrigues on 16/02/22.
//

import Foundation
import Alamofire

class MovieAPI: NSObject{
    
    static private let key  = "d22bb41e9bd8fe7510e3f1939b2d7171"
    
    static private let url = "https://api.themoviedb.org/3/trending/movie/week?api_key=\(key)&language=pt-BR"

    
   class func MoviesLoad (onComplete: @escaping (Movie?) -> Void){
        
        AF.request(url).responseJSON { (response) in
        guard let data = response.data else { return }
         guard let movieInfo = try? JSONDecoder().decode(Movie.self, from: data)
         else {
             onComplete(nil)
            return
         }
            print(movieInfo.results)
         onComplete(movieInfo)
     }
 }
        
}


    func searchImage (imageMo: String , onComplete: @escaping (UIImage?) -> Void){
        let path = "https://image.tmdb.org/t/p/w500" + imageMo
        AF.request(path).responseImage { response in
            if case .success (let image) = response.result{
                onComplete(image)
            }
        }
}


    
    
    
    
    
    
    
    
    


    
    


