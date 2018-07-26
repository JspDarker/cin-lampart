


let btn = document.getElementById('add');
// Add Event
btn.addEventListener('click',function() {
    // Declaration variables
    let name = document.getElementById('name');
    let parent =document.getElementById('list-name');
    let select = parent.querySelectorAll("option");

    let names = name.value;
    // check empty field
    if(names.trim() ==="") {
        alert("Bạn phải nhập họ tên");
        return false;
    }

    // check same field
    for(let i in select) {
        if(names === select[i].value) {
            alert("Họ tên bị trùng");
            return false;
        }
    }
    // create Element child
    let newItems = document.createElement("OPTION");
    let textNode = document.createTextNode(names);
    newItems.appendChild(textNode);
    newItems.value = names;

    // insert into Element parent
    parent.insertBefore(newItems, parent.childNodes[0]);

});

