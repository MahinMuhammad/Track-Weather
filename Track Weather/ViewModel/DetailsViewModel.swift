//
//  DetailsViewModel.swift
//  Track Weather
//
//  Created by Md. Mahinur Rahman on 2/21/24.
//

import Foundation

final class DetailsViewModel:ObservableObject{
    @Published var hours: [HourModel] = [
        HourModel(time: "12 PM", icon: K.WeatherIcons.moonCloudMidRain, percentage: "30", temperature: "19"),
        HourModel(time: "Now", icon: K.WeatherIcons.moonCloudFastWind, percentage: nil, temperature: "20"),
        HourModel(time: "1 PM", icon: K.WeatherIcons.sunCloudMidRain, percentage: nil, temperature: "22"),
        HourModel(time: "2 PM", icon: K.WeatherIcons.moonCloudFastWind, percentage: nil, temperature: "20"),
        HourModel(time: "4 PM", icon: K.WeatherIcons.moonCloudMidRain, percentage: "40", temperature: "19"),
        HourModel(time: "5 PM", icon: K.WeatherIcons.moonCloudMidRain, percentage: "40", temperature: "19"),
        HourModel(time: "6 PM", icon: K.WeatherIcons.moonCloudMidRain, percentage: "70", temperature: "16"),
        HourModel(time: "7 PM", icon: K.WeatherIcons.moonCloudFastWind, percentage: nil, temperature: "14"),
        HourModel(time: "8 PM", icon: K.WeatherIcons.moonCloudFastWind, percentage: nil, temperature: "14"),
        HourModel(time: "9 PM", icon: K.WeatherIcons.moonCloudMidRain, percentage: "90", temperature: "11"),
        HourModel(time: "10 PM", icon: K.WeatherIcons.moonCloudFastWind, percentage: nil, temperature: "11"),
        HourModel(time: "11 PM", icon: K.WeatherIcons.moonCloudFastWind, percentage: nil, temperature: "10")
    ]
}
