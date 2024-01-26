const form = document.querySelector('#todo-form');
const input = document.querySelector('#todo-input');
const addButton = document.querySelector('#add-button');
const list = document.querySelector('#todo-list');

form.addEventListener('submit', function(event) {
    event.preventDefault();
    addTodo();
  });
  
  addButton.addEventListener('click', addTodo);

  function addTodo() {
    const todoText = input.value;
    const todoItem = document.createElement('li');
    const todoTextSpan = document.createElement('span');
    const deleteButton = document.createElement('button');
  
    todoTextSpan.textContent = todoText;
    deleteButton.textContent = 'Delete';
  
    todoItem.appendChild(todoTextSpan);
    todoItem.appendChild(deleteButton);
    list.appendChild(todoItem);
  
    input.value = '';
  }

  function addTodo() {
    // ...
  
    deleteButton.addEventListener('click', function() {
      list.removeChild(todoItem);
    });
  }
  