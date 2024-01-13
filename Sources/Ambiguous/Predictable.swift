public class Predictable<T> {
    
    private let _value: T

    private var value : T {
        return _value
    }
    
    public init(_ value: T) {
        self._value = value
    }
    
}