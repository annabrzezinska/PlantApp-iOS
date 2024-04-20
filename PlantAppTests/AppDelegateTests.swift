import XCTest
@testable import PlantApp

class AppDelegateTests: XCTestCase {
    
    var sut: AppDelegate!

    override func setUp() {
        super.setUp()
        sut = AppDelegate()
    }
    
    override func tearDown() {
        super.tearDown()
        sut = nil
    }
    
    func testApplicationDidFinishLaunching_ItConfiguresKeyWindowCorrectly() throws {
        let result = sut.application(UIApplication.shared, didFinishLaunchingWithOptions: nil)
        
        let window = try XCTUnwrap(sut.window)
        let rootController = try XCTUnwrap(window.rootViewController as? UINavigationController)
        
        XCTAssertEqual(result, true)
        XCTAssertEqual(window.frame, UIScreen.main.bounds)
        XCTAssertNotNil(rootController.viewControllers.first as? MyPlantsController)
        XCTAssertEqual(window.isKeyWindow, true)
        XCTAssertEqual(window.isHidden, false)
    }
    
}
