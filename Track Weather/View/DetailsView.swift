//
//  DetailsView.swift
//  Track Weather
//
//  Created by Md. Mahinur Rahman on 2/20/24.
//

import SwiftUI

struct DetailsView: View {
    @State var selectedTab = "Hourly Forecast"
    @ObservedObject var viewModel = DetailsViewModel()
    var body: some View {
        ZStack{
            VStack {
                Capsule()
                    .fill(Color(K.ViewColors.dragIndicatorColor))
                    .frame(width: 48, height: 5)
                    .padding(10)

                TabBarButtons(selectedTab: $selectedTab)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                        ForEach(viewModel.hours){ hour in
                            HourTile(hourModel: hour)
                        }
                    }
                    .padding()
                }
                ScrollView{
                    RoundedRectangle(cornerRadius: 22)
                        .frame(width: 342, height: 158)
                        .foregroundStyle(Color(K.CustomColors.brandPurple).opacity(0.5))
                        .blendMode(.multiply)
                        .overlay{
                            RoundedRectangle(cornerRadius: 22)
                                .stroke(Color.white.opacity(0.5), lineWidth: 1)
                            VStack(alignment: .leading){
                                HStack{
                                    Image(systemName: "aqi.low")
                                    Text("AIR QUALITY")
                                        .font(.custom(K.SFProDisplay.regular, size: 15))
                                }
                                .foregroundStyle(Color(K.CustomColors.brandGray))
                                Text("3-Low Health Risk")
                                    .foregroundStyle(.white)
                                    .font(.custom(K.SFProDisplay.semiBold, size: 23))
                                ProgressView(value: 0.2)
                                Rectangle()
                                    .frame(height: 0.5)
                                    .foregroundStyle(.gray.opacity(0.25))
                                    .padding(.top,5)
                                    .padding(.bottom,5)
                                HStack{
                                    Text("See more")
                                        .font(.custom(K.SFProDisplay.regular, size: 18))
                                        .foregroundStyle(.white)
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundStyle(Color(K.CustomColors.brandGray))
                                }
                            }
                            .padding()
                        }
                        .shadow(radius: 15)
                    HStack{
                        RoundedRectangle(cornerRadius: 22)
                            .frame(width: 164, height: 164)
                            .foregroundStyle(Color(K.CustomColors.brandPurple).opacity(0.5))
                            .blendMode(.multiply)
                            .overlay{
                                RoundedRectangle(cornerRadius: 22)
                                    .stroke(Color.white.opacity(0.5), lineWidth: 1)
                                VStack(alignment: .leading){
                                    HStack{
                                        Image(systemName: "sun.max.fill")
                                        Text("UV INDEX")
                                            .font(.custom(K.SFProDisplay.regular, size: 15))
                                    }
                                    .foregroundStyle(Color(K.CustomColors.brandGray))
                                    Group{
                                        Text("4")
                                            .font(.custom(K.SFProDisplay.semiBold, size: 30))
                                        Text("Moderate")
                                            .font(.custom(K.SFProDisplay.semiBold, size: 23))
                                    }
                                    .foregroundStyle(.white)
                                    ProgressView(value: 0.01)
                                }
                                .padding()
                            }
                        
                        RoundedRectangle(cornerRadius: 22)
                            .frame(width: 164, height: 164)
                            .foregroundStyle(Color(K.CustomColors.brandPurple).opacity(0.5))
                            .blendMode(.multiply)
                            .overlay{
                                RoundedRectangle(cornerRadius: 22)
                                    .stroke(Color.white.opacity(0.5), lineWidth: 1)
                                VStack(alignment: .leading) {
                                    HStack{
                                        Image(systemName: "sunrise.fill")
                                        Text("SUN RISE")
                                            .font(.custom(K.SFProDisplay.regular, size: 15))
                                    }
                                    .foregroundStyle(Color(K.CustomColors.brandGray))
                                    Text("5:28 AM")
                                        .font(.custom(K.SFProDisplay.semiBold, size: 30))
                                        .foregroundStyle(.white)
                                    ProgressView(value: 0.4)
                                    Text("Sunset: 7:25PM")
                                        .foregroundStyle(.white)
                                        .font(.custom(K.SFProDisplay.regular, size: 15))
                                }
                                .padding()
                            }
                    }
                    
                    HStack{
                        RoundedRectangle(cornerRadius: 22)
                            .frame(width: 164, height: 164)
                            .foregroundStyle(Color(K.CustomColors.brandPurple).opacity(0.5))
                            .blendMode(.multiply)
                            .overlay{
                                RoundedRectangle(cornerRadius: 22)
                                    .stroke(Color.white.opacity(0.5), lineWidth: 1)
                                VStack(alignment: .leading){
                                    HStack{
                                        Image(systemName: "wind")
                                        Text("WIND")
                                            .font(.custom(K.SFProDisplay.regular, size: 15))
                                    }
                                    .foregroundStyle(Color(K.CustomColors.brandGray))
                                    Image(systemName: "safari")
                                        .resizable()
                                        .foregroundStyle(.white)
                                        .frame(width: 100, height: 100)
                                }
                                .padding()
                            }
                        
                        RoundedRectangle(cornerRadius: 22)
                            .frame(width: 164, height: 164)
                            .foregroundStyle(Color(K.CustomColors.brandPurple).opacity(0.5))
                            .blendMode(.multiply)
                            .overlay{
                                RoundedRectangle(cornerRadius: 22)
                                    .stroke(Color.white.opacity(0.5), lineWidth: 1)
                                VStack(alignment: .leading) {
                                    HStack{
                                        Image(systemName: "drop.fill")
                                        Text("RAIN FALL")
                                            .font(.custom(K.SFProDisplay.regular, size: 15))
                                    }
                                    .foregroundStyle(Color(K.CustomColors.brandGray))
                                    Group{
                                        Text("1.8 mm")
                                            .font(.custom(K.SFProDisplay.semiBold, size: 30))
                                        Text("in last hour")
                                            .font(.custom(K.SFProDisplay.semiBold, size: 23))
                                    }
                                    .foregroundStyle(.white)
                                    Text("1.2 mm expected in next 24h.")
                                        .foregroundStyle(.white)
                                        .font(.custom(K.SFProDisplay.regular, size: 15))
                                }
                                .padding()
                            }
                    }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    DetailsView()
}

struct TabBarButtons: View{
    @Binding var selectedTab: String
    var body: some View{
        Button{
            
        }label: {
            HStack{
                VStack{
                    Text("Hourly Forecast")
                    ZStack{
                        Rectangle()
                            .frame(height: 1)
                            .opacity(0.5)
                        Ellipse()
                            .frame(width: 150, height: 1)
                            .glow()
                    }
                }
                .padding(.trailing,-4)
                VStack{
                    Text("Weekly Forecast")
                    Rectangle()
                        .frame(height: 1)
                        .opacity(0.5)
                }
                .padding(.leading,-4)
            }
        }
        .foregroundStyle(Color("BrandGray"))
    }
}


extension View{
    func glow(color: Color = .white, radius: CGFloat = 5) -> some View{
        self
            .overlay(self.blur(radius: radius/6))
            .shadow(color: color, radius: radius/2)
    }
    func elivation()-> some View{
        self
            .overlay(self.blur(radius: 5))
            .shadow(color: .black, radius: 0.5)
            .shadow(color: .black, radius: 0.5)
            .shadow(color: .black, radius: 0.5)
    }
}
