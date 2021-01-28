import UIKit
import Foundation
let closeRange = 0...10
let halfCloseRange = 0..10

for i in closeRange{
    if i % 2 == 0{
        print("짝수: \(i)")
    }
}

for i in closeRange where i % 2 == 0 {
    print("짝수: \(i)")
}

for i in closeRange{
    if i == 3 {
        continue
    }
    print("짝수\(i)")
}
