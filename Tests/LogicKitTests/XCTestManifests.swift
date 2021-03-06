import XCTest

extension BindingMapTests {
    static let __allTests = [
        ("testBinding", testBinding),
        ("testDeepWalk", testDeepWalk),
        ("testMerged", testMerged),
        ("testReified", testReified),
        ("testShallowWalk", testShallowWalk),
    ]
}

extension LogicKitTests {
    static let __allTests = [
        ("testBacktracking", testBacktracking),
        ("testConstantFacts", testConstantFacts),
        ("testDisjunction", testDisjunction),
        ("testExtractValue", testExtractValue),
        ("testFactsWithVariables", testFactsWithVariables),
        ("testLitSyntax", testLitSyntax),
        ("testRecursion", testRecursion),
        ("testSimpleDeductions", testSimpleDeductions),
    ]
}

#if !os(macOS)
public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(BindingMapTests.__allTests),
        testCase(LogicKitTests.__allTests),
    ]
}
#endif
