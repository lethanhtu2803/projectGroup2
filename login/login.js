var modal = document.getElementById("modal");


var btn = document.getElementById("submit");


var span = document.getElementsByClassName("close")[0];


function modalClick() {
  modal.style.display = "block";
}

// Khi người dùng bấm dấu x thì đóng modal box lại
span.onclick = function () {
  modal.style.display = "none";
};

// Khi người dùng bấm bất kì đâu ngoài modal thì đóng modal box lại
window.onclick = function (event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
};

// var checkValidate = function () {
//   var valid = true;

//   valid =
//     checkEmpty("username", "error", "errorNameModal") &
//     checkEmpty("password", "error", "errorPassModal");

//   valid &=
//     checkValidateName("username", "errorNameModal") &
//     checkValidatePassword("password", "errorPassModal");

//   if (!valid) {
//     return false;
//   }
//   return valid;
// };

// // Hàm kiểm tra có ô nhập nào bỏ trống không
// var checkEmpty = function (selectorQuery, selectorEmpty, selectorError) {
//   var input = document.getElementById(selectorQuery).value;
//   var empty = document.getElementById(selectorEmpty);
//   var error = document.getElementById(selectorError);
//   if (input === "") {
//     modalClick();
//     empty.innerHTML =
//       "Vui lòng nhập tên tài khoản và mật khẩu. Không được bỏ trống";
//       error.style.display = "none";
//     return false;
//   }  else {
//     modalClick();
//     error.style.display = "block";
//     return true;
//   }

// };

// Hàm kiểm tra tính hợp lệ của username
var checkValidateName = function (selectorQuery,  selectorError) {
  var regexName = /^[\p{L}\s]+$/u;
  var input = document.getElementById(selectorQuery).value.trim();
  var empty = document.getElementById(selectorEmpty);
  var error = document.getElementById(selectorError);
  if (regexName.test(input)) {
    return true;
  } else {
    empty.style.display = "none";
    error.style.display = "block";
    error.innerHTML =
      "Vui lòng nhập đúng tên đăng nhập. Không có số và kí tự đặc biệt.";
    return false;
  }
};

// Hàm kiểm tra tính hợp lệ của password
var checkValidatePassword = function (selectorQuery,  selectorError) {
  var regexPass = /^((?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})$/u;
  var input = document.getElementById(selectorQuery).value.trim();
  var empty = document.getElementById(selectorEmpty);
  var error = document.getElementById(selectorError);
 if (regexPass.test(input)) {
    return true;
  } else {
    empty.style.display = "none";
    error.style.display = "block";
    error.innerHTML =
    "Mật khẩu phải chứa kí tự đặc biệt, viết hoa, có số và có đội dài từ 6-20.";
    return false;
  }
};

// ĐĂNG KÍ

// Hàm kiểm tra validate đăng kí
var checkSignIn = function () {
  var valid = true;
  console.log(document.getElementById("name").value);
  console.log(document.getElementById("pass").value);
  console.log(document.getElementById("email").value);
  console.log(document.getElementById("phoneNumber").value);
  console.log(document.getElementById("datepicker").value);
  valid =
    checkEmptySignIn("name","error", "error1","errorName") &
    checkEmptySignIn("pass", "error", "error1","errorPass") &
    checkEmptySignIn("email", "error", "error1","errorEmail") &
    checkEmptySignIn("phoneNumber", "error", "error1","errorPhone") &
    checkEmptySignIn("datepicker", "error", "error1","errorDate");

  valid &= checkValidateName("name", "errorName") & checkValidatePassword("pass", "errorPass") & checkValidateEmail("email", "errorEmail") 
          & checkValidatePhone("phoneNumber", "errorPhone");

  if (!valid) {
    return false;
  }
  return valid;
};

// Hàm kiểm tra tên hợp lệ
var checkValidateName = function (selectorQuery, selectorError) {
  var regexName = /^[\p{L}\s]+$/u;
  var input = document.getElementById(selectorQuery).value;
  var error = document.getElementById(selectorError);
  if (regexName.test(input)) {
    error.style.display = "none";
    return true;
  } else {
    error.innerHTML =
      "Vui lòng nhập đúng tên đăng nhập. Không có số và kí tự đặc biệt";
    return false;
  }
};


// Hàm kiểm tra tính hợp lệ của password
var checkValidatePassword = function (selectorQuery, selectorError) {
  var regexPass = /^((?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})$/u;
  var input = document.getElementById(selectorQuery).value.trim();
  var error = document.getElementById(selectorError);
  if (regexPass.test(input)) {
    return true;
  } else {
    error.innerHTML = "Mật khẩu phải chứa kí tự đặc biệt, viết hoa, có số và có đội dài từ 6-20";
    return false;
  }
};

// Hàm check validate Email
var checkValidateEmail = function (selectorValue, selectorError) {
  var input = document.getElementById(selectorValue).value.trim();
  var regexEmail = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/g;
  var error = document.getElementById(selectorError);
  if (regexEmail.test(input)) {
    return true;
  } else {
    error.innerHTML = "Vui lòng nhập đúng định dạng email";
    return false;
  }
};

// Hàm check valide phone number
var checkValidatePhone = function (selectorValue, selectorError) {
  var input = document.getElementById(selectorValue).value.trim();
  var regexPhone = /(84|0[3|5|7|8|9])+([0-9]{8})\b/g;
  var error = document.getElementById(selectorError);
  if (regexPhone.test(input)) {
    return true;
  } else {
    error.innerHTML = "Mật khẩu phải chứa kí tự đặc biệt, viết hoa, có số và có đội dài từ 6-20";
    return false;
  }
};


// Hàm kiểm tra có ô nhập nào bỏ trống không
var checkEmptySignIn = function (selectorQuery, selectorEmpty,selectorError,selectorErrorValidate) {
  var input = document.getElementById(selectorQuery).value.trim();
  var empty = document.getElementById(selectorEmpty);
  var error = document.getElementById(selectorError);
  var errorValid = document.getElementById(selectorErrorValidate)
  if (input === "") {
    modalClick();
    empty.innerHTML = "Vui lòng nhập đầy đủ thông tin. Không được bỏ trống";
    error.style.display = "none";
    errorValid.style.display = "none";
    return false;
  } else {
    modal.style.display = "none";
    return true;
  }
  
};

// document.getElementById("submit").onclick = checkValidate;
document.getElementById("submitRegister").onclick = checkSignIn;
