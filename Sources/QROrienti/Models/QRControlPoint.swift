import Foundation

public struct QRControlPoint: Codable {
    let code: String
    let id: UUID
    let name: String
    let updatedAt: Date
}
