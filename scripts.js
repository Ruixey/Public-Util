// Function to load file content and insert it into the code block
async function loadFileContent(filePath, elementId) {
  try {
    const response = await fetch(filePath);
    if (!response.ok)
      throw new Error(`Failed to load ${filePath}: ${response.statusText}`);
    const content = await response.text();
    document.getElementById(elementId).textContent = content;
    Prism.highlightElement(document.getElementById(elementId)); // Reapply syntax highlighting
  } catch (error) {
    console.error(error);
    document.getElementById(elementId).textContent = "Error loading file.";
  }
}

// Function to copy code content to clipboard
function copyToClipboard(elementId) {
  const code = document.getElementById(elementId).innerText;
  navigator.clipboard
    .writeText(code)
    .then(() => alert("Copied to clipboard!"))
    .catch((err) => console.error("Could not copy text: ", err));
}

// Load contents on page load
window.addEventListener("DOMContentLoaded", () => {
  loadFileContent("assets/ssh", "sshCode");
  loadFileContent("assets/bashrc", "bashrcCode");
});
