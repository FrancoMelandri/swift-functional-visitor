import XCTest
@testable import swift_functional_visitor

final class swift_functional_visitorTests: XCTestCase {

    let sut = Basic()

    func testBasicBrand() {
        let facets: [FacetProtocol] = [
            Brand(name: "BRAND")
        ]
        let result = sut.render(facets)
        XCTAssertEqual(result, "BRAND")
    }

    func testBasicSize() {
        let facets: [FacetProtocol] = [
            Size(title: "SIZE")
        ]
        let result = sut.render(facets)
        XCTAssertEqual(result, "SIZE")
    }

    func testBasicCategory() {
        let facets: [FacetProtocol] = [
            Category(identifier: "CATEGORY")
        ]
        let result = sut.render(facets)
        XCTAssertEqual(result, "CATEGORY")
    }

    static var allTests = [
        ("testBasicBrand", testBasicBrand),
    ]
}
