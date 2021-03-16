/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 3);
/******/ })
/************************************************************************/
/******/ ({

/***/ "./resources/js/settings.js":
/*!**********************************!*\
  !*** ./resources/js/settings.js ***!
  \**********************************/
/*! no static exports found */
/***/ (function(module, exports) {

$(function () {
  var $settingsForm = $('#settings_form');

  if ($settingsForm.length > 0) {
    $('#country').change(function () {
      $.get(APP_URL + '/states', {
        country: $(this).val()
      }, function (data) {
        if (data.status == 1) {
          $('#state').empty().append(data.states);
        }
      });
    });
    $('#avatar').change(function () {
      var uploadFile = $(this);
      var files = !!this.files ? this.files : [];
      if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support

      if (/^image/.test(files[0].type)) {
        // only image file
        var reader = new FileReader(); // instance of the FileReader

        reader.readAsDataURL(files[0]); // read the local file

        reader.onloadend = function () {
          // set image data as background of div
          //alert(uploadFile.closest(".upimage").find('.imagePreview').length);
          uploadFile.closest(".imgUp").find('.imagePreview').css("background-image", "url(" + this.result + ")");
        };
      }
    });
    $settingsForm.validate({
      rules: {
        name: 'required',
        country: 'required'
      },
      submitHandler: function submitHandler(form) {
        var $form = $(form);
        var formData = new FormData(form);
        $.ajax({
          url: $form.attr('action'),
          method: 'post',
          data: formData,
          contentType: false,
          processData: false,
          beforeSend: function beforeSend() {
            $form.find('input').prop('disabled', true);
            $form.find('#submit_btn').html('<i class="fa fa-spinner fa-spin"></i> Please Wait ');
          },
          success: function success(data) {
            var message;

            if (data.status == 1) {
              message = '<div class="alert alert-success mt-2">' + data.message + '</div>';
              $(message).appendTo($form).delay(5000).fadeOut(500, function () {
                $(this).remove();
              });
            } else {
              message = '<div class="alert alert-danger mt-2">' + data.message + '</div>';
              $(message).appendTo($form).delay(5000).fadeOut(500, function () {
                $(this).remove();
              });
            }
          },
          error: function error() {
            var message = '<div class="alert alert-danger mt-2">An error occurred. Please try again.</div>';
            $(message).appendTo($form).delay(5000).fadeOut(500, function () {
              $(this).remove();
            });
          },
          complete: function complete() {
            $form.find('input').prop('disabled', false);
            $form.find('#submit_btn').html(' Save Changes ');
          }
        });
      }
    });
  }

  var passwordForm = $('#password_form');

  if (passwordForm.length > 0) {
    passwordForm.validate({
      rules: {
        current_password: {
          required: true,
          minlength: 8
        },
        password: {
          required: true,
          minlength: 8
        },
        password_confirmation: {
          required: true,
          equalTo: '#password'
        }
      },
      submitHandler: function submitHandler(form) {
        form.submit();
      }
    });
  }
});

/***/ }),

/***/ 3:
/*!****************************************!*\
  !*** multi ./resources/js/settings.js ***!
  \****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(/*! D:\xampp\htdocs\expressmyview\resources\js\settings.js */"./resources/js/settings.js");


/***/ })

/******/ });