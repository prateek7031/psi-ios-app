//
//  FirstViewController.swift
//  PSIIndexApp
//
//  Created by Prateek on 23/11/19.
//  Copyright © 2019 Prateek. All rights reserved.
//

import UIKit
import GoogleMaps


class PSIViewController: UIViewController {

    var mapView: GMSMapView!
    
    lazy var viewModel: PSIViewModel = {
        return PSIViewModel()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // init map View
        initMainView()
        
        initVM()
    }

    //func for init map
    func initMainView(){
        let camera = GMSCameraPosition.camera(withLatitude: 1.35735, longitude: 103.82, zoom: 10.4)
        self.mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = self.mapView
        self.mapView.delegate = self
    }
    
    func initVM() {
        
        // Naive binding
        self.viewModel.showAlertClosure = { [weak self] () in
            DispatchQueue.main.async {
                if let message = self?.viewModel.alertMessage {
                //self?.showAlert( message )
                }
            }
        }
        
        self.viewModel.updateLoadingStatus = { [weak self] () in
            DispatchQueue.main.async {
                if (self?.viewModel.isLoading)!{
                  //  HUD.show(.progress)
                }else{
                    //HUD.hide()
                }
            }
        }
        
        self.viewModel.setDataOnMapClosure = { [weak self] () in
            DispatchQueue.main.async {
                self?.initMarker()
            }
        }
        
        self.viewModel.initData()
        
    }
    
    func initMarker(){
        for pos in self.viewModel.getPSIDataPosition(){
            let marker = viewModel.getPSIDataObject(loc: pos)
            marker.map = self.mapView
        }
    }
    
    
}

extension PSIViewController : GMSMapViewDelegate {
    func mapView(_ mapView: GMSMapView, markerInfoWindow marker: GMSMarker) -> UIView? {
        return self.viewModel.getPSIInfoWindow(marker: marker)
    }
    
    func mapView(_ mapView: GMSMapView, didTapInfoWindowOf marker: GMSMarker) {
        self.mapView.selectedMarker = nil
    }
}
