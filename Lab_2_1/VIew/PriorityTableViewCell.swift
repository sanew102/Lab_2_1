//
//  PriorityTableViewCell.swift
//  Lab_2_1
//
//  Created by Нурым Нагиметов on 15.04.2022.
//

import UIKit

class PriorityTableViewCell: UITableViewCell {

    private let segment : UISegmentedControl = {
        let segment = UISegmentedControl(items: ["None","!", "!!", "!!!"])
        segment.tintColor = .systemBlue
        segment.selectedSegmentTintColor = .systemBlue
        segment.addTarget(self, action: #selector(prinSelectedSegmentItem), for: .valueChanged)
        return segment
        
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "PriorityTableViewCell")
        setupCell()
        setupContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupCell(){
        self.textLabel?.text = "Remind me at location"
        contentView.addSubview(segment)
        print(segment.selectedSegmentIndex)
        
    }
    private func setupContraints() {
        segment.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(8)
            make.trailing.bottom.equalToSuperview().offset(-8)
            
        }
    }
    
    @objc private func prinSelectedSegmentItem(){
        let a = segment.selectedSegmentIndex
        print(a)
    }

}
