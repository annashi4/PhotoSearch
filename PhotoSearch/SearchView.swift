import UIKit
import PromiseKit

class SearchView: UIViewController, UICollectionViewDataSource, UISearchBarDelegate {
    
    public var collectionView: UICollectionView?
    let searchBar = UISearchBar()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        searchBar.delegate = self
        view.addSubview(searchBar)
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 2
        layout.minimumInteritemSpacing = 1
        layout.itemSize = CGSize(width: view.frame.size.width/2 - 4 , height: view.frame.size.width/2)
        
        let collectionView = UICollectionView(frame: .zero,
                                              collectionViewLayout: layout)
        collectionView.register(ImageCollectionViewCell.self, forCellWithReuseIdentifier: ImageCollectionViewCell.idenifier)
        collectionView.dataSource = self
        view.addSubview(collectionView)
        collectionView.backgroundColor = .systemBackground
        self.collectionView = collectionView
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        searchBar.frame = CGRect(x: 10, y: view.safeAreaInsets.top, width: view.frame.size.width-25, height: 50)
        collectionView?.frame = CGRect(x: 0, y: view.safeAreaInsets.top+55, width: view.frame.size.width, height: view.frame.size.height-55)
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        if let text = searchBar.text {
            results = []
            collectionView?.reloadData()
            fetchPhotos(query: text, complition: self)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return results.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let imageURLString = results[indexPath.row].urls.regular
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ImageCollectionViewCell.idenifier, for: indexPath) as? ImageCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.configure(with: imageURLString)
        return cell
    }
    
    @objc func backButtonPressed() {
        let mainVC = MainView()
        
        dismiss(animated: true, completion: nil)
        navigationController?.pushViewController(mainVC, animated: true)
        }
    
}
