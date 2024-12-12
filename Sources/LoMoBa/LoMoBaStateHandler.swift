public class LoMoBaStateHandler: @unchecked Sendable {
    public static let `default` = LoMoBaStateHandler()

    internal private(set) var locale = "en"

    private init() {}

    internal func setLocale(locale: String) {
        self.locale = locale
    }
}