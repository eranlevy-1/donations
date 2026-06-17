export function switchTab(event, tabId) {
  event.preventDefault();

  document.querySelectorAll('.tab-link').forEach(link => link.classList.remove('active'));
  document.querySelectorAll('.tab-content').forEach(content => content.classList.remove('active'));

  event.currentTarget.classList.add('active');
  document.getElementById(tabId).classList.add('active');
}

window.switchTab = switchTab;