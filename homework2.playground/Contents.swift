import UIKit

class Homework2 {
    
    func celsiusToFahrenheit(number:Double)->Double {
        
        var fahrenheit = ((number*1.8)+32)
        return fahrenheit
    }
    func rectangularPerimeter(short:Int,long:Int){
        
        var perimeter = (2 * (short+long) )
        print("Rectangular Perimeter : \(perimeter)")
    }
    func factorialCalculation(number:Int)->Int {
        
        var result = 1
        
        for i in stride(from: 1, through: number, by: 1) {
            result *= i
        }
        return result
    }
    func AFind(word:String){
        
        var result = 0
        
        for i in word {
            if(i == "A" || i == "a" ){
                result += 1
            }
        }
        print("Found \(result) letters A." )
    }
    func calculatingInteriorAngles(number:Int) ->Int {
        
        var result = 1
        if(number>2){
            result = ((number-2)*180)
        }
        return result
    }
    func wageCalculator(day:Int)->Int{
        
        var workingHours = day * 8
        var overTime = 0
        var onTime = 0
        var wage = 0
        
        if workingHours > 160 {
            overTime = workingHours - 160
            onTime = workingHours - overTime
            wage = (onTime * 10)+(overTime * 20)
        }else {
            wage = workingHours * 10
        }
        return wage
    }
    func internetPay(quota:Int)->Int {
        
        var pay : Int = 0
        var extra : Int = 0
        
        if quota > 50 {
            extra = quota - 50
            pay = (extra * 4)+(100)
        }else {
            pay = quota * 2
        }
        return pay
    }
}

var homework2=Homework2()

//Celcius to fahrenheit
var result1 = homework2.celsiusToFahrenheit(number: 23)
print("23 C = \(result1) F")

//Calculates the perimeter of a rectangle
homework2.rectangularPerimeter(short: 14, long: 8)

//Factorial calculation
var result3 = homework2.factorialCalculation(number:4)
print("4! = \(result3)")

//Find the number of a in the word
homework2.AFind(word: "BurakKara")

//Calculating interior angles
var result5 = homework2.calculatingInteriorAngles(number: 3)
print("Interior Angles = \(result5)")

//Wage calculation by day
var result6 = homework2.wageCalculator(day: 30)
print("Wage : \(result6)")

//Calculates quota overage
var result7 = homework2.internetPay(quota: 60)
print("Pay : \(result7)")

