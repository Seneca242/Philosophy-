//
//  AppDelegate.swift
//  Philosophy!
//
//  Created by Дмитрий Дмитрий on 10.04.2023.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    private let storageManager = StorageManager.shared

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        UITabBar.appearance().unselectedItemTintColor = .black
        
        let fetchRequest: NSFetchRequest<PhilosopherNew> = PhilosopherNew.fetchRequest()
        
        var records = 0
        
        let philosophers = Philosopher.getPhilosopher()
        let context = storageManager.viewContext
        
        do {
            let count = try context.count(for: fetchRequest)
            records = count
            print("Is Data there already?")
        } catch {
            print(error.localizedDescription)
        }
        
        guard records == 0 else { return true }
        
        for philosopher in philosophers {
            let entity = NSEntityDescription.entity(forEntityName: "PhilosopherNew", in: context)
            let philosopherModel = NSManagedObject(entity: entity!, insertInto: context) as! PhilosopherNew
            
            philosopherModel.name = philosopher.name
            philosopherModel.biography = philosopher.biography
            philosopherModel.doctrine = philosopher.doctrine
            philosopherModel.philosopherImage = philosopher.philosopherImage
            storageManager.saveContext()
        }
        
        return true
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        StorageManager.shared.saveContext()
    }

}

