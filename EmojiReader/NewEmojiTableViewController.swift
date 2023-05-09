//
//  NewEmojiTableViewController.swift
//  EmojiReader
//
//  Created by Beibarys Shagay on 02.04.2023.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {
    @IBOutlet weak var emojiTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var emoji = Emoji(emoji: "", title: "", description: "", isFavourite: false)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        updateSaveButton()
    }
    
    private func updateSaveButton() {
        let emojiText = emojiTextField.text ?? ""
        let nameText = nameTextField.text ?? ""
        let descriptionText = descriptionTextField.text ?? ""
        
        saveButton.isEnabled = !emojiText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty
    }
    
    private func updateUI() {
        emojiTextField.text = emoji.emoji
        nameTextField.text =  emoji.title
        descriptionTextField.text = emoji.description
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        updateSaveButton()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else { return }
        let emoji = emojiTextField.text ?? ""
        let name = nameTextField.text ?? ""
        let description = descriptionTextField.text ?? ""
        
        self.emoji = Emoji(emoji: emoji, title: name, description: description, isFavourite: self.emoji.isFavourite)
    }
    
    
}
