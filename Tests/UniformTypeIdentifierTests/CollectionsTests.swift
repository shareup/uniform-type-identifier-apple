import UniformTypeIdentifier
import XCTest

final class CollectionsTests: XCTestCase {
    func testIsDocument() throws {
        Self.documentTypes.forEach { type in
            XCTAssertTrue(type.isDocument, "\(type.rawValue) is not a document")
        }

        XCTAssertFalse(UniformTypeIdentifier.directory.isDocument)
        XCTAssertFalse(UniformTypeIdentifier.folder.isDocument)
        XCTAssertFalse(UniformTypeIdentifier.symLink.isDocument)
    }

    func testIsImage() throws {
        Self.imageTypes.forEach { type in
            XCTAssertTrue(type.isImage, "\(type.rawValue) is not an image")
        }
    }

    func testIsVideo() throws {
        Self.videoTypes.forEach { type in
            XCTAssertTrue(type.isVideo, "\(type.rawValue) is not a video")
        }
    }

    func testIsAudio() throws {
        Self.audioTypes.forEach { type in
            XCTAssertTrue(type.isAudio, "\(type.rawValue) is not audio")
        }
    }
}

private extension CollectionsTests {
    static let documentTypes: [UniformTypeIdentifier] = [
        .content,
        .compositeContent,
        .text,
        .plainText,
        .utf8PlainText,
        .utf16ExternalPlainText,
        .utf16PlainText,
        .delimitedText,
        .commaSeparatedText,
        .tabSeparatedText,
        .utf8TabSeparatedText,
        .rtf,
        .html,
        .xml,
        .sourceCode,
        .assemblyLanguageSource,
        .cSource,
        .objectiveCSource,
        .swiftSource,
        .cPlusPlusSource,
        .objectiveCPlusPlusSource,
        .cHeader,
        .cPlusPlusHeader,
        .javaSource,
        .script,
        .appleScript,
        .osaScript,
        .osaScriptBundle,
        .javaScript,
        .shellScript,
        .perlScript,
        .pythonScript,
        .rubyScript,
        .phpScript,
        .json,
        .propertyList,
        .xmlPropertyList,
        .binaryPropertyList,
        .pdf,
        .rtfd,
        .flatRTFD,
        .txnTextAndMultimediaData,
        .webArchive,
        .image,
        .jpeg,
        .jpeg2000,
        .tiff,
        .pict,
        .gif,
        .png,
        .quickTimeImage,
        .appleICNS,
        .bmp,
        .ico,
        .rawImage,
        .svg,
        .livePhoto,
        .audiovisualContent,
        .movie,
        .video,
        .audio,
        .quickTimeMovie,
        .mpeg,
        .mpeg2Video,
        .mpeg2TransportStream,
        .mp3,
        .mpeg4,
        .mpeg4Audio,
        .appleProtectedMPEG4Audio,
        .appleProtectedMPEG4Video,
        .aviMovie,
        .audioInterchangeFileFormat,
        .waveformAudio,
        .midiAudio,
        .playlist,
        .m3uPlaylist,
        .javaClass,
        .javaArchive,
        .gnuZipArchive,
        .bzip2Archive,
        .zipArchive,
        .spreadsheet,
        .presentation,
        .database,
        .vCard,
        .toDoItem,
        .calendarEvent,
        .emailMessage,
        .font,
        ._3dContent,
        .pkcs12,
        .x509Certificate,
        .electronicPublication,
        .log,
        .postscript,
        .encapsulatedPostscript,
        .photoshopImage,
        .aiImage,
        .wordDocument,
        .excelSpreadsheet,
        .powerpointPresentation,
        .advancedSystems,
        .windowsMediaWM,
        .windowsMediaWMV,
        .windowsMediaWMP,
        .windowsMediaWMA,
        .advancedStreamRedirector,
        .windowsMediaWMX,
        .windowsMediaWVX,
        .windowsMediaWAX,
        .keynotePresentation,
        .keynoteTheme,
        .tgaImage,
        .sgiImage,
        .openEXRImage,
        .flashPixImage,
        .jfxFax,
        .efxFax,
        .sd2Audio,
        .realMedia,
        .realMediaAudio,
        .stuffitArchive,
        .wordDocumentXML,
        .excelSpreadsheetXML,
        .powerpointPresentationXML,
    ]

    static let imageTypes: [UniformTypeIdentifier] = {
        var types: [UniformTypeIdentifier] = [
            .image,
            .jpeg,
            .jpeg2000,
            .tiff,
            .pict,
            .gif,
            .png,
            .quickTimeImage,
            .appleICNS,
            .bmp,
            .ico,
            .rawImage,
            .svg,
            .livePhoto,
            .photoshopImage,
            .aiImage,
            .tgaImage,
            .sgiImage,
            .openEXRImage,
            .flashPixImage,
            .apng,
            .avif,
        ]

        if #available(iOS 14, macOS 11.0, *) {
            types.append(.webp)
        }

        return types
    }()

    static let videoTypes: [UniformTypeIdentifier] = [
        .audiovisualContent,
        .movie,
        .video,
        .quickTimeMovie,
        .mpeg,
        .mpeg2Video,
        .mpeg2TransportStream,
        .mpeg4,
        .appleProtectedMPEG4Video,
        .aviMovie,
        .windowsMediaWM,
        .windowsMediaWMV,
        .windowsMediaWMP,
        .windowsMediaWMX,
        .windowsMediaWVX,
        .realMedia,
        .webmVideo,
        .oggVideo,
    ]

    static let audioTypes: [UniformTypeIdentifier] = [
        .audio,
        .mp3,
        .mpeg4Audio,
        .audioInterchangeFileFormat,
        .waveformAudio,
        .midiAudio,
        .windowsMediaWAX,
        .sd2Audio,
        .realMediaAudio,
        .webmAudio,
        .oggAudio,
    ]

    static var directoryTypes: [UniformTypeIdentifier] = [
        .directory,
        .folder,
        .volume,
        .package,
        .bundle,
        .applicationBundle,
    ]
}
