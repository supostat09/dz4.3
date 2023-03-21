//
//  SecondViewController.swift
//  dz4.3
//
//  Created by Абдулла-Бек on 19/3/23.
//

import UIKit

class SecondViewController: UIViewController {

    var catalogDetail: Product?
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productroomType: UILabel!
    @IBOutlet weak var productcolor: UILabel!
    @IBOutlet weak var productmaterial: UILabel!
    @IBOutlet weak var productdimensions: UILabel!
    @IBOutlet weak var productweight: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        if let product = catalogDetail {
            productName.text = product.details.name
            productPrice.text = product.details.price
            productroomType.text = product.details.roomType
            productcolor.text = product.details.color
            productmaterial.text = product.details.material
            productdimensions.text = product.details.dimensions
            productweight.text = product.details.weight
            productImage.image = UIImage(named: product.details.image2)
        }
    }

}



//func configure2(image: String, name: String, price: String, roomType: String, color: String, material: String, dimensions: String, weight: String) {
//    productImage.image = UIImage(named: image)
//    productName.text = name
//    productPrice.text = price
//    productroomType.text = roomType
//    productcolor.text = color
//    productmaterial.text = material
//    productdimensions.text = dimensions
//    productweight.text = weight
//}
