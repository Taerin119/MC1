import SwiftUI
import MapKit

struct MapchoiceView: View {
    @State private var searchText = ""
    
    var body: some View {
        VStack {
            Text("당신의 새로운 밤팟 여행지는?")
                .font(
                    .custom("SokchoBadaDotum",
                            size: 22))
                .foregroundStyle(Color(hexColor: "1098A1"))
                .padding(EdgeInsets(top: 15, leading: 25, bottom: 30, trailing: 25))
            
            
            HStack {
                TextField("오사카", text: $searchText)
                    .placeholder(when: searchText.isEmpty) {
                       // Text("Search").foregroundColor(.gray)
                        
                        Button(action: {
                            // Handle search button action
                        }) {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .padding(.leading, 300)
                        }
                        
                    }
                    .font(.system(size: 15))
                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                    .background(Color.white)
                    // cornerRadius: 숫자 커질수록 더 둥글어짐
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    // color: 그림자 색깔 변경 가능, radius: 그림자 길이라고 생각하면 될듯
                    .shadow(color: .gray, radius: 3)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.yellow), lineWidth: 0.5))
                
            }
            .padding(.horizontal)
            .background(Color.white)
            
            MapView()
                .frame(height: 400)
                .cornerRadius(10)
                .padding(EdgeInsets(top: 25, leading: 20, bottom: 35, trailing: 20))
            
            
            Button(action: {
                // Handle "여행 시작하기" button action
            }) {
                Text("여행 시작하기")
                    .font(
                        .custom("SokchoBadaDotum",
                                size: 20))
                    .foregroundStyle(Color(hexColor: "1098A1"))
                    .padding(EdgeInsets(top: 25, leading: 30, bottom: 20, trailing: 0.1))
                    

              Image(systemName: "globe.asia.australia.fill")
                    .foregroundStyle(Color(hexColor: "1098A1"))
                    .padding(EdgeInsets(top: 25, leading: 0.1, bottom: 20, trailing: 20))
                
            }
            .background(Color.white)
            // cornerRadius: 숫자 커질수록 더 둥글어짐
            .clipShape(RoundedRectangle(cornerRadius: 40))
            // color: 그림자 색깔 변경 가능, radius: 그림자 길이라고 생각하면 될듯
            .shadow(color: .gray, radius: 3)
            .overlay(RoundedRectangle(cornerRadius: 40)
                .stroke(Color(.yellow), lineWidth: 0.5))
        }
       
    }
}

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.6937, // Osaka coordinates
            longitude: 135.5023)
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = "Osaka"
        view.addAnnotation(annotation)
    }
}

//extension TextField {
//    func placeholder<Content: View>(
//        when shouldShow: Bool,
//        alignment: Alignment = .leading,
//        @ViewBuilder placeholder: () -> Content) -> some View {
//            
//            ZStack(alignment: alignment) {
//                placeholder().opacity(shouldShow ? 1 : 0)
//                self
//            }
//        }
//}

struct Mapchoice_Previews: PreviewProvider {
    static var previews: some View {
        MapchoiceView()
    }
}
