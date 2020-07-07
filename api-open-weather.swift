// Pull from API and properly parse JSON

import Foundation
import FoundationNetworking

    // will move this to a user prompt later
    let cityName = "minneapolis"
    print(cityName)
    // get env value for API Key
    let apiKey = ProcessInfo.processInfo.environment["OPEN_WEATHER_API_KEY"]
    
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?units=imperial"

    func fetchWeather(cityName: String) {
        /* 
        TODO: 
        string interpolation produces a debug description for an optional value; did you mean to make this explicit

        FIX? Used \(String(describing: apiKey)) instead and it seems to not produce the error now. That was the Fix from Xcode

        */
       let urlString = "\(weatherURL)&q=\(cityName)&appid=\(String(describing: apiKey))"
       print(urlString)

       performRequest(urlString: urlString)
    }

        func performRequest(urlString: String) {
        //1. Create a url
        if let url = URL(string: urlString) {
            //2. create url session
            let session = URLSession(configuration: .default)
            print(session)

            //3. give session a task
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            print("task is: \(task)")
            
            //4. Start the task
            task.resume()
        }

    }

    func handle(data: Data?, response: URLResponse?, error: Error?) {
        print("starting the handle")
        if error != nil {
            print(error!) //adding the ! makes it optional?
            return
        }

        if let safeData = data {
            print(safeData)
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString!)
        }

    }
fetchWeather(cityName: cityName)