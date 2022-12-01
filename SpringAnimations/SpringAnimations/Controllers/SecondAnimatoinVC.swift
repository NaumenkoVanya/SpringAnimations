//
//  SecondAnimatoinVC.swift
//  SpringAnimations
//
//  Created by Ваня Науменко on 29.11.22.
//

import UIKit
import Hero

class SecondAnimatoinVC: UIViewController {

    @IBOutlet weak var secondImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        secondImage.heroID = "image"
        secondImage.image = UIImage(named: "foto")
    }


    @IBAction func buttonAction(_ sender: Any) {
        hero.dismissViewController()
    }
    @IBAction func handlePan(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: nil)
        let progress = translation.y / 2 / view.bounds.height
        switch sender.state {
        case .began:
            hero.dismissViewController()
        case .changed:
            Hero.shared.update(progress)
            let currenPosition = CGPoint(x: translation.x + secondImage.center.x, y: translation.y + translation.y + secondImage.center.y)
            Hero.shared.apply(modifiers:[.position(currenPosition)], to: secondImage)
        default:
            Hero.shared.finish()
//            if progress > 0.1 {
//                Hero.shared.finish()
//            } else {
//                Hero.shared.cancel()
//            }
        }
    }
}
