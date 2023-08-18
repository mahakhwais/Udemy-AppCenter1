//
//  MinutesTests.swift
//  MinutesTests
//
//  Created by Jameel Amer on 18/08/2023.
//  Copyright © 2023 Microsoft. All rights reserved.
//

import XCTest
@testable import Minutes

class MinutesTests: XCTestCase {
    
    var entryTest:Entry!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
       
        entryTest = Entry("Title", "Content")
       
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        entryTest = nil
       
        
    }
    
    func testSerialization() {
        let serializedData = FileEntryStore.serialize(entryTest)
        let entry = FileEntryStore.deserialize(serializedData!)

        XCTAssertEqual(entry?.title, "Title", "Title does not match")
        XCTAssertEqual(entry?.content, "Content", "Content does not match")
    }
   

}
