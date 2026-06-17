export function selectAmount(buttonElement, value) {
  document.querySelectorAll('.amount-btn').forEach(btn => btn.classList.remove('selected'));
  buttonElement.classList.add('selected');
  document.getElementById('custom-amount-wrapper').style.display = 'none';
  document.getElementById('donation-amount-field').value = value;
}

export function selectCustomOption(buttonElement) {
  document.querySelectorAll('.amount-btn').forEach(btn => btn.classList.remove('selected'));
  buttonElement.classList.add('selected');

  const wrapper = document.getElementById('custom-amount-wrapper');
  wrapper.style.display = 'flex';

  const inputField = document.getElementById('donation-amount-field');
  inputField.value = '';
  inputField.focus();
}

window.selectAmount = selectAmount;
window.selectCustomOption = selectCustomOption;