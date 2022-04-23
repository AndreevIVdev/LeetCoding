class Codec {
    var dic: [String: String] = [:]
    
    func encode(_ longUrl: String) -> String {
        let tiny = UUID().uuidString
        dic[tiny] = longUrl
        return tiny
    }
    
    func decode(_ shortUrl: String) -> String {
        dic[shortUrl, default: ""]
    }
}
