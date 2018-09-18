//
//  AppDelegate.swift
//
//  Created by tskim on 2018. 9. 15..
//  Copyright © 2018년 tskim. All rights reserved.
//

import UIKit
import RealmSwift
import XCGLogger

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
//  #if DEBUG
//  let log = XCGLogger.default
//  #else
//  let log = XCGLogger(identifier: "productLogger", includeDefaultDestinations: false)
//  #endif
  // swiftlint:disable:next line_length
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    printEmulatorInfo()
    initLogger()
//    let config = Realm.Configuration(
//      // Get the URL to the bundled file
//      fileURL: URL(fileURLWithPath: "default.realm", isDirectory: false)
//    )
//    let realm = try? Realm(configuration: config)
    // log with different importance
    
    return true
  }

  func applicationWillResignActive(_ application: UIApplication) {
    // swiftlint:disable:next line_length
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // swiftlint:disable:next line_length
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
  }

  func applicationDidEnterBackground(_ application: UIApplication) {
    // swiftlint:disable:next line_length
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // swiftlint:disable:next line_length
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  }

  func applicationWillEnterForeground(_ application: UIApplication) {
    // swiftlint:disable:next line_length
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
  }

  func applicationDidBecomeActive(_ application: UIApplication) {
    // swiftlint:disable:next line_length
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  }

  func applicationWillTerminate(_ application: UIApplication) {
    // swiftlint:disable:next line_length
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    // Saves changes in the application's managed object context before the application terminates.
  }
}

extension AppDelegate {
  func printEmulatorInfo() {
    print("Library: \(FileManager.default.urls(for: .libraryDirectory, in: .userDomainMask).first!.path)")
    print("Realm: \(Realm.Configuration.defaultConfiguration.fileURL)")
  }
  func initLogger() {
//    #if DEBUG
//    log.setup(level: .debug, showThreadName: true, showLevel: true, showFileNames: true, showLineNumbers: true)
//    #else
//    log.setup(level: .severe, showThreadName: true, showLevel: true, showFileNames: true, showLineNumbers: true)
//    #endif
  }
  func openRealm() {
    let defaultURL = Realm.Configuration.defaultConfiguration.fileURL!
    let replaceRealmURL = Bundle.main.url(forResource: "default", withExtension: "realm")

    if !FileManager.default.fileExists(atPath: defaultURL.absoluteString) {
      do {
        try FileManager.default.copyItem(at: replaceRealmURL!, to: defaultURL)
      } catch let error {
        print("error copying seeds: \(error)")
      }
    }
  }
}
