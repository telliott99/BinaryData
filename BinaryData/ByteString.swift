public typealias ByteString = String

public extension ByteString {
    
    /* e.g. put spaces every 2 characters */
    /* works with characters, not UTF8, so only for ByteString */
    
    public func insertSeparator(sep: String, every n: Int) -> ByteString {
        
        let ret = self.divideIntoChunks(size: n)
        return ret.joinWithSeparator(sep)
    }
}

