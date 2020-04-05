import SwiftUI

struct ContentView: View {
    
    let yourLife = Life()
        
    @State private var showAddEventPopover: Bool = false

    var body: some View {
        HStack {
            VStack {
                VStack(alignment: .trailing, spacing: 0) {
                    Button(action: {
                        self.showAddEventPopover = true
                    }, label: {
                        Image("AddIcon")
                    })
                    .alignmentGuide(.trailing) { dimension in
                        dimension[.trailing] + 10
                    }
                    .popover(isPresented: self.$showAddEventPopover, arrowEdge: .bottom, content: {
                        Text("Add event")
                            .padding()
                    })
                }
                .frame(width: DesignConstants.gridFrameWidth, height: nil, alignment: .trailing)
                
                Grid(columns: 52, numItems: yourLife.weeks.count, alignment: .center) { index, colWidth in
                    GridCell(width: colWidth)
                }
                .frame(width: DesignConstants.gridFrameWidth, height: DesignConstants.gridFrameHeight, alignment: .center)

            }
            .frame(width: DesignConstants.windowFrameWidth, height: DesignConstants.windowFrameHeight, alignment: .center)
            
        }
        .background(Color(red: 246/255, green: 244/255, blue: 241/255))
    }
    
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
    
}
