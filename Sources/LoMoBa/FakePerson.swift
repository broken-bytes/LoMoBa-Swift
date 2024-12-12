import Person
import Providers
import Shared

public struct FakePerson {
    public init() {}

    public func firstName() -> String {
        let sexRand = Int.random(in: 0...2)

        return switch sexRand {
            case 0:
                firstName(sex: .female)
            case 1:
                firstName(sex: .male)
            default:
                ProviderManager.default.firstNameProvider(for: LoMoBaStateHandler.default.locale).generic()
        }
    }

    public func firstName(sex: Sex) -> String {
        return switch sex {
            case .female:
                ProviderManager.default.firstNameProvider(for: LoMoBaStateHandler.default.locale).female()
            case .male:
                ProviderManager.default.firstNameProvider(for: LoMoBaStateHandler.default.locale).male()
        }
    }
}