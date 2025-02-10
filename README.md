# Public Util

Public Util is a personal static website designed to host and display your public SSH key, signing public key, and bash default configuration. It provides a clean, modern interface with built-in copy-to-clipboard functionality and syntax highlighting, making it easy to share your configurations or use them on multiple devices.

## Features

- **Public Keys Display:**  
  View your SSH and signing public keys in neatly formatted code blocks.

- **Bash Configuration:**  
  Easily access your default bash configuration with proper syntax highlighting.

- **Copy-to-Clipboard:**  
  Each section includes a copy button so you can quickly copy the content without manually selecting text.

- **Responsive & Modern Design:**  
  Built with [Bootstrap 5](https://getbootstrap.com/) for a responsive layout and [Prism.js](https://prismjs.com/) for code syntax highlighting.

## Installation & Customization

1. **Customize the Content**

   - Open `index.html` and replace the placeholder text (`Loading...`) in the code blocks with your actual SSH key, signing key, and bash configuration.
   - Each section is clearly separated and includes a copy button for convenience.

2. **Update Styling**

   - Edit `styles.css` to adjust the design to your preferences.
   - The project uses [Roboto Mono](https://fonts.google.com/specimen/Roboto+Mono) as its main font, with additional theming provided by custom CSS.

3. **Copy-to-Clipboard Functionality**

   - The `scripts.js` file handles the copy functionality for each code block.
   - Modify this file if you wish to extend or customize the copy behavior.

## Deployment

Public Util is a static website that can be easily deployed on GitHub Pages or any static hosting service.

### GitHub Pages

1. **Push your changes** to the repository.
2. In your repository's **Settings**, navigate to the **GitHub Pages** section.
3. Select the source branch (e.g., `main`) and save.
4. Optionally, configure a custom domain (e.g., `spizza.cc`) in the GitHub Pages settings.

## Dependencies

- **Bootstrap 5.1.3:** Provides the responsive grid system and prebuilt UI components.
- **Prism.js:** Used for syntax highlighting in the code blocks.
- **Google Fonts:** [Roboto Mono](https://fonts.google.com/specimen/Roboto+Mono) is imported for a modern monospaced look.

Both Bootstrap and Prism.js are loaded via CDN in the HTML, so no local installation is required.

## Contributing

If you have suggestions or improvements, feel free to fork this repository and submit a pull request. For major changes, please open an issue first to discuss what you'd like to change.

## License

This project is licensed under the [GNU Public License v3](LICENSE).

## Contact

For questions or feedback, please open an issue in the repository or reach out via GitHub.
