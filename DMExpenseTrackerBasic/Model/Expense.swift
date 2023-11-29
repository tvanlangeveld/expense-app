//
//  Expense.swift
//  DMExpenseTrackerBasic
//
//  Created by David Ruvinskiy on 3/27/23.
//

import Foundation



struct Expense{
    var title: String
    var category: String
    var amount: Double
    
    static func calculateTotalSpent(expenses:[Expense]) -> Double {
        var result = 0.0
        for expense in expenses {
            
            result = expense.amount + result
        }
        return result
    }
    
   static func getExpensesByCategory(_ expenses: [Expense]) -> [String: [Expense]] {
        var expensesByCategory: [String: [Expense]] = [:]

        for expense in expenses {
            let category = expense.category

            if expensesByCategory.keys.contains(category) {
                
                expensesByCategory[category]?.append(expense)
            } else {
                
                expensesByCategory[category] = [expense]
            }
        }

        return expensesByCategory
    }
   
}


