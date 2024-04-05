import SwiftUI
import MapKit



struct IcecreamView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.6937378, longitude: 135.5021651), // Osaka coordinates
        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    )
    
    @State var fillterLocal = false
    @State var fillterLike = false
    
    var body: some View {
        ZStack(alignment: .top) {
            Map(coordinateRegion: $region, annotationItems: [
                Annotation(title: "Osaka", coordinate: region.center)
            ]) { annotation in
                MapMarker(coordinate: annotation.coordinate)
            }

            VStack(spacing: 15) {
                HStack(spacing: 15) {
                    Group {
                        Image(systemName: "location.fill")
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .frame(width: 30, height: 30)
                            .padding(.leading, 1)
                            .foregroundStyle(Color(hexColor: "1098A1"))
                        Text("(〒530-8201) 오사카부 오사카시 나카노시마 1초메 3-20")
                            .foregroundColor(.black)
                            .font(.system(size: 15))
                            .padding(.trailing, 80)
                    }
                   
                    Button(action: {
                        }) {
                        Image(systemName: "bell.badge.fill")
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .frame(width: 40, height: 40)
                            .foregroundColor(.yellow)
                    }
                }
//                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                .padding(20)
                .background(Color.white)
                // cornerRadius: 숫자 커질수록 더 둥글어짐
                .clipShape(RoundedRectangle(cornerRadius: 10))
                // color: 그림자 색깔 변경 가능, radius: 그림자 길이라고 생각하면 될듯
                .shadow(color: .gray, radius: 3)
               
                
                HStack {
                    Text("≡")
                        .font(.title)
                        .padding(.leading, 10)
                        .foregroundColor(.black)
                    TextField("Search", text: .constant(""))
                        .padding(.vertical, 5)
                        .cornerRadius(5)
                        .foregroundColor(.black)
                    Button(action: {
                        // Search action
                    }) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.black)
                            .padding(.trailing, 10)
                    }
                    
                }
                .padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30))
                .background(Color.white)
                // cornerRadius: 숫자 커질수록 더 둥글어짐
                .clipShape(RoundedRectangle(cornerRadius: 30))
                // color: 그림자 색깔 변경 가능, radius: 그림자 길이라고 생각하면 될듯
                .shadow(color: .gray, radius: 3)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.yellow), lineWidth: 0.5))
                
                HStack {
                    Spacer()
                    VStack(spacing: 25) {
                        Button(action: {
                            fillterLocal.toggle()
                        }) {
                            Image(systemName: fillterLocal ? "star.fill" : "star")
                                .resizable()
                                .aspectRatio(contentMode:.fit)
                                .frame(width: 27, height: 27)
                                .foregroundStyle(Color(hexColor: "1098A1"))
                        }
                        
                        VStack {
                            Divider().frame(width: 30)
                                .background(Color.black)
                        }
                        
                        
                        Button(action: {
                            fillterLike.toggle()
                        }) {
                            Image(systemName: fillterLike ? "heart.fill" : "heart")
                                .resizable()
                                .aspectRatio(contentMode:.fit)
                                .frame(width: 27, height: 27)
                                .foregroundStyle(Color(hexColor: "1098A1"))
                            
                        }
                    }
                    .padding(13)
                    .background(Color.white)
                    // cornerRadius: 숫자 커질수록 더 둥글어짐
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    // color: 그림자 색깔 변경 가능, radius: 그림자 길이라고 생각하면 될듯
                    .shadow(color: .gray, radius: 3)
                }
                .padding(.trailing, 10)
                .padding(.top, 10)
      }
            
            .padding(EdgeInsets(top: 10, leading: 12, bottom: 10, trailing: 12))
            
            if fillterLike {
                Image(systemName: "heart.fill")
                    .offset(x: 150, y:410)
                Image(systemName: "heart.fill")
                    .offset(x: 80, y:280)
                Image(systemName: "heart.fill")
                    .offset(x: 40, y:550)
                Image(systemName: "heart.fill")
                    .offset(x: 60, y:530)
                Image(systemName: "heart.fill")
                    .offset(x: -10, y:480)
                Image(systemName: "heart.fill")
                    .offset(x: -60, y:350)
                }
            
            if fillterLocal {
                Image(systemName: "star.fill")
                    .offset(x: -20, y: 280)
                Image(systemName: "star.fill")
                    .offset(x: -90, y: 450)
                Image(systemName: "star.fill")
                    .offset(x: -120, y: 550)
                Image(systemName: "star.fill")
                    .offset(x: 10, y: 550)
                Image(systemName: "star.fill")
                    .offset(x: 30, y: 610)
            }
        }
        .foregroundStyle(Color(hexColor: "1098A1"))
    }
}

struct Annotation: Identifiable {
    let id = UUID()
    let title: String
    let coordinate: CLLocationCoordinate2D
}

struct IcecreamView_Previews: PreviewProvider {
    static var previews: some View {
        IcecreamView()
    }
}
