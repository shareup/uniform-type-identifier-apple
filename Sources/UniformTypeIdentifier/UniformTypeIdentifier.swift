#if os(iOS) || os(watchOS) || os(tvOS)
    import Foundation
    import MobileCoreServices
#elseif os(OSX)
    import Foundation
    import CoreServices
#endif

public struct UniformTypeIdentifier: RawRepresentable, Equatable, CustomStringConvertible {
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
        guard let identifier = unmanagedIdentifier?.takeRetainedValue() as String? else { return nil }
        self.init(rawValue: identifier)
    }

    public init?(mimeType: String, conformingTo parentType: UniformTypeIdentifier? = nil) {
        let unmanagedIdentifier = UTTypeCreatePreferredIdentifierForTag(
            UniformTypeIdentifier.mimeType.cfString,
            mimeType as CFString,
            parentType?.cfString
        )
        guard let identifier = unmanagedIdentifier?.takeRetainedValue() as String? else { return nil }
        self.init(rawValue: identifier)
    }

    public static func == (lhs: UniformTypeIdentifier, rhs: UniformTypeIdentifier) -> Bool {
        return UTTypeEqual(lhs.cfString, rhs.cfString)
    }

    public func conforms(to other: UniformTypeIdentifier) -> Bool {
        return UTTypeConformsTo(self.cfString, other.cfString)
    }

    public var identifier: String? {
        guard let unmanagedDictionary = UTTypeCopyDeclaration(cfString) else { return nil }
        guard let dictionary = unmanagedDictionary.takeRetainedValue() as? Dictionary<String, Any> else {
            return nil
        }
        return dictionary[kUTTypeIdentifierKey as String] as? String
    }

    public var fileExtension: String? {
        return UTTypeCopyPreferredTagWithClass(
            cfString,
            UniformTypeIdentifier.fileExtension.cfString
        )?.takeRetainedValue() as String?
    }

    public var allFileExtensions: Array<String> {
        let unmanagedTags = UTTypeCopyAllTagsWithClass(cfString, UniformTypeIdentifier.fileExtension.cfString)
        guard let tags = unmanagedTags?.takeRetainedValue() as? Array<String> else { return [] }
        return tags
    }

    public var mimeType: String? {
        return UTTypeCopyPreferredTagWithClass(
            cfString,
            UniformTypeIdentifier.mimeType.cfString
        )?.takeRetainedValue() as String?
    }

    public var allMIMETypes: Array<String> {
        let unmanagedTags = UTTypeCopyAllTagsWithClass(cfString, UniformTypeIdentifier.mimeType.cfString)
        guard let tags = unmanagedTags?.takeRetainedValue() as? Array<String> else { return [] }
        return tags
    }

    public var description: String {
        guard let unmanagedDescription = UTTypeCopyDescription(cfString) else { return rawValue }
        let description = unmanagedDescription.takeRetainedValue() as String
        return description.isEmpty ? rawValue : description
    }
}

extension UniformTypeIdentifier {
    private var cfString: CFString {
        return rawValue as CFString
    }
}
