import Foundation
import AFNetworking

public class UserManager {
    public static let sharedManager = UserManager()
    var userCache: NSCache = NSCache()

    // MARK Query Methods
    public func queryForUserWithName(searchText: String, completion: ((String?, NSError?) -> Void)) {
        let baseURL = "http://www.raywenderlich.com/demos/weather_sample/"
        let url = baseURL + "weather.php?format=json"
        let myURL = NSURL(string: url)
        let request = NSURLRequest(URL: myURL!)
        
        let operation = AFHTTPRequestOperation(request: request)
        operation.responseSerializer = AFJSONResponseSerializer()
        
        operation.setCompletionBlockWithSuccess({ (operation, object) -> Void in
            completion("return", nil)
            }) { (operation, error) -> Void in
                
        }
        
    }

    public func queryForAllUsersWithCompletion(completion: ((NSArray?, NSError?) -> Void)?) {
    }

    public func queryAndCacheUsersWithIDs(userIDs: [String], completion: ((NSArray?, NSError?) -> Void)?) {
    }

   
}