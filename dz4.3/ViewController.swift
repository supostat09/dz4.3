//
//  ViewController.swift
//  dz4.3
//
//  Created by Абдулла-Бек on 19/3/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var catalogTableView: UITableView!
   private var catalogList: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        catalogTableView.dataSource = self
        catalogTableView.delegate = self
        initData()
    }
   private func initData() {
        catalogList = [Product(id: 0, type: "Furniture", count: "785", image: "icon1",
                               details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                                       image2: "pr_icon",
                                                       roomType: "Office, Living Room",
                                                       color: "Yellow",
                                                       material: "Textile, Velvet, Cotton",
                                                       dimensions: "25.6 * 31.5 * 37.4 inches",
                                                       weight: "20.3 Pounds",
                                                       star: 5,
                                                       price: "230 $") ),
                       Product(id: 0, type: "Kitchen Ware", count: "725", image: "icon2",
                               details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                                       image2: "pr_icon",
                                                       roomType: "Office, Living Room",
                                                       color: "Yellow",
                                                       material: "Textile, Velvet, Cotton",
                                                       dimensions: "25.6 * 31.5 * 37.4 inches",
                                                       weight: "20.3 Pounds",
                                                       star: 5,
                                                       price: "230 $") ),
                       Product(id: 0, type: "Reading Table", count: "751", image: "icon3",
                               details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                                       image2: "pr_icon",
                                                       roomType: "Office, Living Room",
                                                       color: "Yellow",
                                                       material: "Textile, Velvet, Cotton",
                                                       dimensions: "25.6 * 31.5 * 37.4 inches",
                                                       weight: "20.3 Pounds",
                                                       star: 5,
                                                       price: "230 $") ),
                       Product(id: 0, type: "Kitchen", count: "251", image: "icon4",
                               details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                                       image2: "pr_icon",
                                                       roomType: "Office, Living Room",
                                                       color: "Yellow",
                                                       material: "Textile, Velvet, Cotton",
                                                       dimensions: "25.6 * 31.5 * 37.4 inches",
                                                       weight: "20.3 Pounds",
                                                       star: 5,
                                                       price: "230 $") ),
                       Product(id: 0, type: "Kitchen Red", count: "321", image: "icon5",
                               details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                                       image2: "pr_icon",
                                                       roomType: "Office, Living Room",
                                                       color: "Yellow",
                                                       material: "Textile, Velvet, Cotton",
                                                       dimensions: "25.6 * 31.5 * 37.4 inches",
                                                       weight: "20.3 Pounds",
                                                       star: 5,
                                                       price: "230 $") )
        ]
        
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        catalogList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        as! CatalogTableViewCell
        cell.configure(image: catalogList[indexPath.row].image,
                       type: catalogList[indexPath.row].type,
                       count: catalogList[indexPath.row].count)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = SecondViewController()
        vc.catalogDetail = catalogList[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
struct Product {
    let id: Int
    let type: String
    let count: String
    let image: String
    let details: ProductDetails
}
struct ProductDetails {
    let name: String
    let image2: String
    let roomType: String
    let color: String
    let material: String
    let dimensions: String
    let weight: String
    let star: Int
    let price: String
}


//configure2(image: catalogList[indexPath.row].details.image2,
//              name: catalogList[indexPath.row].details.name,
//              price: catalogList[indexPath.row].details.price,
//              roomType: catalogList[indexPath.row].details.roomType,
//              color: catalogList[indexPath.row].details.color,
//              material: catalogList[indexPath.row].details.material,
//              dimensions: catalogList[indexPath.row].details.dimensions,
//              weight: catalogList[indexPath.row].details.weight)
