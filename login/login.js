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
var checkSignIn = function checkSignIn(event) {
  var valid = true;
  // console.log(document.getElementById("name").value);
  // console.log(document.getElementById("pass").value);
  // console.log(document.getElementById("email").value);
  // console.log(document.getElementById("phoneNumber").value);
  // console.log(document.getElementById("datepicker").value);
  valid &= checkEmptySignIn("name", "empty", "errorName");
  valid &= checkEmptySignIn("newPassword", "empty", "errorNewPass");
  valid &= checkEmptySignIn("confirmPassword", "empty", "errorConfirmPass");
  valid &= checkEmptySignIn("email", "empty", "errorEmail");
 

  // valid &= checkValidateName("name", "errorName");
  valid &= checkValidateEmail("email", "errorEmail");
  valid &= checkValidatePassword();

  if (!valid) {
    event.preventDefault(); // Prevent form submission
    return false;
  }
  console.log(valid)
  return valid;
};

// Hàm kiểm tra có ô nhập nào bỏ trống không
var checkEmptySignIn = function (selectorQuery, selectorEmpty,selectorErrorValidate) {
  var input = document.getElementById(selectorQuery).value.trim();
  var error = document.getElementById(selectorEmpty);
  var errorValid = document.getElementById(selectorErrorValidate);
  if (input === "") {
    modalClick();
    error.innerHTML = "Vui lòng nhập đầy đủ thông tin. Không được bỏ trống";
    errorValid.style.display = "none";
    return false;
  } else {
    errorValid.style.display = "block";
    modal.style.display = "none";
    return true;
  }
  
};


// Hàm kiểm tra tên hợp lệ
// var checkValidateName = function (selectorQuery, selectorError) {
//   var regexName = /^[\p{L} ]+$/u;
//   var input = document.getElementById(selectorQuery).value.trim();
//   var error = document.getElementById(selectorError);
//   console.log("regexName.test(input):", regexName.test(input));
//   console.log("input:", input);
//   if (regexName.test(input)) {
//     console.log("Name" + regexName.test(input));
//     error.style.display = "none";
//     return true;
//   } else {
//     console.log(1)
//     error.innerHTML =
//       "Vui lòng nhập đúng tên đăng nhập. Không có số và kí tự đặc biệt";
//     return false;
//   }
// };

// Hàm check validate Email
var checkValidateEmail = function (selectorQuery, selectorError) {
  var regexEmail = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
  var input = document.getElementById(selectorQuery).value.trim();
  var error = document.getElementById(selectorError);
  console.log("Email" +  regexEmail.test(input));
  if (regexEmail.test(input)) {
    error.style.display = "none";
    return true;
  } else {
    console.log(2)
    error.innerHTML = "Vui lòng nhập đúng định dạng email";
    return false;
  }
};



// Hàm kiểm tra tính hợp lệ của password
// var checkValidatePassword = function (selectorQuery, selectorError) {
//   var regexPass = /^((?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})$/u;
//   var input = document.getElementById(selectorQuery).value.trim();
//   var error = document.getElementById(selectorError);
//   console.log("Pass" +  regexPass.test(input));
//   if (regexPass.test(input)) {
//     error.style.display = "none";
//     return true;
//   } else {
//     error.innerHTML = "Mật khẩu phải chứa kí tự đặc biệt, viết hoa, có số và có đội dài từ 6-20";
//     return false;
//   }
// };

var checkValidatePassword = function () {
  var newPass = document.getElementById("newPassword").value.trim();
  var confirmPass = document.getElementById("confirmPassword").value.trim();
  var regexPass = /^((?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{8,20})$/u;
  if (newPass === "") {
    modalClick();
    return false;
  } else if (regexPass.test(newPass)) {
    if (newPass !== confirmPass) {
      var toggleConfirmPassword = document.getElementsByClassName("toggle-confirmPassword")[0];
toggleConfirmPassword.style.top = '0px';
      document.getElementById("errorConfirmPass").innerHTML =
        "Mật khẩu xác nhận không giống với mật khẩu bạn vừa mới tạo.";
      return false;
    }
    var toggleConfirmPassword = document.getElementsByClassName("toggle-newPassword")[0];
toggleConfirmPassword.style.left = '159px';
    document.getElementById("errorNewPass").style.display = "none";
    return true;
  } else {
    document.getElementById("errorNewPass").innerHTML =
      "Mật khẩu phải chứa kí tự đặc biệt, viết hoa,viết thường, có số và có đội dài từ 8-20";
    return false;
  }
};


// Hàm check valide phone number
// var checkValidatePhone = function (selectorValue, selectorError) {
//   var input = document.getElementById(selectorValue).value.trim();
//   var regexPhone = /(84|0[3|5|7|8|9])+([0-9]{8})\b/g;
//   var error = document.getElementById(selectorError);
//   if (regexPhone.test(input)) {
//     error.style.display = "none";
//     return true;
//   } else {
//     error.innerHTML = "Số điện thoại không hợp lệ";
//     return false;
//   }
// };

// Hàm show password
function showPassword() {
  var passwordInput = document.getElementById("pass");
  var toggleIcon = document.querySelector(".toggle-password i");

  if (passwordInput.type === "password") {
    passwordInput.type = "text";
    toggleIcon.classList.remove("far", "fa-eye");
    toggleIcon.classList.add("far", "fa-eye-slash");
  } else {
    passwordInput.type = "password";
    toggleIcon.classList.remove("far", "fa-eye-slash");
    toggleIcon.classList.add("far", "fa-eye");
  }


}

function showPasswordRegister() {
  var passwordInput = document.getElementById("newPassword");
  var toggleIcon = document.querySelector(".toggle-password i");

  if (passwordInput.type === "password") {
    passwordInput.type = "text";
    toggleIcon.classList.remove("far", "fa-eye");
    toggleIcon.classList.add("far", "fa-eye-slash");
  } else {
    passwordInput.type = "password";
    toggleIcon.classList.remove("far", "fa-eye-slash");
    toggleIcon.classList.add("far", "fa-eye");
  }


}

function showConfirmPasswordRegister() {
  var confirmPasswordInput = document.getElementById("confirmPassword");
  var toggleIcon = document.querySelector(".toggle-confirm-password i");

  if (confirmPasswordInput.type === "password") {
    confirmPasswordInput.type = "text";
    toggleIcon.classList.remove("far", "fa-eye");
    toggleIcon.classList.add("far", "fa-eye-slash");
  } else {
    confirmPasswordInput.type = "password";
    toggleIcon.classList.remove("far", "fa-eye-slash");
    toggleIcon.classList.add("far", "fa-eye");
  }
}

function showPasswordLogin() {
  var passwordInput = document.getElementById("password");
  var toggleIcon = document.querySelector(".toggle-password i");

  if (passwordInput.type === "password") {
    passwordInput.type = "text";
    toggleIcon.classList.remove("far", "fa-eye");
    toggleIcon.classList.add("far", "fa-eye-slash");
  } else {
    passwordInput.type = "password";
    toggleIcon.classList.remove("far", "fa-eye-slash");
    toggleIcon.classList.add("far", "fa-eye");
  }


}

// document.getElementById("submit").onclick = checkValidate;
document.getElementById("submitRegister").onclick = checkSignIn;

