import UIKit

extension UIView {
    public func addSubViews(_ views: [UIView]) {
        for view in views {
            self.addSubview(view)
        }
    }
}
