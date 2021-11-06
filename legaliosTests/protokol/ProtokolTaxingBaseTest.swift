//
// Created by Ladislav Lisy on 16.07.2021.
//

import Foundation

@testable import legalios

func exportPropsIntLine<B : ProviderFactory<P, ProviderTaxing>, P : IPropsTaxing>(protokol: FileHandle, testYear: Int16, sut: B, function: (P) -> Int32) {
    exportPropsYear(protokol: protokol, value: testYear)

    for testMonth in 1...12 {
        let testPeriod = Period(year: testYear, month: Int16(testMonth))
        let testResult: P = sut.getProps(testPeriod)
        let testValue: Int32 = function(testResult)

        exportPropsValue(protokol: protokol, value: testValue)
    }

    exportPropsEnd(protokol: protokol)
}

func exportPropsDecLine<B : ProviderFactory<P, ProviderTaxing>, P : IPropsTaxing>(protokol: FileHandle, testYear: Int16, sut: B, function: (P) -> Decimal) {
    exportPropsYear(protokol: protokol, value: testYear)

    for testMonth in 1...12 {
        let testPeriod = Period(year: testYear, month: Int16(testMonth))
        let testResult: P = sut.getProps(testPeriod)
        let testValue: Decimal = function(testResult)

        exportPropsValue(protokol: protokol, value: testValue)
    }

    exportPropsEnd(protokol: protokol)
}

func exportPropsIntFile<B : ProviderFactory<P, ProviderTaxing>, P : IPropsTaxing>(fileName : String, minYear: Int16, maxYear: Int16, sut: B, function: (P) -> Int32) {
    do {
        let testProtokol = try createProtokolFile(fileName: fileName)

        exportPropsStart(protokol: testProtokol)

        for testYear in minYear...maxYear {
            exportPropsIntLine(protokol: testProtokol,
                    testYear: testYear, sut: sut, function: function)
        }

        exportPropsClose(protokol: testProtokol)
    } catch let loggerError {
        print("Error (Taxing): \(loggerError)".utf8)
    }
}

func exportPropsDecFile<B : ProviderFactory<P, ProviderTaxing>, P : IPropsTaxing>(fileName : String, minYear: Int16, maxYear: Int16, sut: B, function: (P) -> Decimal) {
    do {
        let testProtokol = try createProtokolFile(fileName: fileName)

        exportPropsStart(protokol: testProtokol)

        for testYear in minYear...maxYear {
            exportPropsDecLine(protokol: testProtokol,
                    testYear: testYear, sut: sut, function: function)
        }

        exportPropsClose(protokol: testProtokol)
    } catch let loggerError {
        print("Error (Taxing): \(loggerError)".utf8)
    }
}
