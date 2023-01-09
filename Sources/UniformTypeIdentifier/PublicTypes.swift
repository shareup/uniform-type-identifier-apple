#if os(iOS) || os(watchOS) || os(tvOS)
    import Foundation
    import MobileCoreServices
#elseif os(OSX)
    import CoreServices
    import Foundation
#endif

public extension UniformTypeIdentifier {
    static let item = UniformTypeIdentifier(rawValue: kUTTypeItem as String)
    static let content = UniformTypeIdentifier(rawValue: kUTTypeContent as String)
    static let compositeContent =
        UniformTypeIdentifier(rawValue: kUTTypeCompositeContent as String)
    static let message = UniformTypeIdentifier(rawValue: kUTTypeMessage as String)
    static let contact = UniformTypeIdentifier(rawValue: kUTTypeContact as String)
    static let archive = UniformTypeIdentifier(rawValue: kUTTypeArchive as String)
    static let diskImage = UniformTypeIdentifier(rawValue: kUTTypeDiskImage as String)
    static let data = UniformTypeIdentifier(rawValue: kUTTypeData as String)
    static let directory = UniformTypeIdentifier(rawValue: kUTTypeDirectory as String)
    static let resolvable = UniformTypeIdentifier(rawValue: kUTTypeResolvable as String)
    static let symLink = UniformTypeIdentifier(rawValue: kUTTypeSymLink as String)
    static let executable = UniformTypeIdentifier(rawValue: kUTTypeExecutable as String)
    static let mountPoint = UniformTypeIdentifier(rawValue: kUTTypeMountPoint as String)
    static let aliasFile = UniformTypeIdentifier(rawValue: kUTTypeAliasFile as String)
    static let aliasRecord = UniformTypeIdentifier(rawValue: kUTTypeAliasRecord as String)
    static let urlBookmarkData =
        UniformTypeIdentifier(rawValue: kUTTypeURLBookmarkData as String)
    static let url = UniformTypeIdentifier(rawValue: kUTTypeURL as String)
    static let fileURL = UniformTypeIdentifier(rawValue: kUTTypeFileURL as String)
    static let text = UniformTypeIdentifier(rawValue: kUTTypeText as String)
    static let plainText = UniformTypeIdentifier(rawValue: kUTTypePlainText as String)
    static let utf8PlainText = UniformTypeIdentifier(rawValue: kUTTypeUTF8PlainText as String)
    static let utf16ExternalPlainText =
        UniformTypeIdentifier(rawValue: kUTTypeUTF16ExternalPlainText as String)
    static let utf16PlainText = UniformTypeIdentifier(rawValue: kUTTypeUTF16PlainText as String)
    static let delimitedText = UniformTypeIdentifier(rawValue: kUTTypeDelimitedText as String)
    static let commaSeparatedText =
        UniformTypeIdentifier(rawValue: kUTTypeCommaSeparatedText as String)
    static let tabSeparatedText =
        UniformTypeIdentifier(rawValue: kUTTypeTabSeparatedText as String)
    static let utf8TabSeparatedText =
        UniformTypeIdentifier(rawValue: kUTTypeUTF8TabSeparatedText as String)
    static let rtf = UniformTypeIdentifier(rawValue: kUTTypeRTF as String)
    static let html = UniformTypeIdentifier(rawValue: kUTTypeHTML as String)
    static let xml = UniformTypeIdentifier(rawValue: kUTTypeXML as String)
    static let sourceCode = UniformTypeIdentifier(rawValue: kUTTypeSourceCode as String)
    static let assemblyLanguageSource =
        UniformTypeIdentifier(rawValue: kUTTypeAssemblyLanguageSource as String)
    static let cSource = UniformTypeIdentifier(rawValue: kUTTypeCSource as String)
    static let objectiveCSource =
        UniformTypeIdentifier(rawValue: kUTTypeObjectiveCSource as String)
    static let swiftSource = UniformTypeIdentifier(rawValue: kUTTypeSwiftSource as String)
    static let cPlusPlusSource =
        UniformTypeIdentifier(rawValue: kUTTypeCPlusPlusSource as String)
    static let objectiveCPlusPlusSource =
        UniformTypeIdentifier(rawValue: kUTTypeObjectiveCPlusPlusSource as String)
    static let cHeader = UniformTypeIdentifier(rawValue: kUTTypeCHeader as String)
    static let cPlusPlusHeader =
        UniformTypeIdentifier(rawValue: kUTTypeCPlusPlusHeader as String)
    static let javaSource = UniformTypeIdentifier(rawValue: kUTTypeJavaSource as String)
    static let script = UniformTypeIdentifier(rawValue: kUTTypeScript as String)
    static let appleScript = UniformTypeIdentifier(rawValue: kUTTypeAppleScript as String)
    static let osaScript = UniformTypeIdentifier(rawValue: kUTTypeOSAScript as String)
    static let osaScriptBundle =
        UniformTypeIdentifier(rawValue: kUTTypeOSAScriptBundle as String)
    static let javaScript = UniformTypeIdentifier(rawValue: kUTTypeJavaScript as String)
    static let shellScript = UniformTypeIdentifier(rawValue: kUTTypeShellScript as String)
    static let perlScript = UniformTypeIdentifier(rawValue: kUTTypePerlScript as String)
    static let pythonScript = UniformTypeIdentifier(rawValue: kUTTypePythonScript as String)
    static let rubyScript = UniformTypeIdentifier(rawValue: kUTTypeRubyScript as String)
    static let phpScript = UniformTypeIdentifier(rawValue: kUTTypePHPScript as String)
    static let json = UniformTypeIdentifier(rawValue: kUTTypeJSON as String)
    static let propertyList = UniformTypeIdentifier(rawValue: kUTTypePropertyList as String)
    static let xmlPropertyList =
        UniformTypeIdentifier(rawValue: kUTTypeXMLPropertyList as String)
    static let binaryPropertyList =
        UniformTypeIdentifier(rawValue: kUTTypeBinaryPropertyList as String)
    static let pdf = UniformTypeIdentifier(rawValue: kUTTypePDF as String)
    static let rtfd = UniformTypeIdentifier(rawValue: kUTTypeRTFD as String)
    static let flatRTFD = UniformTypeIdentifier(rawValue: kUTTypeFlatRTFD as String)
    static let txnTextAndMultimediaData =
        UniformTypeIdentifier(rawValue: kUTTypeTXNTextAndMultimediaData as String)
    static let webArchive = UniformTypeIdentifier(rawValue: kUTTypeWebArchive as String)
    static let image = UniformTypeIdentifier(rawValue: kUTTypeImage as String)
    static let heifStandard = UniformTypeIdentifier(rawValue: "public.heif-standard")
    static let heif = UniformTypeIdentifier(rawValue: "public.heif")
    static let jpeg = UniformTypeIdentifier(rawValue: kUTTypeJPEG as String)
    static let jpeg2000 = UniformTypeIdentifier(rawValue: kUTTypeJPEG2000 as String)
    static let tiff = UniformTypeIdentifier(rawValue: kUTTypeTIFF as String)
    static let pict = UniformTypeIdentifier(rawValue: kUTTypePICT as String)
    static let gif = UniformTypeIdentifier(rawValue: kUTTypeGIF as String)
    static let png = UniformTypeIdentifier(rawValue: kUTTypePNG as String)
    static let quickTimeImage = UniformTypeIdentifier(rawValue: kUTTypeQuickTimeImage as String)
    static let appleICNS = UniformTypeIdentifier(rawValue: kUTTypeAppleICNS as String)
    static let bmp = UniformTypeIdentifier(rawValue: kUTTypeBMP as String)
    static let ico = UniformTypeIdentifier(rawValue: kUTTypeICO as String)
    static let rawImage = UniformTypeIdentifier(rawValue: kUTTypeRawImage as String)
    static let svg = UniformTypeIdentifier(rawValue: kUTTypeScalableVectorGraphics as String)
    static let heic = UniformTypeIdentifier(rawValue: "public.heic")
    static let livePhoto = UniformTypeIdentifier(rawValue: kUTTypeLivePhoto as String)
    static let audiovisualContent =
        UniformTypeIdentifier(rawValue: kUTTypeAudiovisualContent as String)
    static let movie = UniformTypeIdentifier(rawValue: kUTTypeMovie as String)
    static let video = UniformTypeIdentifier(rawValue: kUTTypeVideo as String)
    static let audio = UniformTypeIdentifier(rawValue: kUTTypeAudio as String)
    static let quickTimeMovie = UniformTypeIdentifier(rawValue: kUTTypeQuickTimeMovie as String)
    static let mpeg = UniformTypeIdentifier(rawValue: kUTTypeMPEG as String)
    static let mpeg2Video = UniformTypeIdentifier(rawValue: kUTTypeMPEG2Video as String)
    static let mpeg2TransportStream =
        UniformTypeIdentifier(rawValue: kUTTypeMPEG2TransportStream as String)
    static let mp3 = UniformTypeIdentifier(rawValue: kUTTypeMP3 as String)
    static let mpeg4 = UniformTypeIdentifier(rawValue: kUTTypeMPEG4 as String)
    static let mpeg4Audio = UniformTypeIdentifier(rawValue: kUTTypeMPEG4Audio as String)
    static let appleProtectedMPEG4Audio =
        UniformTypeIdentifier(rawValue: kUTTypeAppleProtectedMPEG4Audio as String)
    static let appleProtectedMPEG4Video =
        UniformTypeIdentifier(rawValue: kUTTypeAppleProtectedMPEG4Video as String)
    static let aviMovie = UniformTypeIdentifier(rawValue: kUTTypeAVIMovie as String)
    static let audioInterchangeFileFormat =
        UniformTypeIdentifier(rawValue: kUTTypeAudioInterchangeFileFormat as String)
    static let waveformAudio = UniformTypeIdentifier(rawValue: kUTTypeWaveformAudio as String)
    static let midiAudio = UniformTypeIdentifier(rawValue: kUTTypeMIDIAudio as String)
    static let playlist = UniformTypeIdentifier(rawValue: kUTTypePlaylist as String)
    static let m3uPlaylist = UniformTypeIdentifier(rawValue: kUTTypeM3UPlaylist as String)
    static let folder = UniformTypeIdentifier(rawValue: kUTTypeFolder as String)
    static let volume = UniformTypeIdentifier(rawValue: kUTTypeVolume as String)
    static let package = UniformTypeIdentifier(rawValue: kUTTypePackage as String)
    static let bundle = UniformTypeIdentifier(rawValue: kUTTypeBundle as String)
    static let pluginBundle = UniformTypeIdentifier(rawValue: kUTTypePluginBundle as String)
    static let spotlightImporter =
        UniformTypeIdentifier(rawValue: kUTTypeSpotlightImporter as String)
    static let quickLookGenerator =
        UniformTypeIdentifier(rawValue: kUTTypeQuickLookGenerator as String)
    static let xpcService = UniformTypeIdentifier(rawValue: kUTTypeXPCService as String)
    static let framework = UniformTypeIdentifier(rawValue: kUTTypeFramework as String)
    static let application = UniformTypeIdentifier(rawValue: kUTTypeApplication as String)
    static let applicationBundle =
        UniformTypeIdentifier(rawValue: kUTTypeApplicationBundle as String)
    static let applicationFile =
        UniformTypeIdentifier(rawValue: kUTTypeApplicationFile as String)
    static let unixExecutable = UniformTypeIdentifier(rawValue: kUTTypeUnixExecutable as String)
    static let windowsExecutable =
        UniformTypeIdentifier(rawValue: kUTTypeWindowsExecutable as String)
    static let javaClass = UniformTypeIdentifier(rawValue: kUTTypeJavaClass as String)
    static let javaArchive = UniformTypeIdentifier(rawValue: kUTTypeJavaArchive as String)
    static let systemPreferencesPane =
        UniformTypeIdentifier(rawValue: kUTTypeSystemPreferencesPane as String)
    static let gnuZipArchive = UniformTypeIdentifier(rawValue: kUTTypeGNUZipArchive as String)
    static let bzip2Archive = UniformTypeIdentifier(rawValue: kUTTypeBzip2Archive as String)
    static let zipArchive = UniformTypeIdentifier(rawValue: kUTTypeZipArchive as String)
    static let spreadsheet = UniformTypeIdentifier(rawValue: kUTTypeSpreadsheet as String)
    static let presentation = UniformTypeIdentifier(rawValue: kUTTypePresentation as String)
    static let database = UniformTypeIdentifier(rawValue: kUTTypeDatabase as String)
    static let vCard = UniformTypeIdentifier(rawValue: kUTTypeVCard as String)
    static let toDoItem = UniformTypeIdentifier(rawValue: kUTTypeToDoItem as String)
    static let calendarEvent = UniformTypeIdentifier(rawValue: kUTTypeCalendarEvent as String)
    static let emailMessage = UniformTypeIdentifier(rawValue: kUTTypeEmailMessage as String)
    static let internetLocation =
        UniformTypeIdentifier(rawValue: kUTTypeInternetLocation as String)
    static let inkText = UniformTypeIdentifier(rawValue: kUTTypeInkText as String)
    static let font = UniformTypeIdentifier(rawValue: kUTTypeFont as String)
    static let bookmark = UniformTypeIdentifier(rawValue: kUTTypeBookmark as String)
    static let _3dContent = UniformTypeIdentifier(rawValue: kUTType3DContent as String)
    static let pkcs12 = UniformTypeIdentifier(rawValue: kUTTypePKCS12 as String)
    static let x509Certificate =
        UniformTypeIdentifier(rawValue: kUTTypeX509Certificate as String)
    static let electronicPublication =
        UniformTypeIdentifier(rawValue: kUTTypeElectronicPublication as String)
    static let log = UniformTypeIdentifier(rawValue: kUTTypeLog as String)
}

// https://developer.apple.com/library/archive/documentation/Miscellaneous/Reference/UTIRef/Articles/System-DeclaredUniformTypeIdentifiers.html
public extension UniformTypeIdentifier {
    static let postscript = UniformTypeIdentifier(rawValue: "com.adobe.postscript")
    static let encapsulatedPostscript =
        UniformTypeIdentifier(rawValue: "com.adobe.encapsulated-postscript")
    static let photoshopImage = UniformTypeIdentifier(rawValue: "com.adobe.photoshop-image")
    static let aiImage = UniformTypeIdentifier(rawValue: "com.adobe.illustrator.ai-image")
    static let wordDocument = UniformTypeIdentifier(rawValue: "com.microsoft.word.doc")
    static let excelSpreadsheet = UniformTypeIdentifier(rawValue: "com.microsoft.excel.xls")
    static let powerpointPresentation =
        UniformTypeIdentifier(rawValue: "com.microsoft.powerpoint.ppt")
    static let advancedSystems =
        UniformTypeIdentifier(rawValue: "com.microsoft.advanced-systems-format")
    static let windowsMediaWM =
        UniformTypeIdentifier(rawValue: "com.microsoft.windows-media-wm")
    static let windowsMediaWMV =
        UniformTypeIdentifier(rawValue: "com.microsoft.windows-media-wmv")
    static let windowsMediaWMP =
        UniformTypeIdentifier(rawValue: "com.microsoft.windows-media-wmp")
    static let windowsMediaWMA =
        UniformTypeIdentifier(rawValue: "com.microsoft.windows-media-wma")
    static let advancedStreamRedirector =
        UniformTypeIdentifier(rawValue: "com.microsoft.advanced-stream-redirector")
    static let windowsMediaWMX =
        UniformTypeIdentifier(rawValue: "com.microsoft.windows-media-wmx")
    static let windowsMediaWVX =
        UniformTypeIdentifier(rawValue: "com.microsoft.windows-media-wvx")
    static let windowsMediaWAX =
        UniformTypeIdentifier(rawValue: "com.microsoft.windows-media-wax")
    static let keynotePresentation = UniformTypeIdentifier(rawValue: "com.apple.keynote.key")
    static let keynoteTheme = UniformTypeIdentifier(rawValue: "com.apple.keynote.kth")
    static let pagesDocument = UniformTypeIdentifier(rawValue: "com.apple.iwork.pages.pages")
    static let numbersSpreadsheet =
        UniformTypeIdentifier(rawValue: "com.apple.iwork.numbers.numbers")
    static let tgaImage = UniformTypeIdentifier(rawValue: "com.truevision.tga-image")
    static let sgiImage = UniformTypeIdentifier(rawValue: "com.sgi.sgi-image")
    static let openEXRImage = UniformTypeIdentifier(rawValue: "com.ilm.openexr-image")
    static let flashPixImage = UniformTypeIdentifier(rawValue: "com.kodak.flashpix.image")
    static let jfxFax = UniformTypeIdentifier(rawValue: "com.j2.jfx-fax")
    static let efxFax = UniformTypeIdentifier(rawValue: "com.js.efx-fax")
    static let sd2Audio = UniformTypeIdentifier(rawValue: "com.digidesign.sd2-audio")
    static let realMedia = UniformTypeIdentifier(rawValue: "com.real.realmedia")
    static let realMediaAudio = UniformTypeIdentifier(rawValue: "com.real.realaudio")
    static let stuffitArchive = UniformTypeIdentifier(rawValue: "com.allume.stuffit-archive")
}

public extension UniformTypeIdentifier {
    static let apng = UniformTypeIdentifier(mimeType: "image/apng")!
    static let avif = UniformTypeIdentifier(mimeType: "image/avif")!
    static let webp = UniformTypeIdentifier(rawValue: "org.webmproject.webp")
    static let flash = UniformTypeIdentifier(mimeType: "video/x-flv")!
    static let webmVideo = UniformTypeIdentifier(mimeType: "video/webm")!
    static let _3gp = UniformTypeIdentifier(mimeType: "video/3gpp")!
    static let oggVideo = UniformTypeIdentifier(mimeType: "video/ogg")!
    static let webmAudio = UniformTypeIdentifier(mimeType: "audio/webm")!
    static let oggAudio = UniformTypeIdentifier(mimeType: "audio/ogg")!
    static let oggApplication = UniformTypeIdentifier(mimeType: "application/ogg")!
}

public extension UniformTypeIdentifier {
    static let googleDocument = UniformTypeIdentifier(
        mimeType: "application/vnd.google-apps.document",
        conformingTo: .compositeContent
    )!
    static let googleSlidesPresentation = UniformTypeIdentifier(
        mimeType: "application/vnd.google-apps.presentation",
        conformingTo: .presentation
    )!
    static let googleSheetsSpreadsheet = UniformTypeIdentifier(
        mimeType: "application/vnd.google-apps.spreadsheet",
        conformingTo: .spreadsheet
    )!
}

public extension UniformTypeIdentifier {
    static let wordDocumentXML =
        UniformTypeIdentifier(rawValue: "org.openxmlformats.wordprocessingml.document")
    static let excelSpreadsheetXML =
        UniformTypeIdentifier(rawValue: "org.openxmlformats.spreadsheetml.sheet")
    static let powerpointPresentationXML =
        UniformTypeIdentifier(rawValue: "org.openxmlformats.presentationml.presentation")
}

extension UniformTypeIdentifier {
    static let fileExtension =
        UniformTypeIdentifier(rawValue: kUTTagClassFilenameExtension as String)
    static let mimeType = UniformTypeIdentifier(rawValue: kUTTagClassMIMEType as String)
}
