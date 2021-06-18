//
//  SSymptomEntity.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/23/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import Foundation
import CoreData

public class SSymptomEntity: NSManagedObject, Identifiable {
    @NSManaged public var sCheckedState: Bool
    @NSManaged public var sCreatedAt: Date
    @NSManaged public var sSymptomName: String
}

extension SSymptomEntity {
    static func getSSymptoms() -> NSFetchRequest<SSymptomEntity> {
        let request: NSFetchRequest<SSymptomEntity> = SSymptomEntity.fetchRequest() as! NSFetchRequest<SSymptomEntity>
        
        let sortDescriptor  = NSSortDescriptor(key: "sSymptomName", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }
}
