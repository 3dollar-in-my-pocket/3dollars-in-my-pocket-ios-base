import UIKit

open class BaseViewController: UIViewController {
    open override func viewDidLoad() {
        super.viewDidLoad()
        self.bindEvent()
    }
    
    /// Reactor를 거치지 않고 바로 바인딩 되는 단순 이벤트를 정의합니다.
    open func bindEvent() { }
    
    
    /// Error처리 Alert을 보여줍니다.
    open func showErrorAlert(error: Error) {
        AlertUtils.showWithAction(
            viewController: self,
            title: nil,
            message: error.localizedDescription,
            onTapOk: nil
        )
    }
}

