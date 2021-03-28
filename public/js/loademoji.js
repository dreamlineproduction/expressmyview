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
/******/ 	return __webpack_require__(__webpack_require__.s = 11);
/******/ })
/************************************************************************/
/******/ ({

/***/ "./resources/js/emoji/emoji-picker.js":
/*!********************************************!*\
  !*** ./resources/js/emoji/emoji-picker.js ***!
  \********************************************/
/*! no static exports found */
/***/ (function(module, exports) {

// Generated by CoffeeScript 1.12.5
(function () {
  this.EmojiPicker = function () {
    function EmojiPicker(options) {
      var ref, ref1;

      if (options == null) {
        options = {};
      }

      $.emojiarea.iconSize = (ref = options.iconSize) != null ? ref : 25;
      $.emojiarea.assetsPath = (ref1 = options.assetsPath) != null ? ref1 : '';
      this.generateEmojiIconSets(options);

      if (!options.emojiable_selector) {
        options.emojiable_selector = '[data-emojiable=true]';
      }

      this.options = options;
    }

    EmojiPicker.prototype.discover = function () {
      var isiOS;
      isiOS = /iPad|iPhone|iPod/.test(navigator.userAgent) && !window.MSStream;

      if (isiOS) {
        return;
      }

      return $(this.options.emojiable_selector).emojiarea($.extend({
        emojiPopup: this,
        norealTime: true
      }, this.options));
    };

    EmojiPicker.prototype.generateEmojiIconSets = function (options) {
      var column, dataItem, hex, i, icons, j, name, reverseIcons, row, totalColumns;
      icons = {};
      reverseIcons = {};
      i = void 0;
      j = void 0;
      hex = void 0;
      name = void 0;
      dataItem = void 0;
      row = void 0;
      column = void 0;
      totalColumns = void 0;
      j = 0;

      while (j < Config.EmojiCategories.length) {
        totalColumns = Config.EmojiCategorySpritesheetDimens[j][1];
        i = 0;

        while (i < Config.EmojiCategories[j].length) {
          dataItem = Config.Emoji[Config.EmojiCategories[j][i]];
          name = dataItem[1][0];
          row = Math.floor(i / totalColumns);
          column = i % totalColumns;
          icons[':' + name + ':'] = [j, row, column, ':' + name + ':'];
          reverseIcons[name] = dataItem[0];
          i++;
        }

        j++;
      }

      $.emojiarea.icons = icons;
      return $.emojiarea.reverseIcons = reverseIcons;
    };

    EmojiPicker.prototype.colonToUnicode = function (input) {
      if (!input) {
        return '';
      }

      if (!Config.rx_colons) {
        Config.init_unified();
      }

      return input.replace(Config.rx_colons, function (m) {
        var val;
        val = Config.mapcolon[m];

        if (val) {
          return val;
        } else {
          return '';
        }
      });
    };

    EmojiPicker.prototype.appendUnicodeAsImageToElement = function (element, input) {
      var k, len, split_on_unicode, text, val;

      if (!input) {
        return '';
      }

      if (!Config.rx_codes) {
        Config.init_unified();
      }

      split_on_unicode = input.split(Config.rx_codes);

      for (k = 0, len = split_on_unicode.length; k < len; k++) {
        text = split_on_unicode[k];
        val = '';

        if (Config.rx_codes.test(text)) {
          val = Config.reversemap[text];

          if (val) {
            val = ':' + val + ':';
            val = $.emojiarea.createIcon($.emojiarea.icons[val]);
          }
        } else {
          val = document.createTextNode(text);
        }

        element.append(val);
      }

      return input.replace(Config.rx_codes, function (m) {
        var $img;
        val = Config.reversemap[m];

        if (val) {
          val = ':' + val + ':';
          $img = $.emojiarea.createIcon($.emojiarea.icons[val]);
          return $img;
        } else {
          return '';
        }
      });
    };

    EmojiPicker.prototype.colonToImage = function (input) {
      if (!input) {
        return '';
      }

      if (!Config.rx_colons) {
        Config.init_unified();
      }

      return input.replace(Config.rx_colons, function (m) {
        var $img;

        if (m) {
          $img = $.emojiarea.createIcon($.emojiarea.icons[m]);
          return $img;
        } else {
          return '';
        }
      });
    };

    return EmojiPicker;
  }();
}).call(this);

/***/ }),

/***/ "./resources/js/loademoji.js":
/*!***********************************!*\
  !*** ./resources/js/loademoji.js ***!
  \***********************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _emoji_emoji_picker__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./emoji/emoji-picker */ "./resources/js/emoji/emoji-picker.js");
/* harmony import */ var _emoji_emoji_picker__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_emoji_emoji_picker__WEBPACK_IMPORTED_MODULE_0__);

$(function () {
  // Initializes and creates emoji set from sprite sheet
  window.emojiPicker = new _emoji_emoji_picker__WEBPACK_IMPORTED_MODULE_0__({
    emojiable_selector: '[data-emojiable=true]',
    assetsPath: 'css/img',
    popupButtonClasses: 'fa fa-smile-o'
  }); // Finds all elements with `emojiable_selector` and converts them to rich emoji input fields
  // You may want to delay this step if you have dynamically created input fields that appear later in the loading process
  // It can be called as many times as necessary; previously converted input fields will not be converted again

  window.emojiPicker.discover();
});

/***/ }),

/***/ 11:
/*!*****************************************!*\
  !*** multi ./resources/js/loademoji.js ***!
  \*****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(/*! C:\xampp\htdocs\expressmyview\resources\js\loademoji.js */"./resources/js/loademoji.js");


/***/ })

/******/ });