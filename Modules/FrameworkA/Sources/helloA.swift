import Foundation
import Alamofire
import RxSwift

public final class FrameworkA {
    public static func hello() {
        print("Hello, from FrameworkA")
        _ = Alamofire.AuthenticationError.excessiveRefresh
    }
}
