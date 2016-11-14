//
//  AttachmentsCollectionViewDelegate.swift
//  MessagesHistoryBrowser
//
//  Created by Guillaume Laurent on 17/12/15.
//  Copyright © 2015 Guillaume Laurent. All rights reserved.
//

import Cocoa

protocol AttachmentsCollectionViewDelegate: NSCollectionViewDelegate {

    func displayAttachmentAtIndexPath(_ indexPath:IndexPath) -> Void
    func showAttachmentInFinderAtIndexPath(_ indexPath:IndexPath) -> Void

}
