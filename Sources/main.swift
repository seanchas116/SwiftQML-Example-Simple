import SwiftQML

let app = Application(arguments: Process.arguments)
let engine = Engine()
let component = Component(engine: engine)
let qml = "import QtQuick 2.2; import QtQuick.Controls 1.1; " +
          "ApplicationWindow { visible: true; width: 200; height: 100; title: 'Hello, world!'; }"
try! component.setData(qml, path: "test.qml")
let window = try! component.create()
window.callMethod("show", [])

app.exec()
