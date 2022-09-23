import Foundation

public extension UniformTypeIdentifier {
    /// `UniformTypeIdentifier`s including user-generated documents, media, and other files.
    var isDocument: Bool {
        if isImage || isVideo || isAudio || conforms(to: .content) {
            return true
        } else {
            switch self {
            case .osaScriptBundle,
                 .propertyList,
                 .xmlPropertyList,
                 .binaryPropertyList,
                 .playlist,
                 .javaClass,
                 .javaArchive,
                 .gnuZipArchive,
                 .zipArchive,
                 .bzip2Archive,
                 .database,
                 .toDoItem,
                 .calendarEvent,
                 .emailMessage,
                 .font,
                 .pkcs12,
                 .x509Certificate,
                 .log,
                 .efxFax,
                 .stuffitArchive,
                 .wordDocument:
                return true

            default:
                return false
            }
        }
    }

    /// `Set` of `UniformTypeIdentifier`s including image types.
    var isImage: Bool {
        if conforms(to: .image) {
            return true
        } else {
            switch self {
            case .livePhoto, .flashPixImage, .apng, .avif:
                return true
            default:
                return false
            }
        }
    }

    var isVideo: Bool {
        if conforms(to: .audiovisualContent) {
            return true
        } else {
            switch self {
            case .webmVideo, .oggVideo:
                return true
            default:
                return false
            }
        }
    }

    var isAudio: Bool {
        if conforms(to: .audio) {
            return true
        } else {
            switch self {
            case .webmAudio, .oggAudio:
                return true
            default:
                return false
            }
        }
    }
}
