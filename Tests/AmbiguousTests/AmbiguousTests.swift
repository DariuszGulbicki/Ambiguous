import XCTest
import LoggingCamp
@testable import Ambiguous

final class ambiguousTests: XCTestCase {

    func testExample() throws {
        let logger = Logger("AmbiguousTests")
        logger.info("Starting tests...")
        let ambiguous = Ambiguous(false)
        let fin = ambiguous == 4 + 5
        logger.info("Ambiguous value: \(fin)")
    }

}