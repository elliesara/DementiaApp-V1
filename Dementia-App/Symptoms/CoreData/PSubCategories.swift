//
//  PSubCategories.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/22/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import Foundation
import CoreData

public class PSubCategories: NSManagedObject, Identifiable {
    @NSManaged public var pCategoryName: String
}

extension PSubCategories {
    static func getPSubCategoriesEntity() -> NSFetchRequest<PSubCategories> {
        let request: NSFetchRequest<PSubCategories> = PSubCategories.fetchRequest() as! NSFetchRequest<PSubCategories>
        
        let sortDescriptor  = NSSortDescriptor(key: "pSubCategory", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }
}
