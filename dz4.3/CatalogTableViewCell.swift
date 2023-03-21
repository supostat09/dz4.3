//
//  CatalogTableViewCell.swift
//  dz4.3
//
//  Created by Абдулла-Бек on 19/3/23.
//

import UIKit

class CatalogTableViewCell: UITableViewCell {

    @IBOutlet weak var catalogImage: UIImageView!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    func configure(image: String, type: String, count: String ) {
        catalogImage.image = UIImage (named: image)
        typeLabel.text = type
        countLabel.text = count
        catalogImage.contentMode = .scaleAspectFill
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
