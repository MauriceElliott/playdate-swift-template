import PlaydateKit

// MARK: - Game

final class Game: PlaydateGame {
    // MARK: Lifecycle
    let titleText = "Hello My King!"
    init() {
        
    }

    func update() -> Bool {
        Graphics.drawText(titleText, at: (Point(x: 200, y: 120)))
        System.drawFPS()
        return true
    }

    func gameWillPause() {
        print("Paused!")
    }
}

class Logo: Sprite.Sprite {
    override init() {
        super.init()
        image = try! Graphics.Bitmap(path: "logo.png")
        bounds = .init(x: 0, y: 0, width: 400, height: 240)
    }

    override func update() {
        moveBy(dx: 0, dy: sinf(System.elapsedTime * 4))
    }
}
