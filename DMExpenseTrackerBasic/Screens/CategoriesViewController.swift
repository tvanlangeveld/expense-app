//
//  CategoriesViewController.swift
//  DMExpenseTrackerBasic
//
//  Created by David Ruvinskiy on 3/27/23.
//

import UIKit

class CategoriesViewController: UIViewController {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    var expenses = DataController.getExpenses()
    var expensesByCategory: [String: [Expense]] = [:]
    var categories: [String] = []
    var categoryID = Constants.categoryReuseID
    
    
    
    
    
    
    
    
    
    func initializeExpenseData() {
        expensesByCategory = Expense.getExpensesByCategory(expenses)
        
        let keyCategories = Array(expensesByCategory.keys)
        
        categories = keyCategories
        
    }
    
    
    func configureTableView() {
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        initializeExpenseData()
        
    }
    
    
    @IBSegueAction func passedData(_ coder: NSCoder) -> ExpensesViewController? {
        
        if let selectedIndexPath = tableView.indexPathForSelectedRow {
            
            
            let selectedCategory = categories[selectedIndexPath.row]
            let selectedExpenses = expensesByCategory[selectedCategory]
            
            let expensesViewController = ExpensesViewController(coder: coder, category: selectedCategory, expenses: selectedExpenses!)
            
            
            return expensesViewController!
        }
        return nil
    }
    
}

extension CategoriesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: categoryID)
        cell?.textLabel?.text = categories[indexPath.row]
        
        return cell!
    }
    
    
    
}

extension CategoriesViewController: UITableViewDelegate{
    
}


