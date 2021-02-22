//
//  FeedCell.swift
//  DustingramFirebaseTutorial
//
//  Created by Dustin on 2021/02/22.
//

import UIKit

class FeedCell: UICollectionViewCell {
    
    private let profileImageView : UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.isUserInteractionEnabled = true
        iv.image = UIImage(named: "venom-7")
        return iv
    }()
    
    private lazy var usernameButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        button.setTitle("Venom", for: .normal)
        button.addTarget(self, action: #selector(didTapUsername), for: .touchUpInside)
        return button
    }()
    
    
    private let postImageView : UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.isUserInteractionEnabled = true
        iv.image = UIImage(named: "venom-7")
        return iv
    }()
    
    private lazy var likeButton : UIButton = {
        let bt = UIButton(type: .system)
        bt.setImage(#imageLiteral(resourceName: "like_unselected"), for: .normal)
        bt.tintColor = .black
        return bt
    }()
    private lazy var commentButton : UIButton = {
        let bt = UIButton(type: .system)
        bt.setImage(#imageLiteral(resourceName: "comment"), for: .normal)
        bt.tintColor = .black
        return bt
    }()
    private lazy var shareButton : UIButton = {
        let bt = UIButton(type: .system)
        bt.setImage(#imageLiteral(resourceName: "send2"), for: .normal)
        bt.tintColor = .black
        return bt
    }()
    
    
    private let likeLabel : UILabel = {
        let label = UILabel()
        label.text = "1 like"
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.textColor = .black
        return label
    }()
    
    
    private let captionLabel : UILabel = {
        let label = UILabel()
        label.text = "Some test caption"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .black
        return label
    }()
    
    
    private let postTimeLabel : UILabel = {
        let label = UILabel()
        label.text = "Some test caption"
        label.font = UIFont.systemFont(ofSize: 12)

        label.textColor = .lightGray
        return label
    }()
    

    
    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(profileImageView)
        profileImageView.anchor(top:topAnchor,left: leftAnchor,paddingTop: 12,paddingLeft: 12)
        profileImageView.setDimensions(height: 40, width: 40)
        profileImageView.layer.cornerRadius = 40 / 2
        
        
        addSubview(usernameButton)
        usernameButton.centerY(inView: profileImageView,leftAnchor: profileImageView.rightAnchor,paddingLeft: 8)
        
        
        addSubview(postImageView)
        postImageView.anchor(top:profileImageView.bottomAnchor,left: leftAnchor,right: rightAnchor,paddingTop: 8)
        
        postImageView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 1).isActive = true
        
        
        configureActionButton()
        
        addSubview(likeLabel)
        likeLabel.anchor(top:likeButton.bottomAnchor,left: leftAnchor,paddingTop: -4,paddingLeft: 8)
        addSubview(captionLabel)
        captionLabel.anchor(top:likeLabel.bottomAnchor,left: leftAnchor,paddingTop: 8,paddingLeft: 8)
        addSubview(postTimeLabel)
        postTimeLabel.anchor(top:captionLabel.bottomAnchor,left: leftAnchor,paddingTop: 8,paddingLeft: 8)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func didTapUsername() {
        print("Button tapped")
    }
    
    
    func configureActionButton() {
       let stackView = UIStackView(arrangedSubviews: [likeButton,commentButton,shareButton])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        addSubview(stackView)
        stackView.anchor(top:postImageView.bottomAnchor,width: 120,height: 50)
    }
}
