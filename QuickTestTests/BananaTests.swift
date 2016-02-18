//
//  BananaTests.swift
//  QuickTest
//
//  Created by oyuk on 2016/02/18.
//  Copyright © 2016年 okysoft. All rights reserved.
//

import XCTest
import Nimble
@testable import QuickTest

class BananaTests: XCTestCase {
    
    var banana:Banana!
    
    override func setUp() {
        super.setUp()
        banana = Banana()
    }
    
    
    func testPeel_makesTheBananaEdible(){
        banana.peel()
        expect(self.banana.isEdible).to(beTrue())
    }
    
    func testOffer_whenTheBananaIsPeeled_offersTheBanana() {
         banana.peel()
        
        // Act: Create the string used to offer the banana.
        let message = offer(banana)
        
        // Assert: Verify it's the right string.
        expect(message).to(equal("Hey, want a banana?"))
//        XCTAssertEqual(message, "Hey, want a banana?")
    }
    
    func testOffer_whenTheBananaIsntPeeled_offersToPeelTheBanana() {
         // Act: Create the string used to offer the banana.
        let message = offer(banana)
        
        // Assert: Verify it's the right string.
        XCTAssertEqual(message, "Hey, want me to peel this banana for you?")
    }

    
    func testapi(){
        
        var posts:[Post] = []
        
        APIClient.search("swift"){result in
            switch result {
            case .Success(let p):
                posts = p
            case .Error(let _):
                posts = []
            }
        }
        expect(posts).toEventuallyNot(haveCount(2),timeout: 5)
    }
}
