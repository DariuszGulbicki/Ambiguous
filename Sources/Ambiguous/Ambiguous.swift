public class Ambiguous: ExpressibleByArrayLiteral, ExpressibleByBooleanLiteral, ExpressibleByFloatLiteral, ExpressibleByIntegerLiteral, ExpressibleByNilLiteral, ExpressibleByStringLiteral {

    public static let `nil` = Ambiguous(nil)
    public static let `true` = Ambiguous(true)
    public static let `false` = Ambiguous(false)
    public static let emptyArray = Ambiguous([])
    public static let emptyDictionary = Ambiguous([:])
    public static let emptyString = Ambiguous("")
    public static let zero = Ambiguous(0)

    private let _value: Any?

    public var value: Any? {
        return _value
    }

    public init(_ value: Any?) {
        self._value = value
    }

    public required init(arrayLiteral elements: Any...) {
        self._value = elements
    }

    public required init(booleanLiteral value: Bool) {
        self._value = value
    }

    public required init(floatLiteral value: Double) {
        self._value = value
    }

    public required init(integerLiteral value: Int) {
        self._value = value
    }

    public required init(nilLiteral: ()) {
        self._value = nil
    }

    public required init(stringLiteral value: String) {
        self._value = value
    }

    public func isOfType<T>(_ type: T.Type) -> Bool {
        return _value is T
    }

    public func dictionary<T, U>() -> [T: U] {
        return _value as? [T: U] ?? [:]
    }

    public func predict<T>(_ type: T.Type) -> Predictable<T>? {
        let value = _value as? T
        if let value = value {
            return Predictable(value)
        } else {
            return nil
        }
    }

    public func map<T>(_ transform: (Any) throws -> T) rethrows -> T? {
        if let value = _value {
            return try transform(value)
        } else {
            return nil
        }
    }

}