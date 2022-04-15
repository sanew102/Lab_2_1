//
//  DatePickerTableViewCell.swift
//  Lab_2_1
//
//  Created by Нурым Нагиметов on 15.04.2022.
//

import UIKit

class DatePickerTableViewCell: UITableViewCell {
    
    let datePicker : UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.preferredDatePickerStyle = .wheels
        return datePicker
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "DatePickerTableViewCell")
        setupCell()
        setupContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupCell(){
        contentView.addSubview(datePicker)
    }
    private func setupContraints(){
        datePicker.snp.makeConstraints { make in
            make.top.leading.equalToSuperview().offset(8)
            make.bottom.trailing.equalToSuperview().offset(-8)
        }
    }

}
