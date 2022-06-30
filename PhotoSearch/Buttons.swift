import UIKit

let showSearchVCButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .black
    button.setTitle("Search for photos", for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    
    
    return button
}()

let showSavedPhotosButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .blue
    button.setTitle("Saved photos", for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false

    return button
}()

let myStackView: UIStackView = {
    let sv = UIStackView()
    
    sv.addArrangedSubview(showSearchVCButton)
    sv.addArrangedSubview(showSavedPhotosButton)
    
    sv.isUserInteractionEnabled = true
    
    sv.axis = NSLayoutConstraint.Axis.horizontal
    sv.distribution = UIStackView.Distribution.fillEqually
    sv.spacing = 10
    sv.alignment = UIStackView.Alignment.center
    
    sv.translatesAutoresizingMaskIntoConstraints = false
    
    return sv
}()
