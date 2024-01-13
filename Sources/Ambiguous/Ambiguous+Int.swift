extension Ambiguous {
    
    public var int: Int {
        return value as? Int ?? 0
    }

    public var isInt: Bool {
        return isOfType(Int.self)
    }

    public var intArray: [Int] {
        return value as? [Int] ?? []
    }

    public var isIntArray: Bool {
        return isOfType([Int].self)
    }
    
}

func +(lhs: Ambiguous, rhs: Int) -> Int {
    return lhs.int + rhs
}

func +(lhs: Int, rhs: Ambiguous) -> Int {
    return lhs + rhs.int
}

func +=(lhs: inout Int, rhs: Ambiguous) {
    lhs += rhs.int
}

func +=(lhs: inout Ambiguous, rhs: Int) {
    lhs = Ambiguous(lhs.int + rhs)
}

func -(lhs: Ambiguous, rhs: Int) -> Int {
    return lhs.int - rhs
}

func -(lhs: Int, rhs: Ambiguous) -> Int {
    return lhs - rhs.int
}

func -=(lhs: inout Int, rhs: Ambiguous) {
    lhs -= rhs.int
}

func -=(lhs: inout Ambiguous, rhs: Int) {
    lhs = Ambiguous(lhs.int - rhs)
}

func *(lhs: Ambiguous, rhs: Int) -> Int {
    return lhs.int * rhs
}

func *(lhs: Int, rhs: Ambiguous) -> Int {
    return lhs * rhs.int
}

func *=(lhs: inout Int, rhs: Ambiguous) {
    lhs *= rhs.int
}

func *=(lhs: inout Ambiguous, rhs: Int) {
    lhs = Ambiguous(lhs.int * rhs)
}

func /(lhs: Ambiguous, rhs: Int) -> Int {
    return lhs.int / rhs
}

func /(lhs: Int, rhs: Ambiguous) -> Int {
    return lhs / rhs.int
}

func /=(lhs: inout Int, rhs: Ambiguous) {
    lhs /= rhs.int
}

func /=(lhs: inout Ambiguous, rhs: Int) {
    lhs = Ambiguous(lhs.int / rhs)
}

func %(lhs: Ambiguous, rhs: Int) -> Int {
    return lhs.int % rhs
}

func %(lhs: Int, rhs: Ambiguous) -> Int {
    return lhs % rhs.int
}

func %=(lhs: inout Int, rhs: Ambiguous) {
    lhs %= rhs.int
}

func %=(lhs: inout Ambiguous, rhs: Int) {
    lhs = Ambiguous(lhs.int % rhs)
}

func <(lhs: Ambiguous, rhs: Int) -> Bool {
    return lhs.int < rhs
}

func <(lhs: Int, rhs: Ambiguous) -> Bool {
    return lhs < rhs.int
}

func <=(lhs: Ambiguous, rhs: Int) -> Bool {
    return lhs.int <= rhs
}

func <=(lhs: Int, rhs: Ambiguous) -> Bool {
    return lhs <= rhs.int
}

func >(lhs: Ambiguous, rhs: Int) -> Bool {
    return lhs.int > rhs
}

func >(lhs: Int, rhs: Ambiguous) -> Bool {
    return lhs > rhs.int
}

func >=(lhs: Ambiguous, rhs: Int) -> Bool {
    return lhs.int >= rhs
}

func >=(lhs: Int, rhs: Ambiguous) -> Bool {
    return lhs >= rhs.int
}

func +=(lhs: inout Ambiguous, rhs: [Int]) {
    lhs = Ambiguous(lhs.intArray + rhs)
}

func +(lhs: Ambiguous, rhs: [Int]) -> [Int] {
    return lhs.intArray + rhs
}

func +(lhs: [Int], rhs: Ambiguous) -> [Int] {
    return lhs + rhs.intArray
}

func +=(lhs: inout [Int], rhs: Ambiguous) {
    lhs += rhs.intArray
}