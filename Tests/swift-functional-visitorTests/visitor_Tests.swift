import XCTest
@testable import swift_functional_visitor

final class visitor_Tests: XCTestCase {

    let sut = Visitor()

    func testVisitorBrand() {
        let facets: [FacetProtocol] = [
            Brand(name: "BRAND")
        ]
        let result = sut.render(facets)
        XCTAssertEqual(result, "BRAND")
    }

    // func testBasicSize() {
    //     let facets: [FacetProtocol] = [
    //         Size(title: "SIZE")
    //     ]
    //     let result = sut.render(facets)
    //     XCTAssertEqual(result, "SIZE")
    // }

    // func testBasicCategory() {
    //     let facets: [FacetProtocol] = [
    //         Category(identifier: "CATEGORY")
    //     ]
    //     let result = sut.render(facets)
    //     XCTAssertEqual(result, "CATEGORY")
    // }

    // func testBasicAll() {
    //     let facets: [FacetProtocol] = [
    //         Brand(name: "BRAND"),
    //         Size(title: "SIZE"),
    //         Category(identifier: "CATEGORY")
    //     ]
    //     let result = sut.render(facets)
    //     XCTAssertEqual(result, "BRANDSIZECATEGORY")
    // }

    static var allTests = [
        ("testVisitorBrand", testVisitorBrand),
    ]
}
