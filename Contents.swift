import UIKit

var greeting = "Hello, playground"


enum Choices {
    case scissors
    case paper
    case rock
}

var choice: Choices = .rock

func determineWinner(choiceOfUser: Choices, choiceOfMachine: Choices) {
    if choiceOfUser == .rock && choiceOfMachine == .paper {
        print("Winner is machine, you've lost")
    }
}

protocol RemoteControl { // blueprint
    func channelBack()
    func channelForward()
    func increaseVolume()
    func decreaseVolume()
}

extension RemoteControl {
    func changeSource() {
        print("Switch to DPI dude it's lot more faster than HDMI")
    }
}


class TV: RemoteControl {
    func channelBack() {
        print("I need to show previous channel")
    }
    
    func channelForward() {
        print("I need to show next channel")
    }
    
    func increaseVolume() {
        print("I need to increase volume")
    }
    
    func decreaseVolume() {
        print("I need to decrease volume")
    }
}

var tv = TV()

tv.changeSource()


// Inheritance
// Swift can inherit only one parent

// Protocols


protocol Vehicle {
    
}

protocol Fly {
    
}

class FlyableFerrari: Vehicle, Fly {
    
}

class Ferrari: Vehicle {
    
}

class Porche: Vehicle {
    
}

class Lada: Vehicle {
    
}

class Mazda {
    
}


func checkCar(car: Vehicle) {
    
}

var ferrari = Ferrari()
var lada = Lada()
var porche = Porche()
var mazda = Mazda()

checkCar(car: ferrari)
checkCar(car: lada)
checkCar(car: porche)
//checkCar(car: mazda)


// Optional

var a: String? // nil либо какое-то значение


func getA() {
    printValue(value: a!) // Обещаю компилятору что здесь есть значение
    
    if let value1 = a {
        printValue(value: value1)
    }
    
    guard let value2 = a else { return }
    printValue(value: value2)
    ///fdsfdf
    ///dfdfd
    ///fd
    ///fd
    ///fd
    ///f
    /// Метод добавления фильтров
}
   

func printValue(value: String) {
    print(value)
}

func getSumOfTwo(_ value1: Int, _ value2: Int) {
    
}

func getSumOfTwoSecondVersion(value1: Int, value2: Int) {
    
}

getSumOfTwo(5, 15)
getSumOfTwo(5, 10)

getSumOfTwoSecondVersion(value1: 5, value2: 15)
getSumOfTwoSecondVersion(value1: 10, value2: 40)
