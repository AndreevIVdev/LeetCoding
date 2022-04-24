class UndergroundSystem {
    struct Trip {
        let from: String
        var to: String
        var time: Int
    }
    
    var customers: [Int: [Trip]] = [:]

    init() {}
    
    func checkIn(_ id: Int, _ stationName: String, _ t: Int) {
        customers[id, default: []].append(Trip(from: stationName, to: "", time: t))
    }
    
    func checkOut(_ id: Int, _ stationName: String, _ t: Int) {
        customers[id]![customers[id]!.count - 1].to = stationName
        customers[id]![customers[id]!.count - 1].time = t - customers[id]![customers[id]!.count - 1].time
    }
    
    func getAverageTime(_ startStation: String, _ endStation: String) -> Double {
        var res: Double = 0
        var count: Double = 0
        for customer in customers {
            res += Double(customer.value.filter { $0.from == startStation && $0.to == endStation }.map { $0.time }.reduce(0, +))
            count += Double(customer.value.filter { $0.from == startStation && $0.to == endStation }.count)
        }
        return res / count
    }
}
