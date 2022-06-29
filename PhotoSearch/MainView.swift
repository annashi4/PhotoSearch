import UIKit

class MainView: UIViewController {
    
    override func viewDidLoad() {
        view.addSubview(myStackView)
        setConstrains()
        
    }
}

let searchButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .black
    button.setTitle("Search for photos", for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    
    return button
}()

let collectionButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .blue
    button.setTitle("Saved photos", for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
}()

let myStackView: UIStackView = {
    let sv = UIStackView()
    
    sv.addArrangedSubview(searchButton)
    sv.addArrangedSubview(collectionButton)
    
    sv.axis = NSLayoutConstraint.Axis.horizontal
    sv.distribution = UIStackView.Distribution.fillEqually
    sv.spacing = 10
    sv.alignment = UIStackView.Alignment.center
    
    sv.translatesAutoresizingMaskIntoConstraints = false
    
    return sv
}()

extension UIViewController{
    
    func setConstrains() {
        myStackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        myStackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        myStackView.widthAnchor.constraint(equalToConstant: 360).isActive = true
        myStackView.heightAnchor.constraint(equalToConstant: 120).isActive = true
    }
}
