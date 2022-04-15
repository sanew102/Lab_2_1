//
//  RemindMeOnADayTableViewCell.swift
//  Lab_2_1
//
//  Created by Нурым Нагиметов on 15.04.2022.
//

import UIKit
import SnapKit
class RemindMeOnADayTableViewCell: UITableViewCell {
    private let daySwitch = UISwitch()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "RemindMeOnADayTableViewCell")
        setupCell()
        setupContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupCell(){
        self.textLabel?.text = "Remind me on a day"
        contentView.addSubview(daySwitch)
    }
    private func setupContraints() {
        daySwitch.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-16)
            make.centerY.equalToSuperview()
        }
        
    }

}
