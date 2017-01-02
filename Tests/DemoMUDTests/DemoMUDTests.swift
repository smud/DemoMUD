import XCTest
@testable import DemoMUD

class DemoMUDTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        //XCTAssertEqual(DemoMUD().text, "Hello, World!")
    }


    static var allTests : [(String, (DemoMUDTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
