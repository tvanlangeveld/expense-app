//
//  CategoriesViewController.swift
//  DMExpenseTrackerBasic
//
//  Created by David Ruvinskiy on 3/27/23.
//

import UIKit

/**
 1.1 Create the user interface. See the provided screenshot for how the UI should look. Feel free to customize the colors, font, etc.
 1.2 Use the constants in the `Constants` file to assign the tableviews' reuse IDs and the second screen's storyboard ID.
 */
class CategoriesViewController: UIViewController {
    
    /**
     2.1 Connect the UITableView to the code.
     */
    
    /**
     3.1 Follow the steps in the `Expense` file.
     3.2 Uncomment the `getExpenses` function in the `DataController` file. Create a variable called `expenses` and assign it to the result of calling the function.
     Hint: What kind of function is `getExpenses` and how does that impact how we call it?
     */
    
    /**
     4.1 Create a [String: [Expense]] variable called `expensesByCategory` and initialize it to an empty dictionary.
     4.2 Create a [String] variable called `categories` and initialize it to an empty array.
     */
    
    /**
     Do the following inside `initializeExpenseData`.
     
     4.3 Use one of the utility methods from step 3.1 to separate the expenses from above by category. Assign the result to our`expensesByCategory` dictionary.
     4.4 Create an array containing all the categories from the dictionary and assign it to the `categories` variable.
        Hint: Recall that each key in the dictionary is a category, such as "shopping" or "entertainment," and that each value is an array of expenses corresponding to the category.
     */
    func initializeExpenseData() {
        
    }
    
    /**
     5.1 Display the `categories` from above using the table view. The table view should have one row per category. To do so, have the `CategoriesViewController` conform to the `UITableViewDelegate` and `UITableViewDataSource` protocols.
        Hint 1: What functions are needed for a view controller to conform to the protocols. This is a good time to stop and review the DMTableViewIntro project and the Udemy videos and to practice your Googling skills.
        Hint 2: You may find the following article helpful for displaying each category: https://developer.apple.com/documentation/uikit/uitableviewcell/3601058-defaultcontentconfiguration
     */
    
    /**
     Do the following inside `configureTableView`
     
     5.2 Set the `tableView`'s `delegate` and `dataSource` to self.
    */
    func configureTableView() {
        
    }
    
    /**
     6.1 Set the title of the view controller to be "Categories".
     6.2 Call the `initializeExpenseData` and `configureTableView` functions.
     6.3 Run your project. **You should see the categories on screen. If you don't, stop and ask for help before moving on.**
     */
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /**
     In the following steps, you will be adding code to do two key things:
     - When the user taps on a row in our table view, allow them to move from the categories screen (i.e. the `CategoriesViewController`) to the expenses screen (i.e. the `ExpensesViewController`) using a `UINavigationController`.
     - Pass data (i.e. the category the user selected and the expenses for that category) between the view controllers.
     
     To accomplish this, you will be writing code in both files at the same time.
     
     Let's start with the first thing:
     
     7.1 Inside `CategoriesViewController`, add the function from`UITableViewDelegate` protocol that allows us to detect when the user selects a row. Print a message inside the function to confirm it is being called.
     7.2 Add code to the function to move the user to the `ExpensesViewController`. Refer to part two of the the letter finding game for a refresher on how to do that
     7.3 Run the project and tap on a category to make sure we can transition to the next screen. You won't see anything on the second screen yet.
     That's okay. We will fix that in the next step. **Do not move on moving from one screen to the next works.**
     
     Now, let's move on to the second thing:
     
     7.4 Complete step 7 in `ExpensesViewController`.
     7.5 Inside `CategoriesViewController`, modify our existing select function to use the initializer we just created. Refer to the Hacking With Swift article for an overview of how to do this.
        Hint: Your code will be similar to the code in the `show` function from the article.
     */
    
    /**
     7.6 Complete the remaining steps in `ExpensesViewController`. Some of the steps are less detailed than the steps here to give you practice working with table views.
     */
}
