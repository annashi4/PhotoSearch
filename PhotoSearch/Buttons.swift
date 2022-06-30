import UIKit

let showSearchVCButton: UIButton = {
    let button = UIButton()
    button.configuration = .plain()
    button.tintColor = .black
    button.backgroundColor = .systemBackground
    button.layer.cornerRadius = 15
    button.setTitle("Search for photos", for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    
    
    return button
}()
