//
//  ArtWork.swift
//  routeMap

//
import Foundation
import MapKit
import AddressBook


class Artwork: NSObject, MKAnnotation
    
{
    let title: String
    let locationName: String
    let discipline: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D)
    {
        self.title = title
        self.locationName = locationName
        self.discipline = discipline
        self.coordinate = coordinate
        
        super.init()
        
        
    }
//    class func fromJSON(json: [JSONValue]) -> Artwork?
//    {
//    
//        var title: String
//        if let titleOrNil = json[16].string
//        {
//            title = titleOrNil
//        }
//        else
//        {
//            title = ""
//        }
//        let locationName = json[12].string
//        let discipline = json[15].string
//        let latitude = (json[18].string! as NSString).doubleValue
//        let longitude = (json[19].string! as NSString).doubleValue
//        let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
//        return Artwork(title: title, locationName: locationName!, discipline: discipline!, coordinate: coordinate)
//    }
    
    var subtitle: String
    {
            return locationName
            
    }
    
    func mapItem() -> MKMapItem
    {
        let addressDictionary = [String(kABPersonAddressStreetKey): subtitle]
        let placemark = MKPlacemark(coordinate: coordinate, addressDictionary: addressDictionary)
        
        let mapItem = MKMapItem(placemark: placemark)
        let image = UIImage(named: "name") as UIImage?
        return mapItem
    }

    
    
    
    
}