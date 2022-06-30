
import UIKit

extension UIViewController{
    
    func setConstrains() {
        showSearchVCButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        showSearchVCButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        showSearchVCButton.widthAnchor.constraint(equalToConstant: 360).isActive = true
        showSearchVCButton.heightAnchor.constraint(equalToConstant: 120).isActive = true
    }
}
