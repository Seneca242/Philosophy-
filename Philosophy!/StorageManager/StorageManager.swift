//
//  StorageManager.swift
//  Philosophy!
//
//  Created by Дмитрий Дмитрий on 16.05.2023.
//

import CoreData

class StorageManager {
    static let shared = StorageManager()
    
    private var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Philosophy")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    let viewContext: NSManagedObjectContext
    
    private init() {
        viewContext = persistentContainer.viewContext
    }
    
    func movements() -> [MovementNew] {
        let request: NSFetchRequest<MovementNew> = MovementNew.fetchRequest()
        var fetchedMovements: [MovementNew] = []
        
        do {
            fetchedMovements = try persistentContainer.viewContext.fetch(request)
        } catch let error {
            print("Error fetching singers \(error)")
        }
        return fetchedMovements
    }
    
    func movementPhilosophers(movement: MovementNew) -> [PhilosopherNew] {
        let request: NSFetchRequest<PhilosopherNew> = PhilosopherNew.fetchRequest()
        request.predicate = NSPredicate(format: "movement = %@", movement)
        request.sortDescriptors = [NSSortDescriptor(key: "releaseDate", ascending: false)]
        var fetchedPhilosophers: [PhilosopherNew] = []
        
        do {
            fetchedPhilosophers = try persistentContainer.viewContext.fetch(request)
        } catch let error {
            print("Error fetching songs \(error)")
        }
        return fetchedPhilosophers
    }
    
    func savePhilosophersIntoCoreData() {
        let fetchRequest: NSFetchRequest<PhilosopherNew> = PhilosopherNew.fetchRequest()
        
        var records = 0
        
        let philosophers = Philosopher.getPhilosopher()
        let context = viewContext
        
        do {
            let count = try context.count(for: fetchRequest)
            records = count
            print("Is Data there already?")
        } catch {
            print(error.localizedDescription)
        }
        
        guard records == 0 else { return }
        
        for philosopher in philosophers {
            let entity = NSEntityDescription.entity(forEntityName: "PhilosopherNew", in: context)
            let philosopherModel = NSManagedObject(entity: entity!, insertInto: context) as! PhilosopherNew
            
            philosopherModel.name = philosopher.name
            philosopherModel.biography = philosopher.biography
            philosopherModel.doctrine = philosopher.doctrine
            philosopherModel.philosopherImage = philosopher.philosopherImage
            saveContext()
        }
    }
    
    func saveMovementsIntoCoreData() {
        let fetchRequest: NSFetchRequest<MovementNew> = MovementNew.fetchRequest()
        
        var records = 0
        
        let movements = Movement.getMovement()
        let context = viewContext
        
        do {
            let count = try context.count(for: fetchRequest)
            records = count
            print("Is Data there already?")
        } catch {
            print(error.localizedDescription)
        }
        
        guard records == 0 else { return }
        
        for movement in movements {
            let entity = NSEntityDescription.entity(forEntityName: "MovementNew", in: context)
            let movementModel = NSManagedObject(entity: entity!, insertInto: context) as! MovementNew
            
            movementModel.title = movement.title
            movementModel.movementDescription = movement.description
//            movementModel.philosophers = movement.philosopher
//            movementModel.schools = movement.school
            saveContext()
        }
    }
    
    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}


