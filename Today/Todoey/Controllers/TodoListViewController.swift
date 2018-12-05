//
//  ViewController.swift
//  Todoey
//
//  Created by Nikhil Ramesh on 10/06/18.
//  Copyright © 2018 Nikhil Ramesh. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    var itemArray = [Item]()
    
    let defaults = UserDefaults.standard
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newItem = Item()
        newItem.title = "find Nikhil"
        newItem.done = true
        itemArray.append(newItem)
        
        let newItem2 = Item()
        newItem2.title = "find  nik"
        itemArray.append(newItem2)
        
        let newItem3 = Item()
        newItem3.title = "find Nikhilnikku"
        itemArray.append(newItem3)
        
        if let items = defaults.array(forKey: "ToDoListArray") as? [Item]{
            itemArray = items}
    
    }
    
    //MARK - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
       let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        let item = itemArray[indexPath.row]
        cell.textLabel?.text = item.title
        
        cell.accessoryType = item.done == true ?.checkmark : .none
        

        return cell
    }
    
    //MARK - TableView Delegate Method
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        itemArray[indexPath.row].done = !itemArray[indexPath.row].done

        
        tableView.reloadData()
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }
    
    //MARK -Add new Items
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add new todoey item", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add item", style: .default) { (action) in
            
            //what happens when the user clicks on the plus icon
            
            let newItem = Item()
            newItem.title = textField.text!
            
            
            
            self.itemArray.append(newItem)
           self.defaults.set(self.itemArray, forKey: "ToDoListArray")
            
           self.tableView.reloadData()
            
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "create new item"
            textField = alertTextField
            
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        
    }
}

