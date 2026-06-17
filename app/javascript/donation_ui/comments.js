export function toggleCommentField() {
  const checkbox = document.getElementById('add-note-checkbox');
  const commentWrapper = document.getElementById('comment-input-wrapper');
  
  if (checkbox.checked) {
    commentWrapper.style.display = 'flex';
    commentWrapper.querySelector('textarea').focus();
  } else {
    commentWrapper.style.display = 'none';
    commentWrapper.querySelector('textarea').value = '';
  }
}

window.toggleCommentField = toggleCommentField;