import XCTest
import UniformTypeIdentifier

final class CollectionsTests: XCTestCase {
    func testImageTypes() throws {
        let imageTypes = UniformTypeIdentifier.imageTypes
        XCTAssertEqual(23, imageTypes.count)
    }

    func testVideoTypes() throws {
        let videoTypes = UniformTypeIdentifier.videoTypes
        XCTAssertEqual(20, videoTypes.count)
    }

    func testAudioTypes() throws {
        let audioTypes = UniformTypeIdentifier.audioTypes
        XCTAssertEqual(14, audioTypes.count)
    }
}
