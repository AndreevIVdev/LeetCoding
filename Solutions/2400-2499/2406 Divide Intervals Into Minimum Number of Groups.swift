import CoreFoundation

public struct Heap<T> {
    private var heap: CFBinaryHeap
    private var pointer: UnsafeMutablePointer<T>
    public var count: Int { CFBinaryHeapGetCount(heap) }
    public var isEmpty: Bool { CFBinaryHeapGetCount(heap) == 0 }
    init(callbacks: inout CFBinaryHeapCallBacks) {
        heap = CFBinaryHeapCreate(nil, 0, &callbacks, nil)
        pointer = UnsafeMutablePointer<T>.allocate(capacity: 1)
    }
    
    public func peek() -> T? {
        guard !isEmpty else { return nil }
        let t: T = CFBinaryHeapGetMinimum(heap).load(as: T.self)
        return t
    }
    
    public mutating func insert(_ value: T) {
        pointer = UnsafeMutablePointer<T>.allocate(capacity: 1)
        pointer.initialize(to: value)
        CFBinaryHeapAddValue(heap, pointer)
    }
    
    @discardableResult public mutating func remove() -> T? {
        if let t = peek() {
            CFBinaryHeapRemoveMinimumValue(heap)
            return t
        } else {
            return nil
        }
    }
}

class Solution {
    func minGroups(_ intervals: [[Int]]) -> Int {
        let intervals = intervals.sorted(by: { $0[0] < $1[0] })
        var callbacks = CFBinaryHeapCallBacks()
        callbacks.compare = { (a, b, _) in
            let x: Int = a!.load(as: Int.self)
            let y: Int = b!.load(as: Int.self)
            if x == y {
                return .compareEqualTo
            } else if x < y {
                return .compareLessThan
            } else {
                return .compareGreaterThan
            }
        }
        var heap = Heap<Int>(callbacks: &callbacks)
        
        for interval in intervals {
            if !heap.isEmpty && heap.peek()! < interval[0] {
                heap.remove()
            }
            heap.insert(interval[1])
        }
        
        return heap.count
    }
}
