import APIKit
import Foundation
import XCTest

@testable import LicensePlistCore

class ResultOperatoinTests: XCTestCase {
    func testBlocking() {
        let operation = ResultOperation<String, NSError> { _ in
            Result(value: "hello")
        }
        XCTAssertEqual(operation.resultSync().value!, "hello")
    }
}
