//
//  Banana.swift
//  QuickTest
//
//  Created by oyuk on 2016/02/18.
//  Copyright © 2016年 okysoft. All rights reserved.
//

import Foundation

public class Banana {
    private var isPeeled = false
    
    /** Peels the banana. */
    public func peel() {
        isPeeled = true
    }
    
    /** You shouldn't eat a banana unless it's been peeled. */
    public var isEdible: Bool {
        return isPeeled
    }
}