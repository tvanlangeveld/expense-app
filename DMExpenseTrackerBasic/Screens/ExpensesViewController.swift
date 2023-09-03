//
//  ExpensesViewController.swift
//  DMExpenseTrackerBasic
//
//  Created by David Ruvinskiy on 3/28/23.
//

import UIKit

class ExpensesViewController: UIViewController {
    
    /**
     7.4 Create a String variable for the category and an `[Expense]` variable for the expenses.
     7.4 Create an initializer to initialize the two variables. Refer to this article for an overview of what the initializer should look like: https://www.hackingwithswift.com/example-code/uikit/how-to-use-dependency-injection-with-storyboards.
        Hint: In the article, the author creates an initializer for his `EditUserViewController`. The initializer accepts a coder of type `NSCoder` and a `user` of type `User`.
            Our initializer will also accept an `NSCoder` (We have to do this because we are using storyboards. Don't worry too much about this.)
            However, instead of a  `User`, our initializer will accept a category and an array of expenses.
     */
    
    /**
     8.1 Connect the UITableView and UILabel to the code.
     */
    
    /**
     9.1 Have the UILabel display the amount of money the user spent for the selected category. For example, "You spent $25 on entertainment.".
     */
    func configureViewController() {
        
    }
    
    /**
     9.2 Call the `configureViewController`  function.
     */
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    /**
     10.1 Unlike in the `CategoriesViewController`, we will be using a custom class called `ExpenseCell` to display the title of each expense and its amount. Follow the steps in the `ExpenseCell` file to create the cell.
     11.1 Add code to `ExpensesViewController` to display the expenses using the table view.
     */
}
