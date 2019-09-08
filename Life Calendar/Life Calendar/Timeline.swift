import SwiftUI

struct Timeline: View {
    
    @State private var weeks: [Week] = {
        var weeks: [Week] = []
        var previousWeek = Week(start: Date())
        for i in 0...4500 {
            weeks.append(previousWeek)
            let newWeek = Week(start: previousWeek.end)
            previousWeek = newWeek
        }
        return weeks
    }()
        
    var body: some View {
        Grid(columns: 52, numItems: weeks.count, alignment: .center) { index, colWidth in
            Cell(width: colWidth)
        }
        .frame(width: 330, height: 568, alignment: .center)
    }
    
}