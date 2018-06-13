import XCTest
@testable import swift_functional_visitor

final class swift_functional_visitorTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(swift_functional_visitor().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
