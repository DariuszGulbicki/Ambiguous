public class StringAmbiguous: Ambiguous {
    
    public let _stringValue: String

    public var stringValue: String {
        return _stringValue
    }

    public init(_ string: String) {
        self._stringValue = string
        if let value = Int(string) {
            super.init(value)
        } else if let value = Double(string) {
            super.init(value)
        } else if let value = Bool(string) {
            super.init(value)
        } else {
            super.init(string)
        }
    }

    public required init(arrayLiteral elements: Any...) {
        _stringValue = String(describing: elements)
        super.init(arrayLiteral: elements)
    }

    public required init(booleanLiteral value: Bool) {
        _stringValue = String(describing: value)
        super.init(booleanLiteral: value)
    }

    public required init(floatLiteral value: Double) {
        _stringValue = String(describing: value)
        super.init(floatLiteral: value)
    }

    public required init(integerLiteral value: Int) {
        _stringValue = String(describing: value)
        super.init(integerLiteral: value)
    }

    public required init(nilLiteral: ()) {
        _stringValue = String(describing: nilLiteral)
        super.init(nilLiteral: nilLiteral)
    }

    public required init(stringLiteral string: String) {
        self._stringValue = string
        if let value = Int(string) {
            super.init(value)
        } else if let value = Double(string) {
            super.init(value)
        } else if let value = Bool(string) {
            super.init(value)
        } else {
            super.init(string)
        }
    }

}