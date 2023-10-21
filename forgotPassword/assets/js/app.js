var checkValidateEmail = function () {
  var input = document.getElementById("email").value.trim();
  var regexEmail = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/g;
  if (input === "") {
    document.getElementById("error").innerHTML = "Vui lòng điền email";
    return false;
  } else if (regexEmail.test(input)) {
    document.getElementById("error").style.display = "none";
    return true;
  } else {
    document.getElementById("error").innerHTML = "Email bạn nhập không hợp lệ";
    return false;
  }
};

var checkValidatePassword = function () {
  var newPass = document.getElementById("newPassword").value.trim();
  var confirmPass = document.getElementById("confirmPassword").value.trim();
  var regexPass = /^((?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})$/u;
  if (newPass === "") {
    document.getElementById("errorNewPass").innerHTML =
      "Vui lòng nhập mật khẩu mới";
    return false;
  } else if (regexPass.test(newPass)) {
    if (newPass !== confirmPass) {
      document.getElementById("errorConfirmPass").innerHTML =
        "Mật khẩu xác nhận không giống với mật khẩu bạn vừa mới tạo.";
      return false;
    }
    document.getElementById("errorNewPass").style.display = "none";
    return true;
  } else {
    document.getElementById("errorNewPass").innerHTML =
      "Mật khẩu phải chứa kí tự đặc biệt, viết hoa, có số và có đội dài từ 6-20";
    return false;
  }
};

function showPassword() {
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

document.getElementById("submitRegister").onclick = checkValidateEmail;
document.getElementById("submitChangePassword").onclick = checkValidatePassword;
