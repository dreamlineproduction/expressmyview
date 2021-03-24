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
/******/ 	return __webpack_require__(__webpack_require__.s = 13);
/******/ })
/************************************************************************/
/******/ ({

/***/ "./resources/js/emoji/util.js":
/*!************************************!*\
  !*** ./resources/js/emoji/util.js ***!
  \************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


function cancelEvent(event) {
  event = event || window.event;

  if (event) {
    event = event.originalEvent || event;
    if (event.stopPropagation) event.stopPropagation();
    if (event.preventDefault) event.preventDefault();
  }

  return false;
}

function getGuid() {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
    var r = Math.random() * 16 | 0,
        v = c == 'x' ? r : r & 0x3 | 0x8;
    return v.toString(16);
  });
} //ConfigStorage


(function (window) {
  var keyPrefix = '';
  var noPrefix = false;
  var cache = {};
  var useCs = !!(window.chrome && chrome.storage && chrome.storage.local);
  var useLs = !useCs && !!window.localStorage;

  function storageSetPrefix(newPrefix) {
    keyPrefix = newPrefix;
  }

  function storageSetNoPrefix() {
    noPrefix = true;
  }

  function storageGetPrefix() {
    if (noPrefix) {
      noPrefix = false;
      return '';
    }

    return keyPrefix;
  }

  function storageGetValue() {
    var keys = Array.prototype.slice.call(arguments),
        callback = keys.pop(),
        result = [],
        single = keys.length == 1,
        value,
        allFound = true,
        prefix = storageGetPrefix(),
        i,
        key;

    for (i = 0; i < keys.length; i++) {
      key = keys[i] = prefix + keys[i];

      if (key.substr(0, 3) != 'xt_' && cache[key] !== undefined) {
        result.push(cache[key]);
      } else if (useLs) {
        try {
          value = localStorage.getItem(key);
        } catch (e) {
          useLs = false;
        }

        try {
          value = value === undefined || value === null ? false : JSON.parse(value);
        } catch (e) {
          value = false;
        }

        result.push(cache[key] = value);
      } else if (!useCs) {
        result.push(cache[key] = false);
      } else {
        allFound = false;
      }
    }

    if (allFound) {
      return callback(single ? result[0] : result);
    }

    chrome.storage.local.get(keys, function (resultObj) {
      var value;
      result = [];

      for (i = 0; i < keys.length; i++) {
        key = keys[i];
        value = resultObj[key];
        value = value === undefined || value === null ? false : JSON.parse(value);
        result.push(cache[key] = value);
      }

      callback(single ? result[0] : result);
    });
  }

  ;

  function storageSetValue(obj, callback) {
    var keyValues = {},
        prefix = storageGetPrefix(),
        key,
        value;

    for (key in obj) {
      if (obj.hasOwnProperty(key)) {
        value = obj[key];
        key = prefix + key;
        cache[key] = value;
        value = JSON.stringify(value);

        if (useLs) {
          try {
            localStorage.setItem(key, value);
          } catch (e) {
            useLs = false;
          }
        } else {
          keyValues[key] = value;
        }
      }
    }

    if (useLs || !useCs) {
      if (callback) {
        callback();
      }

      return;
    }

    chrome.storage.local.set(keyValues, callback);
  }

  ;

  function storageRemoveValue() {
    var keys = Array.prototype.slice.call(arguments),
        prefix = storageGetPrefix(),
        i,
        key,
        callback;

    if (typeof keys[keys.length - 1] === 'function') {
      callback = keys.pop();
    }

    for (i = 0; i < keys.length; i++) {
      key = keys[i] = prefix + keys[i];
      delete cache[key];

      if (useLs) {
        try {
          localStorage.removeItem(key);
        } catch (e) {
          useLs = false;
        }
      }
    }

    if (useCs) {
      chrome.storage.local.remove(keys, callback);
    } else if (callback) {
      callback();
    }
  }

  ;
  window.ConfigStorage = {
    prefix: storageSetPrefix,
    noPrefix: storageSetNoPrefix,
    get: storageGetValue,
    set: storageSetValue,
    remove: storageRemoveValue
  };
})(this); // Pollyfill for IE 9 support of CustomEvent


(function () {
  if (typeof window.CustomEvent === "function") return false;

  function CustomEvent(event, params) {
    params = params || {
      bubbles: false,
      cancelable: false,
      detail: undefined
    };
    var evt = document.createEvent('CustomEvent');
    evt.initCustomEvent(event, params.bubbles, params.cancelable, params.detail);
    return evt;
  }

  CustomEvent.prototype = window.Event.prototype;
  window.CustomEvent = CustomEvent;
})();

/***/ }),

/***/ 13:
/*!******************************************!*\
  !*** multi ./resources/js/emoji/util.js ***!
  \******************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(/*! /home/rudra/freelance/emv/expressmyview/resources/js/emoji/util.js */"./resources/js/emoji/util.js");


/***/ })

/******/ });