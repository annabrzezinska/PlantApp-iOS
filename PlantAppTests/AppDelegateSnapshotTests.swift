import SnapshotTesting
import XCTest
@testable import PlantApp

class AppDelegateSnapshotTests: XCTestCase {
    
    var sut: AppDelegate!
    
    override func setUp() {
        super.setUp()
        sut = AppDelegate()
    }

    override func tearDown() {
        super.tearDown()
        sut = nil
    }
    
    func testRootViewControllerMatchesSnapshot() throws {
        _ = sut.application(UIApplication.shared, didFinishLaunchingWithOptions: nil)
        
        let controller = try XCTUnwrap(sut.window?.rootViewController)
        
        assertSnapshot(of: controller, as: .image)
  }
}
