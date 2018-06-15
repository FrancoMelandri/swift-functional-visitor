import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(basic_Tests.allTests),
        testCase(visitor_Tests.allTests),
    ]
}
#endif