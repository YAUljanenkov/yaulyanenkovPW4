//
//  NoteViewController.swift
//  yaulyanenkovPW4
//
//  Created by Ярослав Ульяненков on 23.10.2021.
//

import UIKit

class NoteViewController : UIViewController {
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    var outputVC: ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem =
        UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(didTapSaveNote(button:)))
    }
    
    @objc func didTapSaveNote(button: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
    }
}
