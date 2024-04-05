//
//  MainView.swift
//  MC1
//
//  Created by Taerin Kim on 3/25/24.
//

import SwiftUI

struct HomeView: View {
    // var, let
    @State var isHeart1: Bool = false
    @State var isHeart2: Bool = false
    @State var isHeart3: Bool = false
    @State var isHeart4: Bool = false
    @State var isHeart5: Bool = false
    @State var isHeart6: Bool = false
    @State var isHeart7: Bool = false
    @State var isHeart8: Bool = false
    @State var isHeart9: Bool = false
    
    var body: some View {
        
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Text("새로운 여행 스팟을 찾아보세요")
                        .foregroundStyle(Color(hexColor: "1098A1"))
                        .font(
                            .custom("SokchoBadaDotum",
                                    size: 18))
                        .padding(EdgeInsets(top: 15, leading: 20, bottom: 5, trailing: 15))
                    Spacer()
                    
                    Button(action: {
                        // Handle "여행 시작하기" button action
                    }) {
                        Image(systemName: "bell.badge.fill")
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .frame(width: 40, height: 40)
                            .padding(EdgeInsets(top: 15, leading: 20, bottom: 0, trailing: 15))
                            .foregroundColor(.yellow)
                    }
                }
                HStack {
                    Group {
                        Image(systemName: "location.fill")
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .frame(width: 30, height: 30)
                            .padding(.leading, 20)
                            .foregroundStyle(Color(hexColor: "1098A1"))
                        Text("(〒530-8201) 오사카부 오사카시\n나카노시마 1초메 3-20")
                            .foregroundColor(.black)
                            .font(.system(size: 15))
                            .padding(.trailing, 20)
                    }
                    .padding(.bottom, 20)
                }
            }
            .background(Color.white)
            // cornerRadius: 숫자 커질수록 더 둥글어짐
            .clipShape(RoundedRectangle(cornerRadius: 10))
            // color: 그림자 색깔 변경 가능, radius: 그림자 길이라고 생각하면 될듯
            .shadow(color: .gray, radius: 3)
            .padding(EdgeInsets(top: 20, leading: 15, bottom: 0, trailing: 15))
            
            ScrollView() {
                VStack(alignment: .leading, spacing: 10) {
                    Text("FOOD & CAFE")
                        .font(.system(size: 20))
                        .padding(EdgeInsets(top: 20, leading: 20, bottom: 10, trailing: 0))
                    ScrollView(.horizontal) {
                        HStack(spacing: 30) {
                            item("Frame1", "캘리포니아롤 맛집", subTitle: "인생 연어캘리포니아롤 ", "47/50", isHeart: $isHeart1)
                            item("Frame2", "라떼 맛집", subTitle: "라떼 투어 하기 좋은 카페", "15/20", isHeart: $isHeart2)
                            item("Frame3", "오사카 라멘", subTitle: "50년 전통 라멘", "10/15", isHeart: $isHeart3)
                        }
                        //party.popper.fill
                        //fireworks
                        //
                    }
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("PHOTOSPOT")
                        .font(.system(size: 20))
                        .padding(EdgeInsets(top: 50, leading: 20, bottom: 10, trailing: 0))
                    ScrollView(.horizontal) {
                        HStack(spacing: 30) {
                            item("Frame4", "오사카 동네 ", subTitle: "오후에 예쁜 포토스팟", "3/10", isHeart: $isHeart4)
                            item("Frame5", "벚꽃이 예쁜 곳", subTitle: "산 속 벚꽃 공원", "17/30", isHeart: $isHeart5)
                            item("Frame6", "오사카의 아침", subTitle: "오사카 로컬 포토스팟", "8/10", isHeart: $isHeart6)
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("SHOPPING")
                        .font(.system(size: 20))
                        .padding(EdgeInsets(top: 50, leading: 20, bottom: 10, trailing: 0))
                    ScrollView(.horizontal) {
                        HStack(spacing: 30) {
                            item("Frame7", "피규어 쇼핑", subTitle: "숨겨진 피규어 쇼핑스팟", "47/50", isHeart: $isHeart7)
                            item("Frame8", "쇼핑여행 오신 분들께 추천", subTitle: "단골 편집샵 될 수 있는 곳", "25/30", isHeart: $isHeart8)
                            item("Frame9", "빈티지샵", subTitle: "빈티지 보물 건질 수 있는 곳", "10/15", isHeart: $isHeart9)
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                }
            }
            
            
            
            
            // scrollView(.horizontal)
            //        HStack {
            //                Image("Frame 6")
            //                    .resizable()
            //                    .aspectRatio(contentMode: .fit)
            //                    .frame(width: 200, height: 200)
            //                    .alignmentGuide(.leading) { d in d[.leading] }
            //                    .padding(.leading, 45)
            //
            //                Image("Rectangle 5")
            //                .resizable()
            //                .aspectRatio(contentMode: .fit)
            //                .frame(width: 200, height: 200)
            //        }
        }
    }
    
    @ViewBuilder
    func item(_ imgName: String, _ title: String, subTitle: String, _ hits: String, isHeart: Binding<Bool>) -> some View {
        VStack(alignment: .leading) {
            HStack {
                Image(imgName)
                    .resizable()
                    .frame(width: 250, height: 200)
            }
            HStack {
                Text(title)
                    .font(.system(size: 15))
                    .padding(.top, 10)
                Spacer()
                Text(hits)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundStyle(.red)
                    .padding(.top, 10)
            }
            Text(subTitle)
                .font(.system(size: 15))
            
            Button(action: {
                isHeart.wrappedValue.toggle()
            }) {
//
//                if isHeart.wrappedValue {
//                    Image(systemName: "heart.fill")
//                        .foregroundStyle(Color(hexColor: "1098A1"))
//                        .frame(width: 18, height: 20)
//                } else {
//                    Image(systemName: "heart")
//                        .foregroundStyle(Color(hexColor: "1098A1"))
//                        .frame(width: 18, height: 20)
//                }
//
                Image(systemName: isHeart.wrappedValue ? "heart.fill" : "heart")
                // 삼항 연산자
                // 확인할 것 ? true면 : false면
                    .foregroundStyle(Color(hexColor: "1098A1"))
                    .frame(width: 18, height: 20)
            }
            .padding(.top, 10)
        }
    }
}

#Preview {
    HomeView(
        isHeart1: false,
        isHeart2: false,
        isHeart3: false,
        isHeart4: false,
        isHeart5: false,
        isHeart6: false,
        isHeart7: false,
        isHeart8: false,
        isHeart9: false)
}


// @State var isHeart: Bool = false


// Image(systemName: fillterLocal.wrappedValue ? "heart" : "heart.fill")
// .foregroundStyle(.black)
