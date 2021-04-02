//
//  ToDoitem.swift
//  ToDoCoreData
//
//  Created by big sur on 2.4.2021.
//

import Foundation
import CoreData

public class ToDoItem:NSManagedObject, Identifiable {
    @NSManaged public var createdAt:Data?
    @NSManaged public var title:String?
}

extension ToDoItem {
    static func getAllToDoItems() -> NSFetchRequest<ToDoItem> {
        let request:NSFetchRequest<ToDoItem> = ToDoItem.fetchRequest() as!
        NSFetchRequest<ToDoItem>
        
        let SortDescriptor = NSSortDescriptor (key: "createdAt", ascending: true)
        
        request.sortDescriptors = [SortDescriptor]
        
        return request
    }
}
