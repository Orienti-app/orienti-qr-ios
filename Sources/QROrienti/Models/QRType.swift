import Foundation

public enum QRType: String, Codable {
    case run = "RUN"
    case track = "TRACK"
    case controlPoint = "CONTROL_POINT"
    case stop = "STOP"
}
