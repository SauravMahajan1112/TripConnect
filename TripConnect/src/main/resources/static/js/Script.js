document.addEventListener('DOMContentLoaded', () => {
    const form = document.querySelector('.traveler-form');

    form.addEventListener('submit', (event) => {
        const phoneInput = document.querySelector('#ph');
        const phoneValue = phoneInput.value;

        if (!/^\d{10}$/.test(phoneValue)) {
            event.preventDefault();
            alert('Please enter a valid 10-digit phone number.');
            phoneInput.focus();
        }
    });
});

