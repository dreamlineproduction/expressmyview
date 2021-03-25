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
/******/ 	return __webpack_require__(__webpack_require__.s = 4);
/******/ })
/************************************************************************/
/******/ ({

/***/ "./resources/js/channels.js":
/*!**********************************!*\
  !*** ./resources/js/channels.js ***!
  \**********************************/
/*! no static exports found */
/***/ (function(module, exports) {

$(function () {
  $('.uploadFile').change(function () {
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

  if ($('#create_channel_form').length > 0) {
    $('#create_channel_form').validate({
      rules: {
        name: 'required'
      },
      submitHandler: function submitHandler(form) {
        var formData = new FormData(form);
        $.ajax({
          url: $(form).attr('action'),
          method: 'post',
          data: formData,
          cache: false,
          contentType: false,
          processData: false,
          beforeSend: function beforeSend() {
            var errors = $('.is-invalid');
            errors.removeClass('is-invalid').siblings('.invalid-feedback').remove();
            $(form).find(':input').prop('disabled', true);
            $(form).find('button[type="dubmit"]').html('<i class="fas fa-spinner"></i> Please Wait ...');
          },
          success: function success(data, status, jqXHR) {
            var message;

            if (jqXHR.status === 201) {
              message = '<div class="alert alert-success">Channel created successfully.</div>';
              $(form).find('input[type!="hidden"]').val('');
              window.location = APP_URL + '/my-channels';
            } else {
              var formattedError = '<ul>';
              $.each(data.errors, function (key, value) {
                formattedError += '<li>' + value + '</li>';
              });
              formattedError += '</ul>';
              message = '<div class="alert alert-danger">' + formattedError + '</div>';

              if (data.errors) {
                $.each(data.errors, function (element, error) {
                  $('#' + element).addClass('is-invalid').parent().append('<div class="invalid-feedback">' + error + '</div>');
                });
              }
            }

            $(message).appendTo($(form)).delay(5000).fadeOut(500, function () {
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
            $(form).find('button[type="dubmit"]').html('Create Channel');
          }
        });
      }
    });
  }

  if ($('#update_channel_form').length > 0) {
    $('#update_channel_form').validate({
      rules: {
        name: 'required'
      },
      submitHandler: function submitHandler(form) {
        var formData = new FormData(form);
        $.ajax({
          url: $(form).attr('action'),
          method: 'post',
          data: formData,
          cache: false,
          contentType: false,
          processData: false,
          beforeSend: function beforeSend() {
            var errors = $('.is-invalid');
            errors.removeClass('is-invalid').siblings('.invalid-feedback').remove();
            $(form).find(':input').prop('disabled', true);
            $(form).find('button[type="dubmit"]').html('<i class="fas fa-spinner"></i> Please Wait ...');
          },
          success: function success(data, status, jqXHR) {
            var message;

            if (jqXHR.status === 204) {
              message = '<div class="alert alert-success">Channel updates successfully.</div>';
              $(form).find('input[type!="hidden"]').val('');
              window.location = APP_URL + '/my-channels';
            } else {
              message = '<div class="alert alert-danger">' + data.error + '</div>';

              if (data.errors) {
                $.each(data.errors, function (element, error) {
                  $('#' + element).addClass('is-invalid').parent().append('<div class="invalid-feedback">' + error + '</div>');
                });
              }
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
            $(form).find('button[type="dubmit"]').html('Update Channel');
          }
        });
      }
    });
  }

  $('.delete').click(function (event) {
    event.preventDefault();
    event.stopPropagation();
    var channel = $(this);
    alertify.confirm('Are you sure?', 'You are about to delete this comment. This action is irreversible.', function () {
      $.ajax({
        url: APP_URL + '/channel/' + channel.data('channel') + '/delete',
        method: 'post',
        data: {
          _method: 'delete',
          _token: $('meta[name=csrf-token]').attr('content')
        },
        dataType: 'json',
        beforeSend: function beforeSend() {//
        },
        success: function success(data) {
          console.log(data);

          if (data.status == 1) {
            alertify.success(data.message);
            channel.closest('.single-channel').fadeOut(500, function () {
              $(this).remove();
            });
          } else {
            alertify.error(data.message);
          }
        },
        error: function error() {
          alertify.error('An error occurred. Please try again.');
        },
        complete: function complete() {//
        }
      });
    }, function () {});
  });
  $('#subscribe_btn').click(function () {
    $.ajax({
      url: APP_URL + '/channel/' + $(this).data('channel') + '/subscribe',
      method: 'post',
      data: {
        _token: $('meta[name=csrf-token]').attr('content'),
        _method: 'put'
      },
      dataType: 'json',
      beforeSend: function beforeSend() {},
      success: function success(data) {
        if (data.status == 1) {
          if (data.action == 'subscribed') {
            $('.sub-status').text('Unsubscribe');
          } else {
            $('.sub-status').text('Subscribe');
          }

          $('.sub-count').text(data.subsCount);
        }
      },
      error: function error() {},
      complete: function complete() {}
    });
  });
});

/***/ }),

/***/ 4:
/*!****************************************!*\
  !*** multi ./resources/js/channels.js ***!
  \****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(/*! C:\xampp\htdocs\expressmyview-git\resources\js\channels.js */"./resources/js/channels.js");


/***/ })

/******/ });