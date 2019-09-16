//
//  ViewController.swift
//  FlashCardApp
//
//  Created by Ashley Raigosa on 9/8/19.
//  Copyright © 2019 Ashley Raigosa. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    let realm = try! Realm()
    var flashcardArray: Results<Flashcard>?
    let imagePicker = UIImagePickerController()
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .photoLibrary
    }
    
    //MARK:- TableView Methods
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = super.tableView(tableView, cellForRowAt: indexPath)
        
        if let flashcard = flashcardArray?[indexPath.row] {
            cell.textLabel?.text = flashcard.term
        }
        return cell
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return flashcardArray?.count ?? 1
    }
    
    //MARK:- Image Picker Methods
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let userPickedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {

            
        }
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func copyNotes(_ sender: Any) {
        present(imagePicker, animated: true, completion: nil)
        
        
    }
    
}

