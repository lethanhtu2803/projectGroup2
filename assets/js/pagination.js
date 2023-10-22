var thisPage = 1;
var limit = 6;
var list = document.querySelectorAll('.list .item');
function loadItems() {
    var beginGet = limit * (thisPage - 1);
    var endGet = limit * thisPage - 1;
    list.forEach((item,key) => {
        if(key >= beginGet && key <= endGet) {
            item.style.display = 'block';
        } else {
            item.style.display = 'none';
        }
    })
    // Tính vị trí trang hiện tại
    listPage();
}

loadItems();
function listPage() {
    // Số trang mà sẽ có dựa vào danh sách item và giới hạn item trên 1 trang
    var count = Math.ceil(list.length / limit);
    document.querySelector('.pagination').innerHTML = '';

    if(thisPage != 1) {
        var prev = document.createElement('li');
        prev.innerHTML = '<=';
        prev.setAttribute('onclick', "changePage(" + (thisPage - 1) + ")");
        document.querySelector('.pagination').appendChild(prev);
    }

    for(var i = 1;i <= count;i++) {
        // Tạo số trang để chuyển dựa vào i
        var newPage = document.createElement('li');
        newPage.innerHTML = i;
        if(i == thisPage) {
            newPage.classList.add('is_active');
        }
        newPage.setAttribute('onclick',"changePage(" + i + ")");
        document.querySelector('.pagination').appendChild(newPage);
    }

    if(thisPage != count) {
        var next = document.createElement('li');
        next.innerHTML = '=>';
        next.setAttribute('onclick', "changePage(" + (thisPage +  1) + ")");
        document.querySelector('.pagination').appendChild(next);
    }
    
}

function changePage(i) {
    thisPage = i;
    loadItems();
}

