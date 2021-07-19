//
//  MovieView.swift
//  trendingStyles
//
//  Created by Sanusi, Ridwan Oluwabusola on 18.07.21.
//

import SwiftUI

struct MovieView: View {
    @State var show = false
    @Namespace var namespace
    @State var selectedItem: Movie? = nil
    @State var isDisabled = false
    
    
    var body: some View {
        
        ZStack {
            #if os(iOS)
            content
            fullContent
                .background(VisualEffectBlur(blurStyle: .systemChromeMaterialDark).edgesIgnoringSafeArea(.all))
            #else
            content
            fullContent
                .background(VisualEffectBlur().edgesIgnoringSafeArea(.all))
            #endif
        }
    }
    
    var content: some View {
        ScrollView {
            LazyVGrid(
                columns: [
                    GridItem(.adaptive(minimum: 160), spacing: 16)
                ],
                spacing: 16) {
                ForEach(movies) { item in
                    VStack {
                        MovieItem(movie: item)
                            .matchedGeometryEffect(id: item.id, in: namespace, isSource: !show)
                            .frame(height: .infinity)
                            .onTapGesture {
                                withAnimation(.easeOut(duration: 0.3)){
                                    show.toggle()
                                    selectedItem = item
                                    isDisabled = true
                                }
                            }
                            .disabled(isDisabled)
                    }
                    .matchedGeometryEffect(id: "container\(item.id)", in: namespace, isSource: !show)
                }
            }
            .padding(16)
            .frame(maxWidth: .infinity)
        }
        .zIndex(1)
    }
    
    @ViewBuilder
    var fullContent: some View {
        if selectedItem != nil {
            ZStack(alignment: .topTrailing) {
                
                MovieDetail(movie: selectedItem!,namespace: namespace)
                
                CloseButton()
                    .padding(.trailing, 16)
                    .onTapGesture {
                        withAnimation(.easeIn(duration: 0.3)){
                            show.toggle()
                            selectedItem = nil
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3){
                                isDisabled = false
                            }
                            isDisabled = false
                        }
                    }
            }
            .zIndex(2)
            .frame(maxWidth: .infinity)
        }
    }
    
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
    }
}
