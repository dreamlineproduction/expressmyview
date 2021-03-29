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
/******/ 	return __webpack_require__(__webpack_require__.s = 5);
/******/ })
/************************************************************************/
/******/ ({

/***/ "./resources/js/live-streams.js":
/*!**************************************!*\
  !*** ./resources/js/live-streams.js ***!
  \**************************************/
/*! no static exports found */
/***/ (function(module, exports) {

// import Plyr from 'plyr';
//
// const player = new Plyr('#player');
$(function () {
  alertify.set('notifier', 'position', 'bottom-center');
  var $languages = $('#languages');

  if ($languages.length > 0) {
    $languages.select2();
  }

  var $thumbnail = $('#thumbnail');

  if ($thumbnail.length > 0) {
    $thumbnail.change(function () {
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
  }

  var categories = $('input[name="categories[]"]');

  if (categories.length > 0) {
    categories.click(function () {
      var checked = categories.filter(':checked');

      if (checked.length >= 3) {
        categories.each(function () {
          if (!$(this).is(':checked')) {
            $(this).prop('disabled', true);
          }
        });
      } else {
        categories.each(function () {
          if (!$(this).is(':checked')) {
            $(this).prop('disabled', false);
          }
        });
      }
    });
  }

  var podcastDetails = $('#podcast_details');

  if (podcastDetails.length > 0) {
    var $submitBtn = $('#submit_btn');
    podcastDetails.ajaxForm({
      url: $(this).attr('action'),
      method: 'post',
      beforeSend: function beforeSend() {
        $submitBtn.attr('disabled', true);
        $submitBtn.html('<i class="fa fa-spinner fa-spin"></i> Please wait');
      },
      success: function success(data) {
        if (data.status == 1) {
          window.location.href = data.redirect;
        } else {
          swal({
            title: 'Error',
            text: data.message,
            type: 'error',
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'OK',
            buttonsStyling: true,
            confirmButtonClass: 'btn btn-success'
          });
        }
      },
      complete: function complete() {
        $submitBtn.attr('disabled', false);
        $submitBtn.html('Save Changes');
      }
    });
  }

  $('.delete-stream').click(function (event) {
    event.preventDefault();
    var $this = $(this);
    alertify.confirm('Are you sure?', 'You are about to delete this podcast. This action is irreversible.', function () {
      $.ajax({
        url: $this.attr('href'),
        method: 'delete',
        data: {
          _method: 'delete',
          _token: $('meta[name=csrf-token]').attr('content')
        },
        dataType: 'json',
        beforeSend: function beforeSend() {
          $.LoadingOverlay("show");
        },
        success: function success(data) {
          console.log(data);

          if (data.status == 1) {
            alertify.success(data.message);
            window.location.reload();
          } else {
            alertify.error(data.message);
          }
        },
        error: function error() {
          alertify.error('An error occurred. Please try again.');
        },
        complete: function complete() {
          $.LoadingOverlay("hide");
        }
      });
    }, function () {});
  });
  $('#podcast_form').validate({
    rules: {
      channel: 'required',
      title: 'required',
      description: 'required',
      tags: 'required'
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
            window.location.href = data.redirect;
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
});

/***/ }),

/***/ 5:
/*!********************************************!*\
  !*** multi ./resources/js/live-streams.js ***!
  \********************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(/*! /home/rudra/freelance/emv/expressmyview/resources/js/live-streams.js */"./resources/js/live-streams.js");


/***/ })

/******/ });