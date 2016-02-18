//
//  Offer.swift
//  QuickTest
//
//  Created by oyuk on 2016/02/18.
//  Copyright © 2016年 okysoft. All rights reserved.
//

import Foundation

public func offer(banana: Banana) -> String {
    if banana.isEdible {
        return "Hey, want a banana?"
    } else {
        return "Hey, want me to peel this banana for you?"
    }
}