// Pull from API and properly parse JSON

import Foundation

struct WeatherManager {

    // will move this to a user prompt later
    let cityName = "minneapolis"
    // get env value for API Key
    let apiKey = ProcessInfo.processInfo.environment["OPEN_WEATHER_API_KEY"]

    /*
    Causes this error:
    string interpolation produces a debug description for an optional value; did you mean to make this explicit?

    */
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?units=imperial"

    func fetchWeather(cityName: String) {
        /* 
        TODO: 
        string interpolation produces a debug description for an optional value; did you mean to make this explicit

        */
       let urlString = "\(weatherURL)&q=\(cityName)&appid=\(apiKey)"
        performRequest(urlString: urlString)
    }

        func performRequest(urlString: String) {
        //1. Create a url
        if let url = URL(string: urlString) {
            //2. create url session
            let session = URLSession(configuration: .default)

            //3. give session a task
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            
            //4. Start the task
            task.resume()
        }

    }

    func handle(data: Data?, response: URLResponse?, error: Error?) {
        if error != nil {
            print(error!) //adding the ! makes it optional?
            return
        }

        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString!)
        }

    }
}
