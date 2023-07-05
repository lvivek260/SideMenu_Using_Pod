//
//  HomeViewController.swift
//  Side_Menu_Pod
//
//  Created by PHN MAC 1 on 05/06/23.
//

import UIKit
import SideMenu

class HomeViewController: UIViewController {

    var menu: SideMenuNavigationController?
    
    override func viewDidLoad(){
        super.viewDidLoad()
       configurationMenu()
    }
    
    func configurationMenu(){
        let sideMenuVC = self.storyboard?.instantiateViewController(withIdentifier: "SideMenuViewController") as! SideMenuViewController
        menu = SideMenuNavigationController(rootViewController: sideMenuVC)
        menu?.leftSide = true //Menu open left to right
        menu?.menuWidth = self.view.frame.width * 0.75 //Menu bar width set
        menu?.presentationStyle = .viewSlideOutMenuIn //Presentation Animation Style
        SideMenuManager.default.leftMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
    }
    
    @IBAction func menuBtnTapped(_ sender: Any) {
        present(menu!, animated: true)
    }
}
