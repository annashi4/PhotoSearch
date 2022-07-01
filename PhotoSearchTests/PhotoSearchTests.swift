import XCTest

class PhotoSearchTests: XCTestCase {

    func testButton_configuration() {
        let button = showSearchVCButton

        XCTAssertFalse(button.translatesAutoresizingMaskIntoConstraints)
        XCTAssertTrue(button.isUserInteractionEnabled)
        }
}
