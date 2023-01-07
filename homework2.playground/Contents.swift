import UIKit


class Homework2 {
    
    //Dereceyi Fahrenhiet'e dönüştürür.
    
    func celsiusToFahrenheit(number:Double)->Double {
        
        var fahrenheit = ((number*1.8)+32)
        return fahrenheit
    }
    //Dikdörtgen çevresini hesaplar.
    
    func rectangularPerimeter(short:Int,long:Int){
        
        var perimeter = (2 * (short+long) )
        print("Rectangular Perimeter : \(perimeter)")
    }
    //Faktöriyel hesaplar.
    func factorialCalculation(number:Int)->Int {
        
        var result = 1
        
        for i in stride(from: 1, through: number, by: 1) {
            result *= i
        }
        return result
    }
    //Kelimedeki a harfi sayısını bulur.
    func AFind(word:String){
        
        var result = 0
        
        for i in word {
            if(i == "A" || i == "a" ){
                result += 1
            }
        }
        print("Found \(result) letters A." )
    }
    //Kenar sayısına göre iç açılarını hesaplar.
    
    func calculatingInteriorAngles(number:Int) ->Int {
        
        var result = 1
        if(number>2){
            result = ((number-2)*180)
        }
        return result
    }
    //Maas hesaplaması yapar .
    
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
    //Kotaya göre ücret hesaplaması yapar .
    
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

//Verilen dereceyi Fahrenheit'a cevirir.
//Örnek Değer : 23
var result1 = homework2.celsiusToFahrenheit(number: 23)
print("23 C = \(result1) F")

//Dikdörtgen cevresini hesaplar
//Örnek Değerler : 14 ,8
homework2.rectangularPerimeter(short: 14, long: 8)


//Faktçriyeli hesaplar.
//Örnek Değer: 4
var result3 = homework2.factorialCalculation(number:4)
print("4! = \(result3)")

//Kelimedeki A harfi sayisini bulur.
homework2.AFind(word: "BurakKara")


//Kenar sayısına göre iç açılarını hesaplar.
//Örnek Değer : 3
var result5 = homework2.calculatingInteriorAngles(number: 3)
print("Interior Angles = \(result5)")


//Gün sayısına göre maaş hesaplar
//Örnek Değer : 30
var result6 = homework2.wageCalculator(day: 30)
print("Wage : \(result6)")


//Kota miktarına göre ücret hesaplar.
//Örnek Değer : 60
var result7 = homework2.internetPay(quota: 60)
print("Pay : \(result7)")
