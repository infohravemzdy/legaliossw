//
// Created by Ladislav Lisy on 30.06.2021.
//

import Foundation
import Quick
import Nimble

@testable import legalios

class ServiceBundleFailure2010Test: QuickSpec {
    override func spec() {
        describe("TestBundleFailure_ForYear2010") {
            let test_examples: [(title: String, tests: [(title: String, year: Int16, month: Int16)])] = [
                ("2010", [
                    ( "2010-1", 2010, 1 ),
                    ( "2010-2", 2010, 2 ),
                    ( "2010-3", 2010, 3 ),
                    ( "2010-4", 2010, 4 ),
                    ( "2010-5", 2010, 5 ),
                    ( "2010-6", 2010, 6 ),
                    ( "2010-7", 2010, 7 ),
                    ( "2010-8", 2010, 8 ),
                    ( "2010-9", 2010, 9 ),
                    ( "2010-10", 2010, 10 ),
                    ( "2010-11", 2010, 11 ),
                    ( "2010-12", 2010, 12 ),
                ]),
            ]
            test_examples.forEach { (title: String, tests: [(title: String, year: Int16, month: Int16)]) in
                describe("tests for year \(title)") {
                    tests.forEach { (title: String, year: Int16, month: Int16) in
                        context("period \(title)") {
                            var bundle: IBundleProps?
                            var error: HistoryResultError?

                            beforeEach {
                                let period = Period(year: year, month: month)
                                let service = ServiceLegalios()
                                let result: Result<IBundleProps, HistoryResultError> = service.getBundle(period)
                                bundle = nil
                                error = nil
                                switch (result) {
                                case .success(let b): bundle = b
                                case .failure(let e): error = e
                                }
                            }

                            it("GetProps should return error") {
                                expect(error).toNot(beNil())
                            }
                            it("GetProps should return props be nil") {
                                expect(bundle).to(beNil())
                            }
                        }
                    }
                }
            }
        }
    }
}
