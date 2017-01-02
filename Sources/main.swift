import Foundation
import Smud
import StringUtils
import ConsolePlugin

let smud = Smud()

let consolePlugin = ConsolePlugin(smud: smud)

smud.plugins = [
    consolePlugin
]

do {
    try smud.run()
} catch {
    print("\(error)".capitalizingFirstLetter())
}
