public class LoMoBa: @unchecked Sendable {
    private init() {}

    public static var locale: String {
        get {
            LoMoBaStateHandler.default.locale
        } set {
            LoMoBaStateHandler.default.setLocale(locale: newValue)
        }
    }

    public static var person: FakePerson {
        FakePerson()
    }
}