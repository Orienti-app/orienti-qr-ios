import Foundation
import Gzip

@available(iOS 13.0, *)
public class QRService {
    public init() {
        
    }
    
    public func encode(content: QRContainer) -> String {
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .iso8601
        
        let compressed = try! encoder.encode(content).gzipped(level: .bestCompression)
        return compressed.base64EncodedString()
    }
    
    public func decode(content: String) -> QRContainer? {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        if let decodedData = Data(base64Encoded: content) {
            do {
                let decompressed = try decodedData.gunzipped()
                return try! decoder.decode(QRContainer.self, from: decompressed)
            } catch {
                return nil;
            }
        }
        
        return nil;
    }
}
