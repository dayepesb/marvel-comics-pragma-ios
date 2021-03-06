//
//  AppDelegate.swift
//  Marvel Comics Pragma
//
//  Created by David Yepes Buitrago on 2/10/20.
//  Copyright © 2020 David Yepes Buitrago. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        onBoardingDisplay()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        
        
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
        
        
    }

    private func onBoardingDisplay() ->Void {
        
        let onBoarding = UserDefaults.standard.value(forKey: "watchingOnboarding") as? Bool ?? false
        
        var name = "OnBoarding"
        
        if onBoarding {
            name = "SignIn"
        }
        
        let viewController = UIStoryboard(name: name, bundle: Bundle.main).instantiateInitialViewController()
        
        window?.rootViewController = viewController
        
        window?.makeKeyAndVisible()
    }

}

