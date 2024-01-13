extension Ambiguous {

    public var bool: Bool {
        return value as? Bool ?? false
    }

    public var isBool: Bool {
        return isOfType(Bool.self)
    }

    public var boolArray: [Bool] {
        return value as? [Bool] ?? []
    }

    public var isBoolArray: Bool {
        return isOfType([Bool].self)
    }

}

func ==(lhs: Ambiguous, rhs: Ambiguous) -> Bool {
    return lhs.bool == rhs.bool
}

func !=(lhs: Ambiguous, rhs: Ambiguous) -> Bool {
    return lhs.bool != rhs.bool
}

func ==(lhs: Ambiguous, rhs: Bool) -> Bool {
    return lhs.bool == rhs
}

func !=(lhs: Ambiguous, rhs: Bool) -> Bool {
    return lhs.bool != rhs
}

func ==(lhs: Bool, rhs: Ambiguous) -> Bool {
    return lhs == rhs.bool
}

func !=(lhs: Bool, rhs: Ambiguous) -> Bool {
    return lhs != rhs.bool
}

func ==(lhs: Ambiguous, rhs: Int) -> Bool {
    return lhs.bool == (rhs != 0)
}

func !=(lhs: Ambiguous, rhs: Int) -> Bool {
    return lhs.bool != (rhs != 0)
}

func ==(lhs: Int, rhs: Ambiguous) -> Bool {
    return (lhs != 0) == rhs.bool
}

func !=(lhs: Int, rhs: Ambiguous) -> Bool {
    return (lhs != 0) != rhs.bool
}

func ==(lhs: Ambiguous, rhs: Double) -> Bool {
    return lhs.bool == (rhs != 0)
}

func !=(lhs: Ambiguous, rhs: Double) -> Bool {
    return lhs.bool != (rhs != 0)
}

func ==(lhs: Double, rhs: Ambiguous) -> Bool {
    return (lhs != 0) == rhs.bool
}

func !=(lhs: Double, rhs: Ambiguous) -> Bool {
    return (lhs != 0) != rhs.bool
}

func ==(lhs: Ambiguous, rhs: String) -> Bool {
    return lhs.string == rhs
}

func !=(lhs: Ambiguous, rhs: String) -> Bool {
    return lhs.string != rhs
}

func ==(lhs: String, rhs: Ambiguous) -> Bool {
    return lhs == rhs.string
}

func !=(lhs: String, rhs: Ambiguous) -> Bool {
    return lhs != rhs.string
}

func ==(lhs: Ambiguous, rhs: Any) -> Bool {
    return lhs.value as AnyObject === rhs as AnyObject
}

func !=(lhs: Ambiguous, rhs: Any) -> Bool {
    return lhs.value as AnyObject !== rhs as AnyObject
}

func ==(lhs: Any, rhs: Ambiguous) -> Bool {
    return lhs as AnyObject === rhs.value as AnyObject
}

func !=(lhs: Any, rhs: Ambiguous) -> Bool {
    return lhs as AnyObject !== rhs.value as AnyObject
}

func ==(lhs: Ambiguous, rhs: [String]) -> Bool {
    return lhs.stringArray == rhs
}

func !=(lhs: Ambiguous, rhs: [String]) -> Bool {
    return lhs.stringArray != rhs
}

func ==(lhs: [String], rhs: Ambiguous) -> Bool {
    return lhs == rhs.stringArray
}

func !=(lhs: [String], rhs: Ambiguous) -> Bool {
    return lhs != rhs.stringArray
}

func ==(lhs: Ambiguous, rhs: [Any]) -> Bool {
    return lhs.value as AnyObject === rhs as AnyObject
}

func !=(lhs: Ambiguous, rhs: [Any]) -> Bool {
    return lhs.value as AnyObject !== rhs as AnyObject
}

func ==(lhs: [Any], rhs: Ambiguous) -> Bool {
    return lhs as AnyObject === rhs.value as AnyObject
}

func !=(lhs: [Any], rhs: Ambiguous) -> Bool {
    return lhs as AnyObject !== rhs.value as AnyObject
}

func ==(lhs: Ambiguous, rhs: [Int]) -> Bool {
    return lhs.intArray == rhs
}

func !=(lhs: Ambiguous, rhs: [Int]) -> Bool {
    return lhs.intArray != rhs
}

func ==(lhs: [Int], rhs: Ambiguous) -> Bool {
    return lhs == rhs.intArray
}

func !=(lhs: [Int], rhs: Ambiguous) -> Bool {
    return lhs != rhs.intArray
}

func ==(lhs: Ambiguous, rhs: [Double]) -> Bool {
    return lhs.doubleArray == rhs
}

func !=(lhs: Ambiguous, rhs: [Double]) -> Bool {
    return lhs.doubleArray != rhs
}

func ==(lhs: [Double], rhs: Ambiguous) -> Bool {
    return lhs == rhs.doubleArray
}

func !=(lhs: [Double], rhs: Ambiguous) -> Bool {
    return lhs != rhs.doubleArray
}

func ==(lhs: Ambiguous, rhs: [Bool]) -> Bool {
    return lhs.boolArray == rhs
}

func !=(lhs: Ambiguous, rhs: [Bool]) -> Bool {
    return lhs.boolArray != rhs
}

func ==(lhs: [Bool], rhs: Ambiguous) -> Bool {
    return lhs == rhs.boolArray
}

func !=(lhs: [Bool], rhs: Ambiguous) -> Bool {
    return lhs != rhs.boolArray
}

func ==(lhs: Ambiguous, rhs: [String: Any]) -> Bool {
    return lhs.value as AnyObject === rhs as AnyObject
}

func !=(lhs: Ambiguous, rhs: [String: Any]) -> Bool {
    return lhs.value as AnyObject !== rhs as AnyObject
}

func ==(lhs: [String: Any], rhs: Ambiguous) -> Bool {
    return lhs as AnyObject === rhs.value as AnyObject
}

func !=(lhs: [String: Any], rhs: Ambiguous) -> Bool {
    return lhs as AnyObject !== rhs.value as AnyObject
}