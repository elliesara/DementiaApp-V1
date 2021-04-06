//
//  CoreDataManager.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/22/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import Foundation
import CoreData

final class CoreDataManager {
    
    static let shared = CoreDataManager()
    
    public lazy var symptomContext = persistentContainer.viewContext
    
    private lazy var persistentContainer: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "Dementia-App")
        
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    
    func saveContext () {
        let context = persistentContainer.viewContext
        print("<< Inside saveContext >>")
        if context.hasChanges {
            do {
                try context.save()
                print("<< Saved successfully! >>")
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    /// A generic delete function for any managed object entity
    func deleteAllObjects<T: NSManagedObject>(_ objectType : T.Type) -> Void {
        
        let genericEntityName = String(describing: objectType)
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: genericEntityName)
        
        let result = try? symptomContext.fetch(fetchRequest)
        let resultData = result as! [T]
        
        for object in resultData {
            symptomContext.delete(object)
        }
        
        do {
            try symptomContext.save()
            print("Deleted \(String(describing: [T].self))!")
        } catch let error as NSError  {
            print("Could not save \(error), \(error.userInfo)")
        }
        
    }
    
    /// prints where Core Data database is located on local disk
    func whereIsMySQLite() {
        let path = FileManager
            .default
            .urls(for: .applicationSupportDirectory, in: .userDomainMask)
            .last?
            .absoluteString
            .replacingOccurrences(of: "file://", with: "")
            .removingPercentEncoding
        print(path ?? "Not found")
    }
    
}


