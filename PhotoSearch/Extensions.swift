
import UIKit

extension UIViewController{
    
    func setConstrains() {
        myStackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        myStackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        myStackView.widthAnchor.constraint(equalToConstant: 360).isActive = true
        myStackView.heightAnchor.constraint(equalToConstant: 120).isActive = true
    }
}
