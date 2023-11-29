//
//  ExpensesViewController.swift
//  DMExpenseTrackerBasic
//
//  Created by David Ruvinskiy on 3/28/23.
//

import UIKit

class ExpensesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var label: UILabel!
    
    var category: String = ""
    var expenses: [Expense] = []
    var expenseID = Constants.expenseReuseID
    
    
    init?(coder: NSCoder, category: String, expenses: [Expense]) {
        self.category = category
        self.expenses = expenses
        super.init(coder: coder)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
//        fatalError("init(coder:) has not been implemented")
    }
    
    func configureViewController() {
        
        var total = Expense.calculateTotalSpent(expenses: expenses).formatted(.currency(code: "USD"))
        
        label.text = "You spent \(total) on \(category)!"
        
        tableView.dataSource = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        
        
    }
}

extension ExpensesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        expenses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExpenseCell", for: indexPath) as! ExpenseCell
        
        var expense = expenses[indexPath.row]
        
        cell.set(expense: expense)
        
        return cell
    }
    
    
    
}
    
   
    
   
    

