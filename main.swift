//
//  main.swift
//  comparing students
//
//  Created by ELİF on 6.09.2024.
//

import Foundation

/* 6. Öğrenci Notları ile Sınıf Durumu Analizi
 Açıklama: Kullanıcının girdiği öğrenci notlarına göre notların ortalamasını ve en yüksek notu hesaplar.
 Gerekenler:
 * Diziler
 * Ortalama ve maksimum değer hesaplama
 * for döngüsü
 İpucu: Notları bir dizi içinde saklayıp, çeşitli hesaplamalar yaparak analizi gerçekleştirebilirsiniz. */

var notlar : [Int] = []
// var studentName = ""

print("öğrencilerin notlarını giriniz. 00 girdiğinizde not girme işlemi durdurulacaktır.")

for i in 1... {
    print("\(i). notu giriniz.")
    if let a = readLine(), let b = Int(a) {
        if b == 00 { break }
        notlar.append(b)
        
    } }

var dizi : [Int] = []

dizi = notlar.sorted()

print(  dizi )

print("en yüksek not : \(dizi.last!)")

print("en düşük not : \(dizi.first!)")

print("")
print("")
print("")

// aşağıdaki kodlarda sadece notları değil öğrenci ismi ve aldığı not şeklinde çıktı sağlar

var dictionary: [String: Int] = [:]

print("İSİME bitti , NOTA 00 YAZDIĞINIZ ZAMAN ÖĞRENCİ İSMİ VE NOT ALMA İŞLEMİ SONLANIR. DİĞER İŞLEMLERE GEÇER ")

print("")
print("")
print("")

for _ in 1... {
    print("Öğrenci adını giriniz.")
    if let c = readLine() {
        print("Öğrenci notunu giriniz.")
        if let d = readLine(), let e = Int(d) {
            if c == "bitti" { break }
            dictionary[c] = e
            
            
        }
    }
}

print("")
print("")

print(dictionary)

print("")

if let highestScore = dictionary.max(by: { $0.value < $1.value }) {
        print("En yüksek notu alan: \(highestScore.key) - Not: \(highestScore.value)")
    }

    // En düşük notu alan öğrenciyi bul
    if let lowestScore = dictionary.min(by: { $0.value < $1.value }) {
        print("En düşük notu alan: \(lowestScore.key) - Not: \(lowestScore.value)")
    }




