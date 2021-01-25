import APIKit
import Foundation
@testable import LicensePlistCore
import XCTest

class URLExtensionTests: XCTestCase {
    func testDownloadContent() {
        let url = URL(string: "https://raw.githubusercontent.com/mono0926/LicensePlist/master/LICENSE")!
        let license = try! url.lp.download().resultSync().get()
        XCTAssertTrue(license.hasPrefix("MIT License"))
    }
}
