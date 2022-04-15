//
//  RepeatTableViewCell.swift
//  Lab_2_1
//
//  Created by Нурым Нагиметов on 15.04.2022.
//

import UIKit

class RepeatTableViewCell: UITableViewCell {

    private let label : UILabel = {
        let label = UILabel()
        label.text = "Never"
        label.font = UIFont(name: "Helvetica", size: 14)
        return label
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "RepeatTableViewCell")
        setupCell()
        setupContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupCell(){
        self.accessoryType = .disclosureIndicator
        self.textLabel?.text = "Repeat"
        contentView.addSubview(label)
    }
    private func setupContraints() {
        label.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-16)
            make.centerY.equalToSuperview()
        }
        
    }

}
