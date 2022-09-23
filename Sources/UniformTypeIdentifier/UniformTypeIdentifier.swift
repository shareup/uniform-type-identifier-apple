#if os(iOS) || os(watchOS) || os(tvOS)
    import Foundation
    import MobileCoreServices
#elseif os(OSX)
    import CoreServices
    import Foundation
#endif

public struct UniformTypeIdentifier: RawRepresentable, Hashable, Codable,
    CustomStringConvertible, Sendable
{
    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public init?(fileExtension: String, conformingTo parentType: UniformTypeIdentifier? = nil) {
        let unmanagedIdentifier = UTTypeCreatePreferredIdentifierForTag(
            UniformTypeIdentifier.fileExtension.cfString,
            fileExtension as CFString,
            parentType?.cfString
        )
        guard let identifier = unmanagedIdentifier?.takeRetainedValue() as String?
        else { return nil }
        self.init(rawValue: identifier)
    }

    public init?(mimeType: String, conformingTo parentType: UniformTypeIdentifier? = nil) {
        let unmanagedIdentifier = UTTypeCreatePreferredIdentifierForTag(
            UniformTypeIdentifier.mimeType.cfString,
            mimeType as CFString,
            parentType?.cfString
        )
        guard let identifier = unmanagedIdentifier?.takeRetainedValue() as String?
        else { return nil }
        self.init(rawValue: identifier)
    }

    public static func == (lhs: UniformTypeIdentifier, rhs: UniformTypeIdentifier) -> Bool {
        UTTypeEqual(lhs.cfString, rhs.cfString)
    }

    public func conforms(to other: UniformTypeIdentifier) -> Bool {
        UTTypeConformsTo(cfString, other.cfString)
    }

    public var identifier: String? {
        guard let unmanagedDictionary = UTTypeCopyDeclaration(cfString) else { return nil }
        guard let dictionary = unmanagedDictionary.takeRetainedValue() as? [String: Any] else {
            return nil
        }
        return dictionary[kUTTypeIdentifierKey as String] as? String
    }

    public var fileExtension: String? {
        UTTypeCopyPreferredTagWithClass(
            cfString,
            UniformTypeIdentifier.fileExtension.cfString
        )?.takeRetainedValue() as String?
    }

    public var allFileExtensions: [String] {
        let unmanagedTags = UTTypeCopyAllTagsWithClass(
            cfString,
            UniformTypeIdentifier.fileExtension.cfString
        )
        guard let tags = unmanagedTags?.takeRetainedValue() as? [String] else { return [] }
        return tags
    }

    public var mimeType: String? {
        UTTypeCopyPreferredTagWithClass(
            cfString,
            UniformTypeIdentifier.mimeType.cfString
        )?.takeRetainedValue() as String?
    }

    public var allMIMETypes: [String] {
        let unmanagedTags = UTTypeCopyAllTagsWithClass(
            cfString,
            UniformTypeIdentifier.mimeType.cfString
        )
        guard let tags = unmanagedTags?.takeRetainedValue() as? [String] else { return [] }
        return tags
    }

    public var description: String { rawValue }

    public var localizedDescription: String {
        guard let unmanagedDescription = UTTypeCopyDescription(cfString)
        else { return rawValue }
        let description = unmanagedDescription.takeRetainedValue() as String
        return description.isEmpty ? rawValue : description
    }
}

extension UniformTypeIdentifier {
    private var cfString: CFString {
        rawValue as CFString
    }
}
