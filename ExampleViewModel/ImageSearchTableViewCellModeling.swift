//
//  ImageSearchTableViewCellModeling.swift
//  SwinjectMVVMExample
//
//  Created by Yoichi Tagaya on 9/1/15.
//  Copyright © 2015 Swinject Contributors. All rights reserved.
//

import ReactiveCocoa

public protocol ImageSearchTableViewCellModeling {
    var id: UInt64 { get }
    var pageImageSizeText: String { get }
    var tagText: String { get }
    
    func getPreviewImage() -> SignalProducer<UIImage?, NoError>
}
