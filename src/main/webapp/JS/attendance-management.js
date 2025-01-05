// Function to handle navigation
function navigateTo(page) {
    // Simulate navigation by redirecting to a URL
    window.location.href = page;
}

// Add event listeners to buttons
document.addEventListener("DOMContentLoaded", () => {
    const buttons = document.querySelectorAll(".buttons-container button");

    buttons.forEach((button) => {
        button.addEventListener("click", () => {
            const targetPage = button.getAttribute("data-target");
            navigateTo(targetPage);
        });
    });
});
