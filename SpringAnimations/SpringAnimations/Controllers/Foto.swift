//
//  Foto.swift
//  SpringAnimations
//
//  Created by Ваня Науменко on 1.12.22.
//

import Foundation
import UIKit

struct FotoStructura {
    var name: String
    var data: Float
    var image: UIImage
}
class Foto {
    var fotos = [FotoStructura]()
    init() {
        setup()
    }
    func setup(){
        let foto1 = FotoStructura(name: "fotoOne", data: 100, image: UIImage(named: "fotoOne")!)
        let foto2 = FotoStructura(name: "fotoTwo", data: 200, image: UIImage(named: "fotoTwo")!)
        let foto3 = FotoStructura(name: "foto", data: 300, image: UIImage(named: "foto")!)
        self.fotos = [foto1,foto2,foto3]

    }
}

