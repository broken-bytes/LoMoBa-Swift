import Testing
@testable import LoMoBa

@Test func example() async throws {
    LoMoBa.locale = "de"
    print(LoMoBa.person.firstName())
}
