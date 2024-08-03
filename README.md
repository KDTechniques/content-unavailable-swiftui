# ContentUnavailableSwiftUI❗️

`content-unavailable-swiftui` is a SwiftUI component designed to provide a user-friendly view for scenarios where content is unavailable. This component is useful for displaying placeholder messages or empty states within your app.

## ✨ Features

- **Customizable Image:** Optionally include a system image to visually indicate the unavailable content.
- **Title Text:** Prominently display a title to convey the main message.
- **Description Text:** Optionally add a description for additional context or instructions.
- **Responsive Layout:** Adapts layout and text scaling for a consistent appearance across various devices.

## 🛠️ Installation

To use `ContentUnavailableSwiftUI` in your SwiftUI project, follow these steps:

1. **Add the Package to Your Project**

   In Xcode, go to `File` > `Swift Packages` > `Add Package Dependency` and enter the URL of this repository. Follow the prompts to add the package to your project.
   ```ruby
   .package(url: "https://github.com/KDTechniques/content-unavailable-swiftui", from: "1.0.0")
   ```

3. **Import the Module**

   In your Swift file, import the `ContentUnavailableSwiftUI` module:

   ```swift
   import ContentUnavailableSwiftUI
   ```

## 📖 Usage
You can initialize and use iContentUnavailableView with the following parameters:

- **systemImageName:** A string representing the name of a system image (optional).
- **title:** The title text to display.
- **description:** An optional description text.
 
### Example

```swift
import SwiftUI
import ContentUnavailableSwiftUI

struct ContentView: View {
    var body: some View {
        ContentUnavailableView(
            systemImageName: "bookmark",
            title: "No Saved Episodes",
            description: "Save episodes you want to listen to later, and they'll show up here."
        )
    }
}
```

## 🤝 Contribution
Contributions are welcome! Please open an issue or submit a pull request if you have suggestions or improvements.

## 📜 License
This component is open-source and available under the MIT License. See the [LICENSE](https://github.com/KDTechniques/content-unavailable-swiftui/blob/main/LICENSE) file for more details.
