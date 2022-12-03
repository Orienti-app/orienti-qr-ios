import Foundation

public struct QRContainer: Codable {
    public let type: QRType
    public let run: QRRun?
    public let controlPoint: QRControlPoint?
    public let track: QRTrackContainer?
}
