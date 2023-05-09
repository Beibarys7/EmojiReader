//
//  EmojiTableViewCell.swift
//  EmojiReader
//
//  Created by Beibarys Shagay on 31.03.2023.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!

    func set(object: Emoji) {
        self.emojiLabel.text = object.emoji
        self.titleLabel.text = object.title
        self.descriptionLabel.text = object.description
    }
    
}
