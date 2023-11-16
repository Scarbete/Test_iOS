import UIKit


class ProductDetail: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let product = product {
            imageView.image = UIImage(named: product.image)
            titleLabel.text = product.title
        }
    }
    
}
