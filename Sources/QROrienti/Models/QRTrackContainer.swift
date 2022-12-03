import Foundation

public struct QRTrackContainer: Codable {
    public let controlPoints: [QRControlPoint]
    public let track: QRTrack
}
