//
//  SavedData.swift
//  ImagesApp
//
//  Created by Ongar.dev on 13/03/2022.
//  Copyright © 2022 Ongar.dev All rights reserved.
//

import Foundation

class SavedData: NSObject {
    
    private override init() {}
    private static var instance: SavedData?
    
    class var shared: SavedData {
        if instance == nil {
            instance = SavedData()
        }
        return instance!
    }
    
    var photoAlbums = [AlbumModel]()
    
    class func destroy() {
        instance = nil
    }
}
