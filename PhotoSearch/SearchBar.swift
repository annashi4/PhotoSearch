import UIKit

class SearchBar: UISearchBar {
    
//    var viewController: ViewController
    
//    let searchBar = UISearchBar()

   public func searchBarSearchButtonClicked(_ searchBar: UISearchBar, _ vc: ViewController) {
        searchBar.resignFirstResponder()
        if let text = searchBar.text {
            results = []
            vc.collectionView?.reloadData()
            fetchPhotos(query: text, complition: vc)
        }
    }
}
