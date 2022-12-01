//
//  FotoCell.swift
//  SpringAnimations
//
//  Created by Ваня Науменко on 1.12.22.
//

import UIKit

class FotoCell: UICollectionViewCell {

    @IBOutlet weak var fotoImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setupCell(foto:FotoStructura) {
        self.fotoImage.image = foto.image
    }
}
