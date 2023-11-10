import SwiftUI

struct ProductTypeView:  View {
    
    @State var selectedOption: Int = 1
    
    var stockRepository : StockRepository
    
    var body: some View {
        HStack(spacing: 16) {
            VStack(spacing: 16) {
                RadioButtonView(index: 1, selectedIndex: $selectedOption)
                RadioButtonView(index: 2, selectedIndex: $selectedOption)
                RadioButtonView(index: 3, selectedIndex: $selectedOption)
            }
            VStack(spacing: 16) {
                HStack(spacing: 16) {
                    Text(stockRepository.productsType[0].name)
                        .lineLimit(1)
                        .truncationMode(.tail)
                        .frame(maxWidth: .infinity,
                               alignment: .leading)
                    Text("\(stockRepository.productsType[0].credits) credits")
                }
                HStack(spacing: 16) {
                    Text(stockRepository.productsType[1].name)
                        .lineLimit(1)
                        .truncationMode(.tail)
                        .frame(maxWidth: .infinity,
                               alignment: .leading)
                    Text("\(stockRepository.productsType[1].credits) credits")
                }
                HStack(spacing: 16) {
                    Text(stockRepository.productsType[2].name)
                        .lineLimit(1)
                        .truncationMode(.tail)
                        .frame(maxWidth: .infinity,
                               alignment: .leading)
                    Text("\(stockRepository.productsType[2].credits) credits")
                }
            }
            
        }
    }
    
}

struct RadioButtonView: View {
    var index: Int
    @Binding var selectedIndex: Int
    var body: some View {
        Button(action: {
            selectedIndex = index
        }) {
            HStack {
                Image(systemName: self.selectedIndex == self.index ? "largecircle.fill.circle" : "circle")
                    .foregroundColor(.black)
            }
        }
    }
}
