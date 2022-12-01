//
//  CollectionVC.swift
//  SpringAnimations
//
//  Created by Ваня Науменко on 1.12.22.
//

import UIKit

class CollectionVC: UIViewController {

    @IBOutlet weak var colletionView: UICollectionView!
     
    var foto:Foto = Foto()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.colletionView.register(UINib(nibName: "FotoCell", bundle: nil), forCellWithReuseIdentifier: "FotoCell")
        self.colletionView.dataSource = self
    }
}
extension CollectionVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foto.fotos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FotoCell", for: indexPath) as! FotoCell
        let fotos = foto.fotos[indexPath.item]
        cell.setupCell(foto: fotos)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
