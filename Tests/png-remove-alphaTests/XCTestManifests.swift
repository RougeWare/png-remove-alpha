import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(png_remove_alphaTests.allTests),
    ]
}
#endif
