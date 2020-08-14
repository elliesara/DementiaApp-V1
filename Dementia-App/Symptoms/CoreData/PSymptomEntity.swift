//
//  PSymptomEntity.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/23/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import Foundation
import CoreData

public class PSymptomEntity: NSManagedObject, Identifiable {
    @NSManaged public var pCheckedState: Bool
    @NSManaged public var pCreatedAt: Date
    @NSManaged public var pSymptomName: String
}

extension PSymptomEntity {
    static func getSymptomTrackers() -> NSFetchRequest<PSymptomEntity> {
        let request: NSFetchRequest<PSymptomEntity> = PSymptomEntity.fetchRequest() as! NSFetchRequest<PSymptomEntity>
        
        let sortDescriptor  = NSSortDescriptor(key: "pSymptomName", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }
}
