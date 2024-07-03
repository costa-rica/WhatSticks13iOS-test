//
//  UrlStore.swift
//  WS11iOS_v08
//
//  Created by Nick Rodriguez on 31/01/2024.
//

import UIKit

enum APIBase:String, CaseIterable {
    case local = "localhost"
    case dev_10 = "dev_10"
    case dev = "dev"
    case prod_10 = "prod_10"
    case prod = "prod"
    var urlString:String {
        switch self{
        case .local: return "http://127.0.0.1:5001/"
        case .dev_10: return "https://dev.api10.what-sticks.com/"
        case .dev: return "https://dev.api11.what-sticks.com/"
        case .prod_10: return "https://api10.what-sticks.com/"
        case .prod: return "https://api11.what-sticks.com/"
        }
    }
}

enum EndPoint: String {
    case are_we_running = "are_we_running"
    case user = "user"
    case register = "register"
    case login = "login"
    case delete_user = "delete_user"
    case send_data_source_objects = "send_data_source_objects"
    case send_dashboard_table_objects = "send_dashboard_table_objects"
    case receive_apple_qty_cat_data = "receive_apple_qty_cat_data"
    case receive_apple_workouts_data = "receive_apple_workouts_data"
    case delete_apple_health_for_user = "delete_apple_health_for_user"
    case add_oura_token = "add_oura_token"
    case add_oura_sleep_sessions = "add_oura_sleep_sessions"
//    case update_user = "update_user"
    case update_user_location_with_lat_lon = "update_user_location_with_lat_lon"
    case update_user_location_with_user_location_json = "update_user_location_with_user_location_json"
    case get_reset_password_token = "get_reset_password_token"
}

class URLStore {

    var apiBase:APIBase!

    func callEndpoint(endPoint: EndPoint) -> URL{
        let baseURLString = apiBase.urlString + endPoint.rawValue
        let components = URLComponents(string:baseURLString)!
        return components.url!
    }
}
