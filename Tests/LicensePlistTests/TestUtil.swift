import Foundation
@testable import LicensePlistCore
import LoggerAPI

class TestUtil {
    static func setGitHubToken() {
        // Specify your `github_token.txt` location
        let url = URL(fileURLWithPath: "/Users/mono/Git/LicensePlist/Tests/LicensePlistTests/Resources/github_token.txt")
        do {
            GitHubAuthorization.shared.token = try String(contentsOf: url,
                                                          encoding: String.Encoding.utf8)
        } catch {
            debugPrint(error.localizedDescription)
        }
    }
}
