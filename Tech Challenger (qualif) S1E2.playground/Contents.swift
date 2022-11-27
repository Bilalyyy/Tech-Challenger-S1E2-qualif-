import UIKit

func load(file named: String) -> String? {
    guard let fileUrl = Bundle.main.url(forResource: named, withExtension: "txt") else {
        return nil
    }
    guard let content = try? String(contentsOf: fileUrl, encoding: .utf8) else {
        return nil
    }
    return content
}

for numExo in 1...3 {

    var line = load(file: "input\(numExo)")!

    let linesSplit = line.split(separator: " ")

    var lineoccur = [Int]()

    for item in linesSplit {
        let test = Int(item)
        lineoccur.append(test!)
    }

    var output = ""

    lineoccur.forEach { number in
        switch number {
        case 1:
            output.append("a")
        case 11:
            output.append("b")
        case 111:
            output.append("c")
        case 2:
            output.append("d")
        case 22:
            output.append("e")
        case 222:
            output.append("f")
        case 3:
            output.append("g")
        case 33:
            output.append("h")
        case 333:
            output.append("i")
        case 4:
            output.append("j")
        case 44:
            output.append("k")
        case 444:
            output.append("l")
        case 5:
            output.append("m")
        case 55:
            output.append("n")
        case 555:
            output.append("o")
        case 6:
            output.append("p")
        case 66:
            output.append("q")
        case 666:
            output.append("r")
        case 7:
            output.append("s")
        case 77:
            output.append("t")
        case 777:
            output.append("u")
        case 7777:
            output.append("v")
        case 8:
            output.append("w")
        case 88:
            output.append("x")
        case 888:
            output.append("y")
        case 9:
            output.append("z")
        default:
            output.append(" ")
        }
    }

    var resultat: Bool {
        output == load(file: "output\(numExo)")
    }
    print(resultat)
}
