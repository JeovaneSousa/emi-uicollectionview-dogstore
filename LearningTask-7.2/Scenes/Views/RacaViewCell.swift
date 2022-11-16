//
//  RacaCollectionViewCell.swift
//  LearningTask-7.2
//
//  Created by jeovane.barbosa on 15/11/22.
//

import Foundation
import UIKit

class RacaViewCell: UICollectionViewCell {
    
    
    @IBOutlet private weak var dogImageView: UIImageView!
    @IBOutlet private weak var nomeLabel: UILabel!
    
    var nome: String? {
        didSet{
            guard let nome = nome else{return}
            dogImageView.image = UIImage.init(named: nome)
            nomeLabel.text = nome
        }
    }
    


    override func layoutSubviews() {
        super.layoutSubviews()
        
        guard let dogImageView = dogImageView else{return}
        dogImageView.layer.masksToBounds = true
        dogImageView.layer.cornerRadius = contentView.bounds.width / 2
    }
    

    
}
