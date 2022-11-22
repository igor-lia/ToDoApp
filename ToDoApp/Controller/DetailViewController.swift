//
//  DetailViewController.swift
//  ToDoApp
//
//  Created by Ігор Ляхович on 22.11.2022.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    var task: Task?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.titleLabel.text = task?.title
        self.descriptionLabel.text = task?.description
        self.locationLabel.text = task?.location?.name
    }
}
