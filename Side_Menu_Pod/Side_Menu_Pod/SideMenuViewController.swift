//
//  ViewController.swift
//  Side_Menu_Pod
//
//  Created by PHN MAC 1 on 05/06/23.
//

import UIKit
import SideMenu
struct SideMenuModel{
    let icon: UIImage
    let title: String
}

class SideMenuViewController: UIViewController {

    @IBOutlet weak var menuTableView: UITableView!
    let menu: [SideMenuModel] = [
            SideMenuModel(icon: UIImage(systemName: "house.fill")!, title: "Home"),
            SideMenuModel(icon: UIImage(systemName: "music.note")!, title: "Music"),
            SideMenuModel(icon: UIImage(systemName: "film.fill")!, title: "Movies"),
            SideMenuModel(icon: UIImage(systemName: "book.fill")!, title: "Books"),
            SideMenuModel(icon: UIImage(systemName: "person.fill")!, title: "Profile"),
            SideMenuModel(icon: UIImage(systemName: "slider.horizontal.3")!, title: "Settings"),
            SideMenuModel(icon: UIImage(systemName: "hand.thumbsup.fill")!, title: "Like us on facebook")
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
        menuTableView.dataSource = self
//        menuTableView.delegate = self
        menuTableView.rowHeight = 70
        menuTableView.separatorStyle = .none
    }
    
}
extension SideMenuViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = menuTableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell") as? MenuTableViewCell else{
            fatalError()
        }
        cell.icon.image = menu[indexPath.row].icon
        cell.title.text = menu[indexPath.row].title
        return cell
    }
}
