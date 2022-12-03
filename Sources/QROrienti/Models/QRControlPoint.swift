import Foundation

public struct QRControlPoint: Codable {
    public let code: String
    public let id: UUID
    public let name: String
    public let updatedAt: Date
}
