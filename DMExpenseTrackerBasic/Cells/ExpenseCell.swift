//
//  ExpenseCell.swift
//  DMExpenseTrackerBasic
//
//  Created by David Ruvinskiy on 3/28/23.
//

import UIKit

class ExpenseCell: UITableViewCell {
    
    @IBOutlet var title: UILabel!
    @IBOutlet var subTitle: UILabel!
    
    func set(expense: Expense) {
        
        var USD = expense.amount.formatted(.currency(code: "USD"))
        
        title.text = expense.title
        subTitle.text = String(USD)
        
    }
    
}
