//
//  RemindersController.swift
//  Remind me
//
//  Created by Anne Kristine on 07/10/2018.
//  Copyright © 2018 Thomas Østlyng. All rights reserved.
//

import UIKit

class RemindersController: UITableViewController {
	
	
	let itemArray = ["Walk the dog", "Pay bills", "Buy new shoes"]

	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return itemArray.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		let cell = tableView.dequeueReusableCell(withIdentifier: "ReminderCell", for: indexPath)
		
		let titleLabel = cell.viewWithTag(1) as! UILabel
		titleLabel.text = itemArray[indexPath.row]
		
		let cellView = cell.viewWithTag(3)
		cellView!.layer.cornerRadius = 10
		cellView!.clipsToBounds = true
		
		return cell
	}
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		print(itemArray[indexPath.row])
	}
	
}

