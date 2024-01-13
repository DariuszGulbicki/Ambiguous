extension Ambiguous: CustomStringConvertible {
    
    public var string: String {
        if let value = value {
            return String(describing: value)
        } else {
            return "nil"
        }
    }

    public var isString: Bool {
        return isOfType(String.self)
    }

    public var isStringConvertible: Bool {
        return isOfType(CustomStringConvertible.self)
    }

    public var isStringArray: Bool {
        return isOfType([String].self)
    }

    public var stringArray: [String] {
        return value as? [String] ?? []
    }

    public var description: String {
        return string
    }
    
}

func +(lhs: Ambiguous, rhs: String) -> String {
    return lhs.string + rhs
}

func +(lhs: String, rhs: Ambiguous) -> String {
    return lhs + rhs.string
}

func +=(lhs: inout String, rhs: Ambiguous) {
    lhs += rhs.string
}

func +=(lhs: inout Ambiguous, rhs: String) {
    lhs = Ambiguous(lhs.string + rhs)
}

func +(lhs: Ambiguous, rhs: CustomStringConvertible) -> String {
    return lhs.string + rhs.description
}

func +(lhs: CustomStringConvertible, rhs: Ambiguous) -> String {
    return lhs.description + rhs.string
}

func +=(lhs: inout Ambiguous, rhs: CustomStringConvertible) {
    lhs = Ambiguous(lhs.string + rhs.description)
}

func +=(lhs: inout CustomStringConvertible, rhs: Ambiguous) {
    lhs = lhs.description + rhs.string
}

func +(lhs: Ambiguous, rhs: Ambiguous) -> String {
    return lhs.string + rhs.string
}

func +(lhs: Ambiguous, rhs: [String]) -> [String] {
    return lhs.stringArray + rhs
}

func +(lhs: [String], rhs: Ambiguous) -> [String] {
    return lhs + rhs.stringArray
}

func +=(lhs: inout [String], rhs: Ambiguous) {
    lhs += rhs.stringArray
}

func +=(lhs: inout Ambiguous, rhs: [String]) {
    lhs = Ambiguous(lhs.stringArray + rhs)
}

func +(lhs: Ambiguous, rhs: [CustomStringConvertible]) -> [String] {
    return lhs.stringArray + rhs.map { $0.description }
}

func +(lhs: [CustomStringConvertible], rhs: Ambiguous) -> [String] {
    return lhs.map { $0.description } + rhs.stringArray
}

func +=(lhs: inout [CustomStringConvertible], rhs: Ambiguous) {
    lhs += rhs.stringArray
}

func +=(lhs: inout Ambiguous, rhs: [CustomStringConvertible]) {
    lhs = Ambiguous(lhs.stringArray + rhs.map { $0.description })
}