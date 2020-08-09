//
//  CDManager.swift
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

        let container = NSPersistentContainer(name: "SymptomDataCollector")

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
        if context.hasChanges {
            do {
                try context.save()
                print("save successful")
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

}


