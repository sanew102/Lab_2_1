//
//  TableViewController.swift
//  Lab_2_1
//
//  Created by Нурым Нагиметов on 15.04.2022.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupTableView()


    }
    private func setupNavigationBar(){
        navigationItem.title = "Create Reminder"
        navigationItem.leftBarButtonItem = UIBarButtonItem(systemItem: .cancel)
        navigationItem.rightBarButtonItem = UIBarButtonItem(systemItem: .done)
    }
    private func setupTableView() {
        tableView.register(GetGroceriesTableViewCell.self, forCellReuseIdentifier: "GetGroceriesTableViewCell")
        tableView.register(RemindMeOnADayTableViewCell.self, forCellReuseIdentifier: "RemindMeOnADayTableViewCell")
        tableView.register(DateRepresentationTableViewCell.self, forCellReuseIdentifier: "DateRepresentationTableViewCell")
        tableView.register(DatePickerTableViewCell.self, forCellReuseIdentifier: "DatePickerTableViewCell")
        tableView.register(RemindMeALocationTableViewCell.self, forCellReuseIdentifier: "RemindMeALocationTableViewCell")
        tableView.register(RepeatTableViewCell.self, forCellReuseIdentifier: "RepeatTableViewCell")
        tableView.register(PriorityTableViewCell.self, forCellReuseIdentifier: "PriorityTableViewCell")
        tableView.register(NotesTableViewCell.self, forCellReuseIdentifier: "NotesTableViewCell")
        
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableView.automaticDimension
        
        if #available(iOS 15.0, *) {
            tableView.sectionHeaderTopPadding = 0
        }

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 4
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section{
        case 0: return 1
        case 1: return 4
        case 2: return 1
        case 3: return 2
        default: return 0
        }
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch (indexPath.section, indexPath.row){
        case (0, 0): return tableView.dequeueReusableCell(withIdentifier: "GetGroceriesTableViewCell")!
        case (1, 0): return tableView.dequeueReusableCell(withIdentifier: "RemindMeOnADayTableViewCell")!
        case (1, 1): return tableView.dequeueReusableCell(withIdentifier: "DateRepresentationTableViewCell")!
        case (1, 2): return tableView.dequeueReusableCell(withIdentifier: "DatePickerTableViewCell")!
        case (1, 3): return tableView.dequeueReusableCell(withIdentifier: "RepeatTableViewCell")!
        case (2, 0): return tableView.dequeueReusableCell(withIdentifier: "RemindMeALocationTableViewCell")!
        case (3, 0): return tableView.dequeueReusableCell(withIdentifier: "PriorityTableViewCell")!
        case (3, 1): return tableView.dequeueReusableCell(withIdentifier: "NotesTableViewCell")!
        default: return tableView.dequeueReusableCell(withIdentifier: "GetGroceriesTableViewCell")!
        }
    }
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view : UIView = {
            let view = UIView()
            view.backgroundColor = .systemGray6
            return view
        }()
        return view
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        50
    }
    

    

  
    

    
    


}
