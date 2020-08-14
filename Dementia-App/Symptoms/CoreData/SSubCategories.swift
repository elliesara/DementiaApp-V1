//
//  SSubCategories.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/23/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import Foundation
import CoreData

public class SSubCategories: NSManagedObject, Identifiable {
    @NSManaged public var sCategoryName: String
}

extension SSubCategories {
    static func getSymptomTrackers() -> NSFetchRequest<SSubCategories> {
        let request: NSFetchRequest<SSubCategories> = SSubCategories.fetchRequest() as! NSFetchRequest<SSubCategories>
        
        let sortDescriptor  = NSSortDescriptor(key: "sSubCategory", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }
}
