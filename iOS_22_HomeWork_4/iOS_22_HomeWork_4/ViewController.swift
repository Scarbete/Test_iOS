import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var searchView: UIView!
    
    @IBOutlet weak var searchTF: UITextField!
    
    @IBOutlet weak var productOne: UIView!
    
    @IBOutlet var titleOneLabel: [UILabel]!
    
    @IBOutlet var imagesImageView: [UIImageView]!
    
    @IBOutlet weak var productTwo: UIView!
    
    @IBOutlet weak var productThree: UIView!
    
    @IBOutlet weak var productFour: UIView!
    
    @IBOutlet weak var productFive: UIView!
    
    @IBOutlet weak var productSix: UIView!
    
    let products: [Product] = [
        .init(title: "Frash Fruits & Vegetable", image: "product1"),
        .init(title: "Cooking Oil & Ghee", image: "product2"),
        .init(title: "Meat & Fish", image: "product3"),
        .init(title: "Bakery & Snacks", image: "product4"),
        .init(title: "Dairy & Eggs", image: "product5"),
        .init(title: "Beverages", image: "product6")
    ]
    
    var labels: [UILabel]?
    var images: [UIImageView]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        searchView.layer.cornerRadius = 8
        
        productOne.layer.cornerRadius = 8
        productOne.layer.borderColor = #colorLiteral(red: 0.3848803043, green: 0.7366343737, blue: 0.5329580903, alpha: 1)
        productOne.layer.borderWidth = 1
        
    }
    
    @IBAction func buttonOne(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ProductDetail") as! ProductDetail
        var product: Product = Product(title: "", image: "")
        
        switch sender.tag {
        case 0:
            product = Product(title: "\(products[0].title)", image: "\(products[0].image)")
        case 1:
            product = Product(title: "\(products[1].title)", image: "\(products[1].image)")
        case 2:
            product = Product(title: "\(products[2].title)", image: "\(products[2].image)")
        case 3:
            product = Product(title: "\(products[3].title)", image: "\(products[3].image)")
        case 4:
            product = Product(title: "\(products[4].title)", image: "\(products[4].image)")
        case 5
            product = Product(title: "\(products[5].title)", image: "\(products[5].image)")
        default:
            break
        }
        vc.product = product
        navigationController?.pushViewController(vc, animated: true)
    }
    private func setup() {
        setupView()
       // setupData()
    }
    
    private func setupView() {
        //images?.append(imageOneimageView)
    }
    
    private func setupData() {
        titleOneLabel[0].text = "Frash Fruits & Vegetable"
        titleOneLabel[1].text = "Frash Fruits & Vegetable"
//        for (index, value) in products.enumerated() {
//            switch index {
//            case 0:
//                titleOneLabel[index].text = value.title
//                imagesImageView[index].image = UIImage(named: value.image)
//            case 1:
//                titleOneLabel[index].text = value.title
//                imagesImageView[index].image = UIImage(named: value.image)
//            default:
//                break
//            }
//        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
}

struct Product {
    let title: String
    let image: String
}
