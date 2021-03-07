import Foundation

extension UniformTypeIdentifier {
    /// `UniformTypeIdentifier`s including user-generated documents, media, and other files.
    public var isDocument: Bool {
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
                 .stuffitArchive:
                return true
                
            default:
                return false
            }
        }
    }

    /// `Set` of `UniformTypeIdentifier`s including image types.
    public var isImage: Bool {
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

    public var isVideo: Bool {
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

    public var isAudio: Bool {
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
