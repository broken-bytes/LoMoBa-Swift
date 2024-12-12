public class ProviderManager: @unchecked Sendable {
    public static let `default` = ProviderManager()

    private let firstNameProviders: [String:FirstNameProvider]

    private init() { 
        firstNameProviders = [
            "de": FirstNameProviderDE()
        ]
    }

    public func firstNameProvider(for locale: String) -> FirstNameProvider {
        return firstNameProviders[locale]!
    }
}