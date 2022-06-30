import UIKit

class MainView: UIViewController {
    
    override func viewDidLoad() {
        
        view.addSubview(myStackView)
        setConstrains()
    
        showSearchVCButton.addTarget(self, action: #selector (showSearchView), for: .touchUpInside)
        showSavedPhotosButton.addTarget(self, action:  #selector (showSavedPhotosView), for: .touchUpInside)
    }
        
    @objc func showSearchView() {
        let searchVC = SearchView()
        self.present(searchVC, animated: true)
    }

    @objc func showSavedPhotosView(){
        let savedPhoto = SavedPhotosView()
        
        self.present(savedPhoto, animated: true)
    }
}
