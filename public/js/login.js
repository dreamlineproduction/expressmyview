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
/******/ 	return __webpack_require__(__webpack_require__.s = 2);
/******/ })
/************************************************************************/
/******/ ({

/***/ "./resources/js/login.js":
/*!*******************************!*\
  !*** ./resources/js/login.js ***!
  \*******************************/
/*! no static exports found */
/***/ (function(module, exports) {

$(function () {
  $('#registration_form').validate({
    rules: {
      name: 'required',
      email: {
        required: true,
        email: true
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
      $.ajax({
        url: $(form).attr('action'),
        method: 'post',
        data: $(form).serialize(),
        dataType: 'json',
        beforeSend: function beforeSend() {
          $(form).find(':input').prop('disabled', true);
          $(form).find('button[type="dubmit"]').html('<i class="fas fa-spinner"></i> Please Wait ...');
        },
        success: function success(data, status, jqXHR) {
          var message;

          if (jqXHR.status === 201) {
            message = '<div class="alert alert-success">' + data.message + '</div>';
            $(form).find('input[type!="hidden"]').val('');
          } else {
            message = '<div class="alert alert-danger">' + data.message + '</div>';
            $.each(data.errors, function (element, error) {
              $('#' + element).addClass('is-invalid').parent().append('<div class="invalid-feedback">' + error + '</div>');
            });
          }

          $(message).prependTo($(form)).delay(5000).fadeOut(500, function () {
            $(this).remove();
          });
        },
        error: function error(xhr, status, _error) {
          console.log(xhr, status, _error);
          var message = '<div class="alert danger">An error occurred. Please try again.</div>';
          $(message).prependTo($(form)).delay(5000).fadeOut(500, function () {
            $(this).remove();
          });
        },
        complete: function complete() {
          $(form).find(':input').prop('disabled', false);
          $(form).find('button[type="dubmit"]').html('Sign Up');
        }
      });
    }
  });
  $('#login_form').validate({
    rules: {
      email: {
        required: true,
        email: true
      },
      password: {
        required: true,
        minlength: 8
      }
    },
    submitHandler: function submitHandler(form) {
      $.ajax({
        url: $(form).attr('action'),
        method: 'post',
        data: $(form).serialize(),
        dataType: 'json',
        beforeSend: function beforeSend() {
          var errors = $('.is-invalid');
          errors.removeClass('is-invalid').siblings('.invalid-feedback').remove();
          $(form).find(':input').prop('disabled', true);
          $(form).find('button[type="dubmit"]').html('<i class="fas fa-spinner"></i> Please Wait ...');
        },
        success: function success(data) {
          var message;

          if (data.status == 1) {
            console.log('hit');
            console.log(data.status);
            console.log(data.status == 1);
            message = '<div class="alert alert-success">Logging In ...</div>';
            $(form).find('input[type!="hidden"]').val('');
            window.location = data.redirect;
          } else {
            console.log('miss');
            console.log(data.status);
            console.log(data.status == 1);
            message = '<div class="alert alert-danger">' + data.message + '</div>';
            $.each(data.errors, function (element, error) {
              $('#' + element).addClass('is-invalid').parent().append('<div class="invalid-feedback">' + error + '</div>');
            });
          }

          $(message).prependTo($(form)).delay(5000).fadeOut(500, function () {
            $(this).remove();
          });
        },
        error: function error() {
          var message = '<div class="alert alert-success">An error occurred. Please try again.</div>';
          $(message).prependTo($(form)).delay(5000).fadeOut(500, function () {
            $(this).remove();
          });
        },
        complete: function complete() {
          $(form).find(':input').prop('disabled', false);
          $(form).find('button[type="dubmit"]').html('Sign Up');
        }
      });
    }
  });
});

/***/ }),

/***/ 2:
/*!*************************************!*\
  !*** multi ./resources/js/login.js ***!
  \*************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(/*! D:\xampp\htdocs\expressmyview\resources\js\login.js */"./resources/js/login.js");


/***/ })

/******/ });