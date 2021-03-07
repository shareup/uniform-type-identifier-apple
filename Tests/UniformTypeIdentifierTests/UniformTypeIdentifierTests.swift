import XCTest
@testable import UniformTypeIdentifier

final class UniformTypeIdentifierTests: XCTestCase {
    func testInitializeWithFileExtension() throws {
        let docx = try XCTUnwrap(UniformTypeIdentifier(fileExtension: "docx"))

        XCTAssertEqual("docx", docx.fileExtension)
        XCTAssertEqual(Set(["docx"]), Set(docx.allFileExtensions))

        let mimeTypes = ["application/vnd.openxmlformats-officedocument.wordprocessingml.document"]
        XCTAssertEqual(mimeTypes[0], docx.mimeType)
        XCTAssertEqual(Set(mimeTypes), Set(docx.allMIMETypes))

        XCTAssertTrue(docx.conforms(to: UniformTypeIdentifier.data))
        XCTAssertTrue(docx.conforms(to: UniformTypeIdentifier.content))
        XCTAssertTrue(docx.conforms(to: UniformTypeIdentifier.compositeContent))

        XCTAssertNotEqual(UniformTypeIdentifier(fileExtension: "doc"), docx)
    }

    func testInitializeWithMIMEType() throws {
        let pptMIMEType = "application/vnd.ms-powerpoint"
        let ppt = try XCTUnwrap(UniformTypeIdentifier(mimeType: pptMIMEType))

        XCTAssertEqual("ppt", ppt.fileExtension)
        XCTAssertEqual(["ppt"], ppt.allFileExtensions)

        let mimeTypes = ["application/vnd.ms-powerpoint", "application/mspowerpoint"]
        XCTAssertEqual(mimeTypes[0], ppt.mimeType)
        XCTAssertEqual(Set(mimeTypes), Set(ppt.allMIMETypes))

        XCTAssertTrue(ppt.conforms(to: UniformTypeIdentifier.data))
        XCTAssertTrue(ppt.conforms(to: UniformTypeIdentifier.content))
        XCTAssertTrue(ppt.conforms(to: UniformTypeIdentifier.compositeContent))

        XCTAssertNotEqual(UniformTypeIdentifier(fileExtension: "pptx"), ppt)
    }

    func testEquals() throws {
        let image = UniformTypeIdentifier.image
        let jpeg = UniformTypeIdentifier.jpeg
        let jpeg2000 = UniformTypeIdentifier.jpeg2000
        let pdf = UniformTypeIdentifier.pdf
        let data = UniformTypeIdentifier.data

        XCTAssertEqual(jpeg, UniformTypeIdentifier.jpeg)
        XCTAssertNotEqual(jpeg, jpeg2000)
        XCTAssertNotEqual(jpeg, pdf)
        XCTAssertNotEqual(jpeg, image)
        XCTAssertNotEqual(jpeg, data)
    }

    func textConformsTo() throws {
        let image = UniformTypeIdentifier.image
        let jpeg = UniformTypeIdentifier.jpeg
        let jpeg2000 = UniformTypeIdentifier.jpeg2000
        let pdf = UniformTypeIdentifier.pdf
        let data = UniformTypeIdentifier.data
        let directory = UniformTypeIdentifier.directory

        XCTAssertTrue(jpeg.conforms(to: image))
        XCTAssertTrue(jpeg2000.conforms(to: image))
        XCTAssertTrue(jpeg.conforms(to: data))
        XCTAssertTrue(image.conforms(to: data))

        XCTAssertFalse(jpeg.conforms(to: jpeg2000))
        XCTAssertFalse(jpeg2000.conforms(to: jpeg))
        XCTAssertFalse(jpeg.conforms(to: pdf))
        XCTAssertFalse(jpeg.conforms(to: directory))
        XCTAssertFalse(image.conforms(to: jpeg))
        XCTAssertFalse(data.conforms(to: directory))
    }

    func testIdentifier() throws {
        let expectedIdentifiers = [
            "com.microsoft.word.doc",
            "org.openxmlformats.wordprocessingml.document",
            "com.microsoft.excel.xls",
            "org.openxmlformats.spreadsheetml.sheet",
            "com.microsoft.powerpoint.ppt",
            "org.openxmlformats.presentationml.presentation",
        ]

        let identifiers = try [
            "doc", "docx", "xls", "xlsx", "ppt", "pptx"
        ].map { try XCTUnwrap(UniformTypeIdentifier(fileExtension: $0)?.identifier) }

        XCTAssertEqual(expectedIdentifiers, identifiers)
    }

    func testFileExtension() throws {
        XCTAssertEqual("jpeg", UniformTypeIdentifier.jpeg.fileExtension)
        XCTAssertEqual("png", UniformTypeIdentifier.png.fileExtension)
        XCTAssertEqual("txt", UniformTypeIdentifier.plainText.fileExtension)

        XCTAssertNil(UniformTypeIdentifier.text.fileExtension)
        XCTAssertNil(UniformTypeIdentifier.utf8PlainText.fileExtension)
    }

    func testAllFileExtensions() throws {
        XCTAssertEqual(Set(["jpeg", "jpg", "jpe"]), Set(UniformTypeIdentifier.jpeg.allFileExtensions))
        XCTAssertEqual(["png"], UniformTypeIdentifier.png.allFileExtensions)
        XCTAssertEqual(Set(["txt", "text"]), Set(UniformTypeIdentifier.plainText.allFileExtensions))
        XCTAssertEqual(Set(["mp4", "mpg4"]), Set(UniformTypeIdentifier.mpeg4.allFileExtensions))
        XCTAssertEqual(Set([ "html" , "htm", "shtml", "shtm" ]), Set(UniformTypeIdentifier.html.allFileExtensions))

        XCTAssertEqual([], UniformTypeIdentifier.text.allFileExtensions)
        XCTAssertEqual([], UniformTypeIdentifier.utf8PlainText.allFileExtensions)
        XCTAssertEqual([], UniformTypeIdentifier.video.allFileExtensions)
    }

    func testMIMEType() throws {
        XCTAssertEqual("video/quicktime", UniformTypeIdentifier.quickTimeMovie.mimeType)
        XCTAssertEqual("video/mpeg", UniformTypeIdentifier.mpeg.mimeType)
        XCTAssertEqual("video/mpeg2", UniformTypeIdentifier.mpeg2Video.mimeType)
        XCTAssertEqual("audio/mpeg", UniformTypeIdentifier.mp3.mimeType)
        XCTAssertEqual("video/mp4", UniformTypeIdentifier.mpeg4.mimeType)
        XCTAssertEqual("audio/mp4", UniformTypeIdentifier.mpeg4Audio.mimeType)
        XCTAssertEqual("video/avi", UniformTypeIdentifier.aviMovie.mimeType)
        XCTAssertEqual("audio/aiff", UniformTypeIdentifier.audioInterchangeFileFormat.mimeType)
        XCTAssertEqual("audio/vnd.wave", UniformTypeIdentifier.waveformAudio.mimeType)
        XCTAssertEqual("audio/midi", UniformTypeIdentifier.midiAudio.mimeType)
        XCTAssertEqual("audio/mpegurl", UniformTypeIdentifier.m3uPlaylist.mimeType)
        XCTAssertEqual("text/directory", UniformTypeIdentifier.vCard.mimeType)

        XCTAssertNil(UniformTypeIdentifier.mpeg2TransportStream.mimeType)
        XCTAssertNil(UniformTypeIdentifier.appleProtectedMPEG4Audio.mimeType)
        XCTAssertNil(UniformTypeIdentifier.appleProtectedMPEG4Video.mimeType)
        XCTAssertNil(UniformTypeIdentifier.playlist.mimeType)
        XCTAssertNil(UniformTypeIdentifier.spreadsheet.mimeType)
        XCTAssertNil(UniformTypeIdentifier.presentation.mimeType)
        XCTAssertNil(UniformTypeIdentifier.database.mimeType)
        XCTAssertNil(UniformTypeIdentifier.toDoItem.mimeType)
        XCTAssertNil(UniformTypeIdentifier.calendarEvent.mimeType)
        XCTAssertNil(UniformTypeIdentifier.emailMessage.mimeType)
        XCTAssertNil(UniformTypeIdentifier.internetLocation.mimeType)
    }

    func testAdditionalTypes() throws {
        // webp
        let webp = UniformTypeIdentifier.webp
        XCTAssertEqual("org.webmproject.webp", webp.rawValue)
        if #available(iOS 14, macOS 10.16, *) {
            XCTAssertEqual("image/webp", webp.mimeType)
            XCTAssertEqual(["webp"], webp.allFileExtensions)
            XCTAssertTrue(webp.conforms(to: .image))
        }

        // heif
        let heif = UniformTypeIdentifier.heif
        XCTAssertEqual("public.heif", heif.rawValue)
        XCTAssertEqual("image/heif", heif.mimeType)
        if #available(iOS 14, macOS 10.16, *) {
            XCTAssertEqual(["heif", "hif"], heif.allFileExtensions)
        } else {
            XCTAssertEqual(["heif"], heif.allFileExtensions)
        }
        XCTAssertTrue(heif.conforms(to: .heifStandard))
        XCTAssertTrue(heif.conforms(to: .image))

        // heic
        let heic = UniformTypeIdentifier.heic
        XCTAssertEqual("public.heic", heic.rawValue)
        XCTAssertEqual("image/heic", heic.mimeType)
        XCTAssertEqual(["heic"], heic.allFileExtensions)
        XCTAssertTrue(heic.conforms(to: .heifStandard))
        XCTAssertTrue(heic.conforms(to: .image))
    }

    func testAllMIMETypes() throws {
        XCTAssertEqual(Set(["text/rtf"]), Set(UniformTypeIdentifier.rtf.allMIMETypes))
        XCTAssertEqual(Set(["text/html"]), Set(UniformTypeIdentifier.html.allMIMETypes))
        XCTAssertEqual(Set(["text/xml", "application/xml"]), Set(UniformTypeIdentifier.xml.allMIMETypes))
        XCTAssertEqual(Set([]), Set(UniformTypeIdentifier.sourceCode.allMIMETypes))
    }

    func testDescription() throws {
        XCTAssertEqual("image", UniformTypeIdentifier.image.description)
        XCTAssertEqual("folder", UniformTypeIdentifier.folder.description)
        XCTAssertEqual("AVI movie", UniformTypeIdentifier.aviMovie.description)
        XCTAssertEqual("JSON", UniformTypeIdentifier.json.description)
    }

    static var allTests = [
        ("testInitializeWithFileExtension", testInitializeWithFileExtension),
        ("testInitializeWithMIMEType", testInitializeWithMIMEType),
        ("testEquals", testEquals),
        ("textConformsTo", textConformsTo),
        ("testIdentifier", testIdentifier),
        ("testFileExtension", testFileExtension),
        ("testAllFileExtensions", testAllFileExtensions),
        ("testMIMEType", testMIMEType),
        ("testAllMIMETypes", testAllMIMETypes),
        ("testDescription", testDescription),
    ]
}
