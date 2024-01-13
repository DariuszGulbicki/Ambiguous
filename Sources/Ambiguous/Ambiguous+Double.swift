extension Ambiguous {
    
    public var double: Double {
        return value as? Double ?? 0
    }

    public var isDouble: Bool {
        return isOfType(Double.self)
    }

    public var doubleArray: [Double] {
        return value as? [Double] ?? []
    }

    public var isDoubleArray: Bool {
        return isOfType([Double].self)
    }
    
}

func +(lhs: Ambiguous, rhs: Double) -> Double {
    return lhs.double + rhs
}

func +(lhs: Double, rhs: Ambiguous) -> Double {
    return lhs + rhs.double
}

func +=(lhs: inout Double, rhs: Ambiguous) {
    lhs += rhs.double
}

func +=(lhs: inout Ambiguous, rhs: Double) {
    lhs = Ambiguous(lhs.double + rhs)
}

func -(lhs: Ambiguous, rhs: Double) -> Double {
    return lhs.double - rhs
}

func -(lhs: Double, rhs: Ambiguous) -> Double {
    return lhs - rhs.double
}

func -=(lhs: inout Double, rhs: Ambiguous) {
    lhs -= rhs.double
}

func -=(lhs: inout Ambiguous, rhs: Double) {
    lhs = Ambiguous(lhs.double - rhs)
}

func *(lhs: Ambiguous, rhs: Double) -> Double {
    return lhs.double * rhs
}

func *(lhs: Double, rhs: Ambiguous) -> Double {
    return lhs * rhs.double
}

func *=(lhs: inout Double, rhs: Ambiguous) {
    lhs *= rhs.double
}

func *=(lhs: inout Ambiguous, rhs: Double) {
    lhs = Ambiguous(lhs.double * rhs)
}

func /(lhs: Ambiguous, rhs: Double) -> Double {
    return lhs.double / rhs
}

func /(lhs: Double, rhs: Ambiguous) -> Double {
    return lhs / rhs.double
}

func /=(lhs: inout Double, rhs: Ambiguous) {
    lhs /= rhs.double
}

func /=(lhs: inout Ambiguous, rhs: Double) {
    lhs = Ambiguous(lhs.double / rhs)
}

func %(lhs: Ambiguous, rhs: Double) -> Double {
    return lhs.double.truncatingRemainder(dividingBy: rhs)
}

func %(lhs: Double, rhs: Ambiguous) -> Double {
    return lhs.truncatingRemainder(dividingBy: rhs.double)
}

func %=(lhs: inout Double, rhs: Ambiguous) {
    lhs = lhs.truncatingRemainder(dividingBy: rhs.double)
}

func %=(lhs: inout Ambiguous, rhs: Double) {
    lhs = Ambiguous(lhs.double.truncatingRemainder(dividingBy: rhs))
}

func <(lhs: Ambiguous, rhs: Double) -> Bool {
    return lhs.double < rhs
}

func <(lhs: Double, rhs: Ambiguous) -> Bool {
    return lhs < rhs.double
}

func <=(lhs: Ambiguous, rhs: Double) -> Bool {
    return lhs.double <= rhs
}

func <=(lhs: Double, rhs: Ambiguous) -> Bool {
    return lhs <= rhs.double
}

func >(lhs: Ambiguous, rhs: Double) -> Bool {
    return lhs.double > rhs
}

func >(lhs: Double, rhs: Ambiguous) -> Bool {
    return lhs > rhs.double
}

func >=(lhs: Ambiguous, rhs: Double) -> Bool {
    return lhs.double >= rhs
}

func >=(lhs: Double, rhs: Ambiguous) -> Bool {
    return lhs >= rhs.double
}

func +(lhs: Ambiguous, rhs: [Double]) -> [Double] {
    return lhs.doubleArray + rhs
}

func +(lhs: [Double], rhs: Ambiguous) -> [Double] {
    return lhs + rhs.doubleArray
}

func +=(lhs: inout [Double], rhs: Ambiguous) {
    lhs += rhs.doubleArray
}

func +=(lhs: inout Ambiguous, rhs: [Double]) {
    lhs = Ambiguous(lhs.doubleArray + rhs)
}