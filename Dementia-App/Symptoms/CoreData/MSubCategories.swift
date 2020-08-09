//
//  MSubCategories.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/23/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import Foundation
import CoreData

public class MSubCategories: NSManagedObject, Identifiable {
    @NSManaged public var mCategoryName: String
}

extension MSubCategories {
    static func getSymptomTrackers() -> NSFetchRequest<MSubCategories> {
        let request: NSFetchRequest<MSubCategories> = MSubCategories.fetchRequest() as! NSFetchRequest<MSubCategories>
        
        let sortDescriptor  = NSSortDescriptor(key: "mSubCategory", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }
}
