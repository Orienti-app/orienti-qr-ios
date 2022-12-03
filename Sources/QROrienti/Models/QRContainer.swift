import Foundation

public struct QRContainer: Codable {
    let type: QRType
    let run: QRRun?
    let controlPoint: QRControlPoint?
    let track: QRTrackContainer?
}
