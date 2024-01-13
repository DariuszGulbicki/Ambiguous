extension Ambiguous {
    
    public var isNil: Bool {
        return value == nil
    }

    public var notNil: Bool {
        return value != nil
    }

}

prefix func !(ambiguous: Ambiguous) -> Ambiguous? {
    return ambiguous.isNil ? nil : Ambiguous(!ambiguous.bool)
}