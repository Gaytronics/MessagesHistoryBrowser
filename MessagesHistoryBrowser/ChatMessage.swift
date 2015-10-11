//
//  ChatMessage.swift
//  MessagesHistoryBrowser
//
//  Created by Guillaume Laurent on 04/10/15.
//  Copyright © 2015 Guillaume Laurent. All rights reserved.
//

import Cocoa
import CoreData

class ChatMessage : NSManagedObject {

    @NSManaged var content:String?

    @NSManaged var date:NSDate

    @NSManaged var chat:Chat

    convenience init(managedObjectContext:NSManagedObjectContext, withMessage aMessage:String, withDate aDate:NSDate, inChat aChat:Chat) {

        let entityDescription = NSEntityDescription.entityForName("Message", inManagedObjectContext: managedObjectContext)
        self.init(entity: entityDescription!, insertIntoManagedObjectContext: managedObjectContext)

        content = aMessage
        date = aDate
        chat = aChat
    }

}
