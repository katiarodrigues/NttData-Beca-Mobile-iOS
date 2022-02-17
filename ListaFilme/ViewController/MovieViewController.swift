//
//  MovieViewController.swift
//  ListaFilme
//
//  Created by Katia Cristina Rodrigues on 17/02/22.
//

import UIKit

class MovieViewController: UIViewController{
    
    @IBOutlet weak var imagem: UIImageView!
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var descricao: UILabel!
    @IBOutlet weak var overview: UILabel!
    
    var movie: Result?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (movie?.posterPath) != nil{
            //imagem.loadImage(imgpath: path)
        }
        
        if movie?.title == nil{
            guard let nome = movie?.name else{return}
            nome.self
        }else{
            guard let nome = movie?.title else{return}
            nome.self
        }
        
        descricao.text = movie?.overview
        
    }
}

    

