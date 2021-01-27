import UIKit
class ViewController: UIViewController {
    
    private let locationButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(askToOpenMap), for: .touchUpInside)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setButton()
    }
    
    func setButton() {
        view.addSubview(locationButton)
        locationButton.backgroundColor = .systemBlue
        locationButton.setTitle("Open location", for: .normal)
        locationButton.layer.cornerRadius = 8
        locationButton.translatesAutoresizingMaskIntoConstraints = false
        locationButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        locationButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40).isActive = true
        locationButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
        locationButton.widthAnchor.constraint(equalToConstant: 280).isActive = true
    }
    @objc func askToOpenMap() {
        OpenMapDirections.present(in: self, sourceView: locationButton)
    }
}

