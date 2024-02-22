//
//  HourTile.swift
//  Track Weather
//
//  Created by Md. Mahinur Rahman on 2/21/24.
//

import SwiftUI

struct HourTile: View {
    let hourModel:HourModel
    var body: some View {
        Capsule()
            .frame(width: 60, height: 146)
            .foregroundStyle(Color(hourModel.time=="Now" ? K.ViewColors.nowHourTileColor : K.ViewColors.hourTile))
            .overlay{
                Capsule()
                    .stroke(Color.white.opacity(hourModel.time=="Now" ? 0.5 : 0.2), lineWidth: 1)
                VStack{
                    Text(hourModel.time)
                        .font(.custom(K.SFProDisplay.bold, size: 15))
                        .font(.subheadline)
                    Image(hourModel.icon)
                        .resizable()
                        .frame(width: 32, height: 32)
                    if let percentage = hourModel.percentage{
                        Text("\(percentage)%")
                            .foregroundStyle(Color(K.CustomColors.brandPest))
                            .font(.custom(K.SFProDisplay.bold, size: 13))
                            .font(.footnote)
                    }else{
                        Text("")
                            .foregroundStyle(Color(K.CustomColors.brandPest))
                            .font(.custom(K.SFProDisplay.bold, size: 13))
                            .font(.footnote)
                    }
                    Text("\(hourModel.temperature)°")
                        .font(.custom(K.SFProDisplay.regular, size: 20))
                        .font(.title3)
                }
            }
            .foregroundStyle(Color.white)
            .shadow(radius: 15)
    }
}

#Preview {
    HourTile(hourModel: HourModel(time: "12 PM", icon: K.WeatherIcons.moonCloudMidRain, percentage: "30", temperature: "19"))
}
