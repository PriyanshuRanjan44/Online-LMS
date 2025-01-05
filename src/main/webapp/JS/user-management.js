// JavaScript to toggle form visibility based on button click
document.getElementById('create-btn').onclick = function() {
    toggleForm('create-user-form');
};
document.getElementById('update-btn').onclick = function() {
    toggleForm('update-user-form');
};
document.getElementById('delete-btn').onclick = function() {
    toggleForm('delete-user-form');
};

// Function to toggle between the forms
function toggleForm(formId) {
    const forms = document.querySelectorAll('.form-container');
    forms.forEach(form => {
        form.style.display = 'none'; // Hide all forms
    });
    document.getElementById(formId).style.display = 'block'; // Show the selected form
}
