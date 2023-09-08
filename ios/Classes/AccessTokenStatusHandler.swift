import SpotifyiOS

class AccessTokenStatusHandler: StatusHandler {
    var tokenChanged: FlutterResult?
    
    func accessTokenReceived() {
        tokenChanged?(true)
        eventSink?("{\"token_changed\": true}")

        tokenChanged = nil
    }

}
