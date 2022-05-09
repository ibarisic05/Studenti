//
//  DetailsViewController.swift
//  LV2-strucni
//
//  Created by Ivan Barisic on 09.05.2022..
//

import UIKit

class DetailsViewController: UIViewController {

    // MARK: - Outlet
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var imeLabel: UILabel!
    @IBOutlet weak var prezimeLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var statusButton: UIButton!
    
    // MARK: - Variables
    var student: Student!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Detalji"
        idLabel.text = student.id
        imeLabel.text = student.ime
        prezimeLabel.text = student.prezime
        
        setStatus()
    }
    
    func setStatus() {
        if student.polozio {
            statusButton.setTitle("Nije polozio", for: .normal)
            statusLabel.text = "Polozio"
        } else {
            statusButton.setTitle("Polozio", for: .normal)
            statusLabel.text = "Nije polozio"
        }
    }

    // MARK: - IBActions
    @IBAction func onTapStatusChangeBtn(_ sender: Any) {
        student.polozio = !student.polozio
        setStatus()
    }
    
}
