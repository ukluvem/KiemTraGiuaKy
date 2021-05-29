//
//  main.swift
//  BaithiGiuaky
//
//  Created by Apple on 28/05/2021.
//

import Foundation

// MARK: - Bài 1

func veHCN() {
    print("Nhập chiều dài: ")
    let chieuDai = readLine()
    print("Nhập chiều rộng: ")
    let chieuRong = readLine()
    
    guard let chieuDais = chieuDai, let chieuRongs = chieuRong, let n = Int(chieuDais), let m = Int(chieuRongs) else {
        return
    }
    
    for i in 1...n {
        for k in 1...m {
            if i == 1 || k == 1 || i == n || k == m {
                print("*", terminator: "")
            } else {
                print(" ", terminator: "")
            }
        }
        print()
    }
    
}
//veHCN()

//MARK: Bài 2


func nhapNgayThangNam() {
    print("Nhập ngày: ")
    let day = readLine()
    print("Nhập tháng: ")
    let month = readLine()
    print("Nhập năm: ")
    let year = readLine()
    
    var ngayTruoc = 0
    var ngaySau = 0
    
    guard let days = day, let months = month, let years = year, let ngay = Int(days), let thang = Int(months), let nam = Int(years) else {
        return
    }
    
    if nam % 4 == 0 && nam % 100 != 0 || nam % 400 == 0 {
        if thang == 2 && thang != 1 && thang != 3 && thang != 4 && thang != 5 && thang != 6 && thang != 7 && thang != 8 && thang != 9 && thang != 10 && thang != 11 && thang != 12 {
            print("Tháng \(thang) có 29 ngày")
        }
    } else {
        print("Tháng \(thang) có 28 ngày")
    }
    switch thang {
    case 1, 3, 5, 7, 8, 10, 12:
        print("Tháng \(thang) có 31 ngày")
    case 4, 6, 9, 11:
        print("Tháng \(thang) có 30 ngày")
    default:
        print("--------")
    }
    
    if ngay < 0 || ngay > 31 {
        return
    } else if ngay == 1 {
        print("Trước ngày \(ngay) không có")
        ngaySau = ngay + 1
        print("Sau ngày \(ngay) là ngày \(ngaySau)")
    } else if ngay == 31 || ngay == 30 {
        print("Sau ngày \(ngay) không có")
        ngayTruoc = ngay - 1
        print("Trước ngày \(ngay) là ngày \(ngayTruoc)")
    } else {
        ngayTruoc = ngay - 1
        ngaySau = ngayTruoc + 2
        print("Trước ngày \(ngay) là \(ngayTruoc)")
        print("Sau ngày \(ngay) là \(ngaySau)")
    }
    
}

//nhapNgayThangNam()

//MARK: Bài 3

func miniGame() {
    print("Mời nhập số: ")
    let nhapSo = readLine()
    
    let random = Int.random(in: 1...100)
    print("Số random là \(Int(random))")
    print("-------------------------")
    
    guard let nhapSos = nhapSo, let nhap = Int(nhapSos) else {
        return
    }
    
    if nhap < 1 || nhap > 100 {
        print("Nhập sai số")
        miniGame()
    } else if nhap == random {
        print("Chúc mừng bạn đã giành chiến thắng \(nhap) = \(random)")
    } else if nhap > random {
        print("Số lớn quá!!!")
        miniGame()
    } else {
        print("Số bé quá!!!")
        miniGame()
    }
}

miniGame()
