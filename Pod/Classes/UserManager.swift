import Foundation

public class UserManager {
    public static let sharedManager = UserManager()
    var userCache: NSCache = NSCache()

    // MARK Query Methods
    public func queryForUserWithName(searchText: String, completion: ((NSArray?, NSError?) -> Void)) {
    }

    public func queryForAllUsersWithCompletion(completion: ((NSArray?, NSError?) -> Void)?) {
    }

    public func queryAndCacheUsersWithIDs(userIDs: [String], completion: ((NSArray?, NSError?) -> Void)?) {
    }

   
}