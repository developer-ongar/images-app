import Foundation

class PhotoModel {
    
    let id: Int!
    let title: String!
    let thumbnailUrl: String!
    let url: String!
    
    init(id: Int, title: String, thumbnailUrl: String, url: String) {
        self.id = id
        self.title = title
        self.thumbnailUrl = thumbnailUrl
        self.url = url
    }
}
