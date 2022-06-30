import UIKit

class MainView: UIViewController {
    
    override func viewDidLoad() {
        
        view.addSubview(showSearchVCButton)
        setConstrains()
    
        showSearchVCButton.addTarget(self, action: #selector (showSearchView), for: .touchUpInside)
    }
        
    @objc func showSearchView() {
        let searchVC = SearchView()
        self.present(searchVC, animated: true)
    }
}
