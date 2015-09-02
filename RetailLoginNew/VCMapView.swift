//
//  VCMapView.swift


import Foundation
import MapKit

extension ViewController: MKMapViewDelegate
{
    func mapView(mapView: MKMapView!, annotationView view: MKAnnotationView!,
        calloutAccessoryControlTapped control: UIControl!)
    {
//        
//         navigationController?.setNavigationBarHidden(false, animated: true)
//        var myBackButton : UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
//        myBackButton.addTarget(self, action: "popToRoot", forControlEvents:UIControlEvents.TouchUpInside)
//        myBackButton.setTitle("Back",forState: UIControlState.Normal)
//        myBackButton.sizeToFit()
//        var mycustomBackButtonItem:UIBarButtonItem = UIBarButtonItem(customView: myBackButton)
//        self.navigationItem.leftBarButtonItem = mycustomBackButtonItem
         let location = view.annotation as! Artwork
        let launchOptions = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving]
        location.mapItem().openInMapsWithLaunchOptions(launchOptions)
             
        
    }
    

    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView!
    {
         let annotation = annotation as? Artwork
         let identifier = "pin"
         var view: MKPinAnnotationView
         let dequeuedView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier)
                as? MKPinAnnotationView
         view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
         view.canShowCallout = true
         view.calloutOffset = CGPoint(x: -5, y: 5)
         view.rightCalloutAccessoryView = UIButton.buttonWithType(.DetailDisclosure) as! UIView
         return view
    }
    
}