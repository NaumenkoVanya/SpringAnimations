//
//  ViewController.swift
//  SpringAnimations
//
//  Created by Ваня Науменко on 25.11.22.
//

import UIKit
import Hero


class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.heroID = "image"
        imageView.image = UIImage(named: "foto")
    }
    
    @IBAction func imageButtonAction(_ sender: Any) {
        self.performSegue(withIdentifier: "second", sender: self)
    }
}

