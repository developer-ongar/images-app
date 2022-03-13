//
//  AppDelegate.swift
//  ImagesApp
//
//  Created by Ongar.dev on 13/03/2022.
//  Copyright © 2022 Ongar.dev All rights reserved.
//

import UIKit
    
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        NetworkManager.shared.getData { (photoAlbums) in
            if photoAlbums.count > 0 {
                SavedData.shared.photoAlbums = photoAlbums
                NotificationCenter.default.post(name: .getDataFinished, object: nil)
            }
        }
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        let controller = MainTabBarViewController()
        let navigationVC = UINavigationController(rootViewController: controller)
        window?.rootViewController = navigationVC
        return true
    }
}
