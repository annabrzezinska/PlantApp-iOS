import UIKit

class MyPlantsController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "My plants"
        setUpBackgroundView()
    }
    
    private func setUpBackgroundView() {
        let noDataLabel = UILabel()
        noDataLabel.text = "No plants yet :("
        tableView.backgroundView = noDataLabel

        noDataLabel.translatesAutoresizingMaskIntoConstraints = false
        noDataLabel.centerXAnchor.constraint(equalTo: tableView.centerXAnchor).isActive = true
        noDataLabel.centerYAnchor.constraint(equalTo: tableView.centerYAnchor).isActive = true
    }
}
