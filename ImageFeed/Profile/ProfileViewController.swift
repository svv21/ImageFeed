import UIKit

final class ProfileViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let profileImageView = UIImageView()
        profileImageView.image = UIImage(named: "Photo")
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileImageView)
        NSLayoutConstraint.activate([
            profileImageView.heightAnchor.constraint(equalToConstant: 70),
            profileImageView.widthAnchor.constraint(equalToConstant: 70),
            profileImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            profileImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 76)
        ])
        
        let nameLabel = UILabel()
        nameLabel.text = "Екатерина Новикова"
        nameLabel.textColor = .ypWhite
        nameLabel.font = .systemFont(ofSize: 23, weight: .bold)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameLabel)
        NSLayoutConstraint.activate([
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            nameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 8)
        ])
        
        let loginNameLabel = UILabel()
        loginNameLabel.text = "@ekaterina_nov"
        loginNameLabel.textColor = .ypGray
        loginNameLabel.font = .systemFont(ofSize: 13, weight: .regular)
        loginNameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginNameLabel)
        NSLayoutConstraint.activate([
            loginNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            loginNameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8)
        ])
        
        let profileStatusLabel = UILabel()
        profileStatusLabel.text = "Hello, world!"
        profileStatusLabel.textColor = .ypWhite
        profileStatusLabel.font = .systemFont(ofSize: 13, weight: .regular)
        profileStatusLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileStatusLabel)
        NSLayoutConstraint.activate([
            profileStatusLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            profileStatusLabel.topAnchor.constraint(equalTo: loginNameLabel.bottomAnchor, constant: 8)
        ])
        
        let logoutButton = UIButton.systemButton(
            with: UIImage(named: "logout button")!,
            target: self,
            action: #selector(Self.didTapLogoutButton)
        )
        logoutButton.tintColor = .ypRed
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoutButton)
        NSLayoutConstraint.activate([
            logoutButton.heightAnchor.constraint(equalToConstant: 44),
            logoutButton.widthAnchor.constraint(equalToConstant: 44),
            logoutButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            logoutButton.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor)
        ])
    }
    
    @objc private func didTapLogoutButton() {
    }
}
