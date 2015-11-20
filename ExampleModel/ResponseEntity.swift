//
//  ResponseEntity.swift
//  SwinjectMVVMExample
//
//  Created by Yoichi Tagaya on 8/29/15.
//  Copyright © 2015 Swinject Contributors. All rights reserved.
//

import Himotoki

public struct ResponseEntity {
    public let totalCount: Int64
    public let images: [ImageEntity]
}

// MARK: Decodable
extension ResponseEntity: Decodable {
    public static func decode(e: Extractor) throws -> ResponseEntity {
        return try ResponseEntity(
            totalCount: e <| "totalHits",
            images: e <|| "hits"
        )
    }
}
