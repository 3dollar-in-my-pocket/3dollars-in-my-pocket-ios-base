import UIKit

import RxSwift

open class BaseCollectionViewCell: UICollectionViewCell {
    public var disposeBag = DisposeBag()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setup()
        self.bindConstraints()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open override func prepareForReuse() {
        super.prepareForReuse()
        
        self.disposeBag = DisposeBag()
    }
    
    /// adSubviews와 화면의 기본 속성을 설정합니다.
    open func setup() { }
    
    /// Autolayout설정을 진행합니다.
    open func bindConstraints() { }
}
