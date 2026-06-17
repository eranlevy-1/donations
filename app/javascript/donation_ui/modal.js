export function openDonationModal(e) {
    e.preventDefault();
    document.getElementById('donation-modal-overlay').style.display = 'flex';
    document.body.style.overflow = 'hidden'; // Disables background scrolling
}

export function closeDonationModal(e) {
    if (e)
        e.preventDefault();
    document.getElementById('donation-modal-overlay').style.display = 'none';
    document.body.style.overflow = ''; // Restores background scrolling
}

window.openDonationModal = openDonationModal;
window.closeDonationModal = closeDonationModal;
