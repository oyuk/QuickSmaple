//
//  APIClientTest.swift
//  QuickTest
//
//  Created by oyuk on 2016/02/18.
//  Copyright © 2016年 okysoft. All rights reserved.
//


import Quick
import Nimble
@testable import QuickTest

class APIClientTest:QuickSpec {
    override func spec() {
        describe("API TEST") {
            
            it("search swift"){
                waitUntil(timeout: 5, action: { (done) -> Void in
                
                    var posts:[Post] = []

                    APIClient.search("swift"){result in
                        switch result {
                        case .Success(let p):
                            posts = p
                        case .Error(let _):
                            posts = []
                        }
                        expect(posts).to(haveCount(20))
                        done()
                    }

                })
            }
            
        }

    }
}
