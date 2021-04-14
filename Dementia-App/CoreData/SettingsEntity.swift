//
//  SettingsEntity.swift
//  Dementia-App
//
//  Created by Jacob Yu on 1/27/21.
//  Copyright © 2021 Neuroscience Amador Valley. All rights reserved.
//

import Foundation
import CoreData

public class SettingsEntity: NSManagedObject, Identifiable {
    @NSManaged public var fontSize: Double
    @NSManaged public var notifications: Bool
}

extension SettingsEntity {
    static func getFontSize() -> NSFetchRequest<SettingsEntity> {
        let request: NSFetchRequest<SettingsEntity> = SettingsEntity.fetchRequest() as! NSFetchRequest<SettingsEntity>
        let sortDescriptor  = NSSortDescriptor(key: "fontSize", ascending: true)
        request.sortDescriptors = [sortDescriptor]
        return request
    }
}
