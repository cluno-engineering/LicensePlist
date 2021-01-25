import APIKit
import Foundation
import XCTest

@testable import LicensePlistCore

class ResultOperatoinTests: XCTestCase {
    func testBlocking() {
        let operation = ResultOperation<String, Error> { _ in
            Result.success("Test")
        }
        XCTAssertEqual(try! operation.resultSync().get(), "Test")
    }
}
