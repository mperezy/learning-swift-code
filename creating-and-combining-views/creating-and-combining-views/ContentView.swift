//
//  ContentView.swift
//  basic-ios-app
//
//  Created by Manuel Perez on 22/02/21.
//

import SwiftUI
import MapKit

struct TextView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("Hello world")
                .font(.title)
//                .foregroundColor(Color.black)
//                .padding()
//                .background(Color
//                                .white
//                            .blur(radius: 3.0))
            HStack {
                Text("I'm an iOS amateur developer with Spacer()")
                    .font(.subheadline)
                Spacer()
                Text("learning...")
                    .font(.subheadline)
            }
            HStack {
                Text("I'm an iOS amateur developer without Spacer()")
                    .font(.subheadline)
                Text("learning...")
                    .font(.subheadline)
            }
        }
        .padding()
        
        VStack(alignment: .leading) {
            Text("Tutle Rock leading")
                .font(.title)
            HStack {
                Text("Joshua Tree National Park with Spacer()")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
            HStack {
                Text("Joshua Tree National Park without Spacer()")
                    .font(.subheadline)
                Text("California")
                    .font(.subheadline)
            }
        }
        .padding()
        
        Image("logo")
            .padding()
        Text("This is a simple image")
            .font(.subheadline)
    }
}

struct CircleImageView: View {
    var body: some View {
        VStack(alignment: .center) {
            Image("turtlerock")
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 4))
                .shadow(radius: 7)
//            Text("Turtlerock circle edged image")
//                .font(.subheadline)
        }.padding()
    }
}

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        Map(coordinateRegion: $region)
//        Text("This is a map :D")
    }
}

struct ComposeView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImageView()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }.padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
            .preferredColorScheme(.dark)
        CircleImageView()
        MapView()
        ComposeView()
    }
}
