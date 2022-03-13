import Foundation

class AlbumModel {
    
    let albumId: Int!
    let photos: [PhotoModel]!
    
    init(albumId: Int, photos: [PhotoModel]) {
        self.albumId = albumId
        self.photos = photos
    }
}
