// https://github.com/Quick/Quick

import Quick
import Nimble
import FocalUtilities

class UIColorHexStringSpec: QuickSpec {
    override func spec() {
        describe("UIColor support HexString") {

            it("can initiate with hex string") {
                expect(UIColor(hexString: "000000")).notTo(beNil())
            }

        }
    }
}
