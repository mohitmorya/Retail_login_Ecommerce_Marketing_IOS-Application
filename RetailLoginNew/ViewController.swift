//
//  ViewController.swift
//  mapPractice


import UIKit
import MapKit
class ViewController: UIViewController, UISearchBarDelegate
{
    
    @IBAction func backButton(sender: AnyObject)
    {
        
        
        let backButton = UIBarButtonItem(title: "< Back", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        backButton.setTitleTextAttributes([NSFontAttributeName: UIFont(name: "Chalkduster", size: 20)!], forState: UIControlState.Normal)
        navigationItem.backBarButtonItem = backButton
    }
    
 
    var artworks = [Artwork]()
    var  artwork = [Artwork]()
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation)
    {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }

    @IBAction func searchButton(sender: AnyObject)
    {
        
        searchController = UISearchController(searchResultsController: nil)
        searchController.hidesNavigationBarDuringPresentation = false
        self.searchController.searchBar.delegate = self
        presentViewController(searchController, animated: true, completion: nil)
        
        
    }
    
    @IBOutlet var mapView: MKMapView!
    var searchController:UISearchController!
    var annotation:MKAnnotation!
    var localSearchRequest:MKLocalSearchRequest!
    var localSearch:MKLocalSearch!
    var localSearchResponse:MKLocalSearchResponse!
    var error:NSError!
    var pointAnnotation:MKPointAnnotation!
    var pinAnnotationView:MKPinAnnotationView!
    func searchBarSearchButtonClicked(searchBar: UISearchBar)
    {
          searchBar.resignFirstResponder()
          dismissViewControllerAnimated(true, completion: nil)
          if self.mapView.annotations.count != 0
         {
            annotation = self.mapView.annotations[0] as! MKAnnotation
            self.mapView.removeAnnotation(annotation)
         }
        
        localSearchRequest = MKLocalSearchRequest()
        localSearchRequest.naturalLanguageQuery = searchBar.text
        localSearch = MKLocalSearch(request: localSearchRequest)
        localSearch.startWithCompletionHandler
        {
            (localSearchResponse, error) -> Void in
            if localSearchResponse == nil
            {
                  var alert = UIAlertView(title: nil, message: "Place not found", delegate: self, cancelButtonTitle: "Try again")
                   alert.show()
                   return
            }
            
            self.pointAnnotation = MKPointAnnotation()
            self.pointAnnotation.title = searchBar.text
            self.pointAnnotation.subtitle = searchBar.text
            self.pointAnnotation.coordinate = CLLocationCoordinate2D(latitude: localSearchResponse.boundingRegion.center.latitude, longitude:    localSearchResponse.boundingRegion.center.longitude)
            self.pinAnnotationView = MKPinAnnotationView(annotation: self.pointAnnotation, reuseIdentifier: nil)
            self.mapView.centerCoordinate = self.pointAnnotation.coordinate
            self.mapView.addAnnotation(self.pinAnnotationView.annotation)
            
            let artwork = Artwork(title: searchBar.text,
            locationName: searchBar.text,
            discipline: "Sculpture",
            coordinate: CLLocationCoordinate2D(latitude:localSearchResponse.boundingRegion.center.latitude, longitude: localSearchResponse.boundingRegion.center.longitude))
            println(searchBar.text)
            println(localSearchResponse.boundingRegion.center.latitude)
            self.mapView.addAnnotation(artwork)
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        mapView.delegate = self
        let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
        centerMapOnLocation(initialLocation)
        //loadInitialData()
        //mapView.addAnnotations(artworks)
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
   
    
//    
//    func loadInitialData()
//    {
//        
//        let fileName: NSString = NSBundle.mainBundle().pathForResource("PublicArt", ofType: "json")!
//        
//        
//        var data : NSData = NSData(contentsOfFile: fileName, options: NSDataReadingOptions(0), error: nil)!
//        println(data)
//        
//        
//        let jsonObject: AnyObject = NSJSONSerialization.JSONObjectWithData(data,
//            options: NSJSONReadingOptions(0), error: nil) as AnyObject!
//        
//        let jsonData = JSONValue.fromObject(jsonObject)?["data"]?.array
//        
//        for artworkJSON in jsonData!
//        {
//            let artworkJSON = artworkJSON.array
//           // let artwork = Artwork.JSON(artworkJSON!)
//            let  artwork = Artwork.fromJSON(artworkJSON!)
//            
//            artworks.append(artwork!)
//            
//        }
//        
//        
//    }
    
    
    
   


}

