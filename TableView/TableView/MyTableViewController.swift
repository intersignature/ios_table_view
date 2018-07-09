//
//  MyTableViewController.swift
//  TableView
//
//  Created by Sirichai Binchai on 9/7/2561 BE.
//  Copyright © 2561 Sirichai Binchai. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    var pets = [Pet]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createPets()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    func createPets() {
        //["dog", "cat", "tiger", "lion"]
        let dog = Pet()
        dog.name = "name dog"
        dog.detail = "detail dog"
        dog.picture = UIImage(named: "dog")!
        pets.append(dog)
        
        let cat = Pet()
        cat.name = "name cat"
        cat.detail = "detail cat"
        cat.picture = UIImage(named: "cat")!
        pets.append(cat)
        
        let lion = Pet()
        lion.name = "name lion"
        lion.detail = "detail lion"
        lion.picture = UIImage(named: "lion")!
        pets.append(lion)
        
        let tiger = Pet()
        tiger.name = "name tiger"
        tiger.detail = "detail tiger"
        tiger.picture = UIImage(named: "tiger")!
        pets.append(tiger)
        
        let human = Pet(name: "name human", detail: "detail human")
        pets.append(human)
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pets.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "petCell", for: indexPath)
        cell.textLabel?.text = self.pets[indexPath.row].name
        cell.detailTextLabel?.text = self.pets[indexPath.row].detail
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pet:Pet = pets[indexPath.row]
        
        tableView.deselectRow(at: indexPath, animated: true)
        self.performSegue(withIdentifier: "petSegue", sender: pet)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "petSegue" {
            if let petDetail = segue.destination as? PetDetailViewController {
                if let pet = sender as? Pet {
                    petDetail.pet = pet
                }
            }
        }
    }
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
