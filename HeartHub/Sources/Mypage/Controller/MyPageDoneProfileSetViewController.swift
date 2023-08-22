import UIKit

final class MyPageDoneProfileSetViewController: UIViewController {

    private let myPageDoneProfileSetView = MyPageDoneProfileSetView()
    
    override func loadView() {
        view = myPageDoneProfileSetView
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        configureAddTarget()
    }
    
    private func configureAddTarget() {
        myPageDoneProfileSetView.doneProfileUpdateButton.addTarget(self, action: #selector(didTapDoneProfileUpdateButton), for: .touchUpInside)
    }

    @objc private func didTapDoneProfileUpdateButton() {
        print("d")
        dismiss(animated: true)
    }
}
