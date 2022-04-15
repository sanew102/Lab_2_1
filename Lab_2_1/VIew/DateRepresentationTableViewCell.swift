//
//  DateRepresentationTableViewCell.swift
//  Lab_2_1
//
//  Created by Нурым Нагиметов on 15.04.2022.
//

import UIKit

class DateRepresentationTableViewCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "DateRepresentationTableViewCell")
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupCell(){
        self.textLabel?.text = "Nothing"
        self.textLabel?.textColor = .systemBlue
    }


}
