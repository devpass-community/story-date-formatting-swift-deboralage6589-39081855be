import Foundation

@main
public struct DateFormatting {

    public static func main() {
        let date = DateFormatting().dateFromString(dateString: "01/01/2022")

        print(DateFormatting().formatDate(date: date!))
    }

    func formatDate(date: Date) -> String {

        return date.formatted()
    }

    func dateFromString(dateString: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        let date = dateFormatter.date(from: dateString)

        return date
    }
}
