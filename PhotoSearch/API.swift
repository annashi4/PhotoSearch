import UIKit

struct APIResponse: Codable {
    let total: Int
    let total_pages: Int
    let results: [Results]
}

struct Results: Codable {
    let id: String
    let urls: URLS
}

struct URLS: Codable {
    let regular: String
}

var results: [Results] = []


func fetchPhotos(query: String, complition: SeatchViewController) {
    let url: String = "https://api.unsplash.com/search/photos?page=1&per_page=50&query=\(query)&client_id=lMWX_l3h0M2_t0BNhysonSouKZ3z232UP7LoG7sArnw".replacingOccurrences(of: " ", with: "-")
    
    guard let url =  URL(string: url) else { return }
    weak var task = URLSession.shared.dataTask(with: url) {  data, _, error in
        guard let data = data, error == nil else { return }
        
        do{
            let jsonResult = try JSONDecoder().decode(APIResponse.self, from: data)
            DispatchQueue.main.async {
                results = jsonResult.results
                complition.collectionView?.reloadData()
            }
        }catch{
            print(error)
        }
    }
    task?.resume()
    
}
