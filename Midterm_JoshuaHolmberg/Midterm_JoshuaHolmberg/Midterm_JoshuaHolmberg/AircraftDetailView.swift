import SwiftUI

struct AircraftDetailView: View {
    let aircraft: Aircraft

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("AIRCRAFT DETAILS")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.top)

                Image(aircraft.imageName)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.bottom)

                Text(aircraft.name)
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 2)

                Text(aircraft.description)
                    .font(.body)
                    .foregroundColor(.primary)

                Spacer()
            }
            .padding()
        }
        .navigationTitle(aircraft.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
