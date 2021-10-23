//
//  ViewController.swift
//  yaulyanenkovPW4
//
//  Created by Ярослав Ульяненков on 23.10.2021.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet weak var notesCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem =
        UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(createNote(sender:)))
    }
    
    @objc func createNote(sender: UIBarButtonItem) {
        guard let vc =
                storyboard?.instantiateViewController(withIdentifier: "NoteViewController") else { return }
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NoteCell", for: indexPath) as! NoteCell
        cell.titleLabel.text = "Yeah"
        cell.descriptionLabel.text = "That's greate"
        
        return cell
    }
    
}

