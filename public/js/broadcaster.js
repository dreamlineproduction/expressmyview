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
/******/ 	return __webpack_require__(__webpack_require__.s = 7);
/******/ })
/************************************************************************/
/******/ ({

/***/ "./node_modules/@babel/runtime/regenerator/index.js":
/*!**********************************************************!*\
  !*** ./node_modules/@babel/runtime/regenerator/index.js ***!
  \**********************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(/*! regenerator-runtime */ "./node_modules/regenerator-runtime/runtime.js");


/***/ }),

/***/ "./node_modules/agora-rtc-sdk-ng/AgoraRTC_N-production.js":
/*!****************************************************************!*\
  !*** ./node_modules/agora-rtc-sdk-ng/AgoraRTC_N-production.js ***!
  \****************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";
/* WEBPACK VAR INJECTION */(function(global, process) {/**
 * AgoraWebSDK_N-v4.3.0-0-g0586d79 Copyright AgoraInc.
 */

/*
 Determine if an object is a Buffer

 @author   Feross Aboukhadijeh <https://feross.org>
 @license  MIT
 *****************************************************************************
 Copyright (c) Microsoft Corporation. All rights reserved.
 Licensed under the Apache License, Version 2.0 (the "License"); you may not use
 this file except in compliance with the License. You may obtain a copy of the
 License at http://www.apache.org/licenses/LICENSE-2.0

 THIS CODE IS PROVIDED ON AN *AS IS* BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION ANY IMPLIED
 WARRANTIES OR CONDITIONS OF TITLE, FITNESS FOR A PARTICULAR PURPOSE,
 MERCHANTABLITY OR NON-INFRINGEMENT.

 See the Apache Version 2.0 License for specific language governing permissions
 and limitations under the License.
*****************************************************************************/
!function(Pa,Mb){ true?module.exports=Mb():undefined}(this,function(){function Pa(c,a,b){return c(b={path:a,exports:{},require:function(a,b){throw Error("Dynamic requires are not currently supported by @rollup/plugin-commonjs");}},b.exports),b.exports}function Mb(c,a,b){return(c=c.match(a))&&c.length>=b&&N(c[b],10)}function vc(c,a,
b){if(c.RTCPeerConnection){c=c.RTCPeerConnection.prototype;var d=c.addEventListener;c.addEventListener=function(c,e){if(c!==a)return d.apply(this,arguments);let f=a=>{(a=b(a))&&e(a)};return this._eventMap=this._eventMap||{},this._eventMap[e]=f,d.apply(this,[c,f])};var e=c.removeEventListener;c.removeEventListener=function(b,d){if(b!==a||!this._eventMap||!this._eventMap[d])return e.apply(this,arguments);let c=this._eventMap[d];return delete this._eventMap[d],e.apply(this,[b,c])};da(c,"on"+a,{get(){return this["_on"+
a]},set(b){this["_on"+a]&&(this.removeEventListener(a,this["_on"+a]),delete this["_on"+a]);b&&this.addEventListener(a,this["_on"+a]=b)},enumerable:!0,configurable:!0})}}function tl(c){return"boolean"!=typeof c?Error("Argument type: "+typeof c+". Please use a boolean."):(Ag=c,c?"adapter.js logging disabled":"adapter.js logging enabled")}function ul(c){return"boolean"!=typeof c?Error("Argument type: "+typeof c+". Please use a boolean."):(Bg=!c,"adapter.js deprecation warnings "+(c?"disabled":"enabled"))}
function sb(){"object"!=typeof window||Ag||"undefined"!=typeof console&&"function"==typeof console.log&&console.log.apply(console,arguments)}function Dd(c,a){Bg&&console.warn(c+" is deprecated, please use "+a+" instead.")}function Nb(c){let {navigator:a}=c,b={browser:null,version:null};if(void 0===c||!c.navigator)return b.browser="Not a browser.",b;if(a.mozGetUserMedia)b.browser="firefox",b.version=Mb(a.userAgent,/Firefox\/(\d+)\./,1);else if(a.webkitGetUserMedia||!1===c.isSecureContext&&c.webkitRTCPeerConnection&&
!c.RTCIceGatherer)b.browser="chrome",b.version=Mb(a.userAgent,/Chrom(e|ium)\/(\d+)\./,2);else if(a.mediaDevices&&a.userAgent.match(/Edge\/(\d+).(\d+)$/))b.browser="edge",b.version=Mb(a.userAgent,/Edge\/(\d+).(\d+)$/,2);else{if(!c.RTCPeerConnection||!a.userAgent.match(/AppleWebKit\/(\d+)\./))return b.browser="Not a supported browser.",b;b.browser="safari";b.version=Mb(a.userAgent,/AppleWebKit\/(\d+)\./,1);b.supportsUnifiedPlan=c.RTCRtpTransceiver&&"currentDirection"in c.RTCRtpTransceiver.prototype}return b}
function Cg(c){var a;return"[object Object]"===Object.prototype.toString.call(c)?Ed(a=S(c)).call(a,function(a,d){var b="[object Object]"===Object.prototype.toString.call(c[d]);let f=b?Cg(c[d]):c[d];b=b&&!S(f).length;return void 0===f||b?a:Qa(a,{[d]:f})},{}):c}function Ce(c,a,b){var d;a&&!b.has(a.id)&&(b.set(a.id,a),r(d=S(a)).call(d,d=>{if(Dg(d).call(d,"Id"))Ce(c,c.get(a[d]),b);else if(Dg(d).call(d,"Ids")){var e;r(e=a[d]).call(e,a=>{Ce(c,c.get(a),b)})}}))}function Eg(c,a,b){let d=b?"outbound-rtp":
"inbound-rtp",e=new Z;if(null===a)return e;let f=[];return r(c).call(c,b=>{"track"===b.type&&b.trackIdentifier===a.id&&f.push(b)}),r(f).call(f,a=>{r(c).call(c,b=>{b.type===d&&b.trackId===a.id&&Ce(c,b,e)})}),e}function Fg(c){let a=c&&c.navigator;if(a.mediaDevices){var b=Nb(c),d=function(a){var b;if("object"!=typeof a||a.mandatory||a.optional)return a;const d={};var c;(r(b=S(a)).call(b,b=>{if("require"!==b&&"advanced"!==b&&"mediaSource"!==b){var c="object"==typeof a[b]?a[b]:{ideal:a[b]};void 0!==c.exact&&
"number"==typeof c.exact&&(c.min=c.max=c.exact);var e=function(a,b){return a?a+b.charAt(0).toUpperCase()+Db(b).call(b,1):"deviceId"===b?"sourceId":b};if(void 0!==c.ideal){d.optional=d.optional||[];let a={};"number"==typeof c.ideal?(a[e("min",b)]=c.ideal,d.optional.push(a),a={},a[e("max",b)]=c.ideal,d.optional.push(a)):(a[e("",b)]=c.ideal,d.optional.push(a))}var f;void 0!==c.exact&&"number"!=typeof c.exact?(d.mandatory=d.mandatory||{},d.mandatory[e("",b)]=c.exact):r(f=["min","max"]).call(f,a=>{void 0!==
c[a]&&(d.mandatory=d.mandatory||{},d.mandatory[e(a,b)]=c[a])})}}),a.advanced)&&(d.optional=p(c=d.optional||[]).call(c,a.advanced));return d},e=function(c,e){if(61<=b.version)return e(c);if((c=JSON.parse(z(c)))&&"object"==typeof c.audio){var f=function(a,b,d){b in a&&!(d in a)&&(a[d]=a[b],delete a[b])};f((c=JSON.parse(z(c))).audio,"autoGainControl","googAutoGainControl");f(c.audio,"noiseSuppression","googNoiseSuppression");c.audio=d(c.audio)}if(c&&"object"==typeof c.video){let g=c.video.facingMode;
g=g&&("object"==typeof g?g:{ideal:g});f=66>b.version;if(!(!g||"user"!==g.exact&&"environment"!==g.exact&&"user"!==g.ideal&&"environment"!==g.ideal||a.mediaDevices.getSupportedConstraints&&a.mediaDevices.getSupportedConstraints().facingMode&&!f)){let b;if(delete c.video.facingMode,"environment"===g.exact||"environment"===g.ideal?b=["back","rear"]:"user"!==g.exact&&"user"!==g.ideal||(b=["front"]),b)return a.mediaDevices.enumerateDevices().then(a=>{a=P(a).call(a,a=>"videoinput"===a.kind);let f=U(a).call(a,
a=>Hg(b).call(b,b=>{var d;return Ja(d=a.label.toLowerCase()).call(d,b)}));return!f&&a.length&&Ja(b).call(b,"back")&&(f=a[a.length-1]),f&&(c.video.deviceId=g.exact?{exact:f.deviceId}:{ideal:f.deviceId}),c.video=d(c.video),Ig("chrome: "+z(c)),e(c)})}c.video=d(c.video)}return Ig("chrome: "+z(c)),e(c)},f=function(a){return 64<=b.version?a:{name:{PermissionDeniedError:"NotAllowedError",PermissionDismissedError:"NotAllowedError",InvalidStateError:"NotAllowedError",DevicesNotFoundError:"NotFoundError",ConstraintNotSatisfiedError:"OverconstrainedError",
TrackStartError:"NotReadableError",MediaDeviceFailedDueToShutdown:"NotAllowedError",MediaDeviceKillSwitchOn:"NotAllowedError",TabCaptureError:"AbortError",ScreenCaptureError:"AbortError",DeviceCaptureError:"AbortError"}[a.name]||a.name,message:a.message,constraint:a.constraint||a.constraintName,toString(){return this.name+(this.message&&": ")+this.message}}};c=function(b,d,c){e(b,b=>{a.webkitGetUserMedia(b,d,a=>{c&&c(f(a))})})};if(a.getUserMedia=Da(c).call(c,a),a.mediaDevices.getUserMedia){var g;
let b=Da(g=a.mediaDevices.getUserMedia).call(g,a.mediaDevices);a.mediaDevices.getUserMedia=function(a){return e(a,a=>b(a).then(b=>{var d;if(a.audio&&!b.getAudioTracks().length||a.video&&!b.getVideoTracks().length)throw r(d=b.getTracks()).call(d,a=>{a.stop()}),new DOMException("","NotFoundError");return b},a=>x.reject(f(a))))}}}}function Jg(c){c.MediaStream=c.MediaStream||c.webkitMediaStream}function Kg(c){if("object"!=typeof c||!c.RTCPeerConnection||"ontrack"in c.RTCPeerConnection.prototype)vc(c,
"track",a=>(a.transceiver||da(a,"transceiver",{value:{receiver:a.receiver}}),a));else{da(c.RTCPeerConnection.prototype,"ontrack",{get(){return this._ontrack},set(a){this._ontrack&&this.removeEventListener("track",this._ontrack);this.addEventListener("track",this._ontrack=a)},enumerable:!0,configurable:!0});let a=c.RTCPeerConnection.prototype.setRemoteDescription;c.RTCPeerConnection.prototype.setRemoteDescription=function(){return this._ontrackpoly||(this._ontrackpoly=a=>{var b;a.stream.addEventListener("addtrack",
b=>{let d;var e;c.RTCPeerConnection.prototype.getReceivers?d=U(e=this.getReceivers()).call(e,a=>a.track&&a.track.id===b.track.id):d={track:b.track};e=new Event("track");e.track=b.track;e.receiver=d;e.transceiver={receiver:d};e.streams=[a.stream];this.dispatchEvent(e)});r(b=a.stream.getTracks()).call(b,b=>{let d;var e;c.RTCPeerConnection.prototype.getReceivers?d=U(e=this.getReceivers()).call(e,a=>a.track&&a.track.id===b.id):d={track:b};e=new Event("track");e.track=b;e.receiver=d;e.transceiver={receiver:d};
e.streams=[a.stream];this.dispatchEvent(e)})},this.addEventListener("addstream",this._ontrackpoly)),a.apply(this,arguments)}}}function Lg(c){if("object"==typeof c&&c.RTCPeerConnection&&!("getSenders"in c.RTCPeerConnection.prototype)&&"createDTMFSender"in c.RTCPeerConnection.prototype){let a=function(a,b){return{track:b,get dtmf(){return void 0===this._dtmf&&("audio"===b.kind?this._dtmf=a.createDTMFSender(b):this._dtmf=null),this._dtmf},_pc:a}};if(!c.RTCPeerConnection.prototype.getSenders){c.RTCPeerConnection.prototype.getSenders=
function(){var a;return this._senders=this._senders||[],Db(a=this._senders).call(a)};let b=c.RTCPeerConnection.prototype.addTrack;c.RTCPeerConnection.prototype.addTrack=function(d,c){let e=b.apply(this,arguments);return e||(e=a(this,d),this._senders.push(e)),e};let d=c.RTCPeerConnection.prototype.removeTrack;c.RTCPeerConnection.prototype.removeTrack=function(a){var b;d.apply(this,arguments);let c=D(b=this._senders).call(b,a);var e;-1!==c&&Ka(e=this._senders).call(e,c,1)}}let b=c.RTCPeerConnection.prototype.addStream;
c.RTCPeerConnection.prototype.addStream=function(d){var c;this._senders=this._senders||[];b.apply(this,[d]);r(c=d.getTracks()).call(c,b=>{this._senders.push(a(this,b))})};let d=c.RTCPeerConnection.prototype.removeStream;c.RTCPeerConnection.prototype.removeStream=function(a){var b;this._senders=this._senders||[];d.apply(this,[a]);r(b=a.getTracks()).call(b,a=>{var b;let d=U(b=this._senders).call(b,b=>b.track===a);var c,e;d&&Ka(c=this._senders).call(c,D(e=this._senders).call(e,d),1)})}}else if("object"==
typeof c&&c.RTCPeerConnection&&"getSenders"in c.RTCPeerConnection.prototype&&"createDTMFSender"in c.RTCPeerConnection.prototype&&c.RTCRtpSender&&!("dtmf"in c.RTCRtpSender.prototype)){let a=c.RTCPeerConnection.prototype.getSenders;c.RTCPeerConnection.prototype.getSenders=function(){let b=a.apply(this,[]);return r(b).call(b,a=>a._pc=this),b};da(c.RTCRtpSender.prototype,"dtmf",{get(){return void 0===this._dtmf&&("audio"===this.track.kind?this._dtmf=this._pc.createDTMFSender(this.track):this._dtmf=null),
this._dtmf}})}}function Mg(c){if(c.RTCPeerConnection){var a=c.RTCPeerConnection.prototype.getStats;c.RTCPeerConnection.prototype.getStats=function(){let [b,d,c]=arguments;if(0<arguments.length&&"function"==typeof b)return a.apply(this,arguments);if(0===a.length&&(0===arguments.length||"function"!=typeof b))return a.apply(this,[]);let f=function(a){const b={};a=a.result();return r(a).call(a,a=>{var d;const c={id:a.id,timestamp:a.timestamp,type:{localcandidate:"local-candidate",remotecandidate:"remote-candidate"}[a.type]||
a.type};r(d=a.names()).call(d,b=>{c[b]=a.stat(b)});b[c.id]=c}),b},g=function(a){var b;return new Z(y(b=S(a)).call(b,b=>[b,a[b]]))};return 2<=arguments.length?a.apply(this,[function(a){d(g(f(a)))},b]):(new x((b,d)=>{a.apply(this,[function(a){b(g(f(a)))},d])})).then(d,c)}}}function Ng(c){if("object"==typeof c&&c.RTCPeerConnection&&c.RTCRtpSender&&c.RTCRtpReceiver){if(!("getStats"in c.RTCRtpSender.prototype)){let a=c.RTCPeerConnection.prototype.getSenders;a&&(c.RTCPeerConnection.prototype.getSenders=
function(){let b=a.apply(this,[]);return r(b).call(b,a=>a._pc=this),b});let d=c.RTCPeerConnection.prototype.addTrack;d&&(c.RTCPeerConnection.prototype.addTrack=function(){let a=d.apply(this,arguments);return a._pc=this,a});c.RTCRtpSender.prototype.getStats=function(){let a=this;return this._pc.getStats().then(b=>Eg(b,a.track,!0))}}if(!("getStats"in c.RTCRtpReceiver.prototype)){let a=c.RTCPeerConnection.prototype.getReceivers;a&&(c.RTCPeerConnection.prototype.getReceivers=function(){let b=a.apply(this,
[]);return r(b).call(b,a=>a._pc=this),b});vc(c,"track",a=>(a.receiver._pc=a.srcElement,a));c.RTCRtpReceiver.prototype.getStats=function(){let a=this;return this._pc.getStats().then(b=>Eg(b,a.track,!1))}}if("getStats"in c.RTCRtpSender.prototype&&"getStats"in c.RTCRtpReceiver.prototype){var a=c.RTCPeerConnection.prototype.getStats;c.RTCPeerConnection.prototype.getStats=function(){if(0<arguments.length&&arguments[0]instanceof c.MediaStreamTrack){var b,d;let a=arguments[0],c,g,k;return r(b=this.getSenders()).call(b,
b=>{b.track===a&&(c?k=!0:c=b)}),r(d=this.getReceivers()).call(d,b=>(b.track===a&&(g?k=!0:g=b),b.track===a)),k||c&&g?x.reject(new DOMException("There are more than one sender or receiver for the track.","InvalidAccessError")):c?c.getStats():g?g.getStats():x.reject(new DOMException("There is no sender or receiver for the track.","InvalidAccessError"))}return a.apply(this,arguments)}}}}function Og(c){c.RTCPeerConnection.prototype.getLocalStreams=function(){var a;return this._shimmedLocalStreams=this._shimmedLocalStreams||
{},y(a=S(this._shimmedLocalStreams)).call(a,a=>this._shimmedLocalStreams[a][0])};let a=c.RTCPeerConnection.prototype.addTrack;c.RTCPeerConnection.prototype.addTrack=function(b,d){var c;if(!d)return a.apply(this,arguments);this._shimmedLocalStreams=this._shimmedLocalStreams||{};let e=a.apply(this,arguments);return this._shimmedLocalStreams[d.id]?-1===D(c=this._shimmedLocalStreams[d.id]).call(c,e)&&this._shimmedLocalStreams[d.id].push(e):this._shimmedLocalStreams[d.id]=[d,e],e};let b=c.RTCPeerConnection.prototype.addStream;
c.RTCPeerConnection.prototype.addStream=function(a){var d,c,e;this._shimmedLocalStreams=this._shimmedLocalStreams||{};r(d=a.getTracks()).call(d,a=>{var b;if(U(b=this.getSenders()).call(b,b=>b.track===a))throw new DOMException("Track already exists.","InvalidAccessError");});let f=this.getSenders();b.apply(this,arguments);d=P(c=this.getSenders()).call(c,a=>-1===D(f).call(f,a));this._shimmedLocalStreams[a.id]=p(e=[a]).call(e,d)};let d=c.RTCPeerConnection.prototype.removeStream;c.RTCPeerConnection.prototype.removeStream=
function(a){return this._shimmedLocalStreams=this._shimmedLocalStreams||{},delete this._shimmedLocalStreams[a.id],d.apply(this,arguments)};let e=c.RTCPeerConnection.prototype.removeTrack;c.RTCPeerConnection.prototype.removeTrack=function(a){var b;(this._shimmedLocalStreams=this._shimmedLocalStreams||{},a)&&r(b=S(this._shimmedLocalStreams)).call(b,b=>{var d;let c=D(d=this._shimmedLocalStreams[b]).call(d,a);var e;-1!==c&&Ka(e=this._shimmedLocalStreams[b]).call(e,c,1);1===this._shimmedLocalStreams[b].length&&
delete this._shimmedLocalStreams[b]});return e.apply(this,arguments)}}function Pg(c){function a(a,b){var d;let c=b.sdp;return r(d=S(a._reverseStreams||[])).call(d,b=>{b=a._reverseStreams[b];c=c.replace(new RegExp(a._streams[b.id].id,"g"),b.id)}),new RTCSessionDescription({type:b.type,sdp:c})}function b(a,b){var d;let c=b.sdp;return r(d=S(a._reverseStreams||[])).call(d,b=>{b=a._reverseStreams[b];c=c.replace(new RegExp(b.id,"g"),a._streams[b.id].id)}),new RTCSessionDescription({type:b.type,sdp:c})}
var d;if(c.RTCPeerConnection){var e=Nb(c);if(c.RTCPeerConnection.prototype.addTrack&&65<=e.version)return Og(c);var f=c.RTCPeerConnection.prototype.getLocalStreams;c.RTCPeerConnection.prototype.getLocalStreams=function(){let a=f.apply(this);return this._reverseStreams=this._reverseStreams||{},y(a).call(a,a=>this._reverseStreams[a.id])};var g=c.RTCPeerConnection.prototype.addStream;c.RTCPeerConnection.prototype.addStream=function(a){var b;(this._streams=this._streams||{},this._reverseStreams=this._reverseStreams||
{},r(b=a.getTracks()).call(b,a=>{var b;if(U(b=this.getSenders()).call(b,b=>b.track===a))throw new DOMException("Track already exists.","InvalidAccessError");}),this._reverseStreams[a.id])||(b=new c.MediaStream(a.getTracks()),this._streams[a.id]=b,this._reverseStreams[b.id]=a,a=b);g.apply(this,[a])};var k=c.RTCPeerConnection.prototype.removeStream;c.RTCPeerConnection.prototype.removeStream=function(a){this._streams=this._streams||{};this._reverseStreams=this._reverseStreams||{};k.apply(this,[this._streams[a.id]||
a]);delete this._reverseStreams[this._streams[a.id]?this._streams[a.id].id:a.id];delete this._streams[a.id]};c.RTCPeerConnection.prototype.addTrack=function(a,b){var d,e,f;if("closed"===this.signalingState)throw new DOMException("The RTCPeerConnection's signalingState is 'closed'.","InvalidStateError");let g=Db([]).call(arguments,1);if(1!==g.length||!U(d=g[0].getTracks()).call(d,b=>b===a))throw new DOMException("The adapter.js addTrack polyfill only supports a single  stream which is associated with the specified track.",
"NotSupportedError");if(U(e=this.getSenders()).call(e,b=>b.track===a))throw new DOMException("Track already exists.","InvalidAccessError");this._streams=this._streams||{};this._reverseStreams=this._reverseStreams||{};(d=this._streams[b.id])?(d.addTrack(a),x.resolve().then(()=>{this.dispatchEvent(new Event("negotiationneeded"))})):(d=new c.MediaStream([a]),this._streams[b.id]=d,this._reverseStreams[d.id]=b,this.addStream(d));return U(f=this.getSenders()).call(f,b=>b.track===a)};r(d=["createOffer",
"createAnswer"]).call(d,function(b){let d=c.RTCPeerConnection.prototype[b];c.RTCPeerConnection.prototype[b]={[b](){const b=arguments;return arguments.length&&"function"==typeof arguments[0]?d.apply(this,[d=>{d=a(this,d);b[0].apply(null,[d])},a=>{b[1]&&b[1].apply(null,a)},arguments[2]]):d.apply(this,arguments).then(b=>a(this,b))}}[b]});var q=c.RTCPeerConnection.prototype.setLocalDescription;c.RTCPeerConnection.prototype.setLocalDescription=function(){return arguments.length&&arguments[0].type?(arguments[0]=
b(this,arguments[0]),q.apply(this,arguments)):q.apply(this,arguments)};var w=fa(c.RTCPeerConnection.prototype,"localDescription");da(c.RTCPeerConnection.prototype,"localDescription",{get(){let b=w.get.apply(this);return""===b.type?b:a(this,b)}});c.RTCPeerConnection.prototype.removeTrack=function(a){var b;if("closed"===this.signalingState)throw new DOMException("The RTCPeerConnection's signalingState is 'closed'.","InvalidStateError");if(!a._pc)throw new DOMException("Argument 1 of RTCPeerConnection.removeTrack does not implement interface RTCRtpSender.",
"TypeError");if(a._pc!==this)throw new DOMException("Sender was not created by this connection.","InvalidAccessError");let d;this._streams=this._streams||{};r(b=S(this._streams)).call(b,b=>{var c;U(c=this._streams[b].getTracks()).call(c,b=>a.track===b)&&(d=this._streams[b])});d&&(1===d.getTracks().length?this.removeStream(this._reverseStreams[d.id]):d.removeTrack(a.track),this.dispatchEvent(new Event("negotiationneeded")))}}}function De(c){let a=Nb(c);if(!c.RTCPeerConnection&&c.webkitRTCPeerConnection&&
(c.RTCPeerConnection=c.webkitRTCPeerConnection),c.RTCPeerConnection){var b;53>a.version&&r(b=["setLocalDescription","setRemoteDescription","addIceCandidate"]).call(b,function(a){let b=c.RTCPeerConnection.prototype[a];c.RTCPeerConnection.prototype[a]={[a](){return arguments[0]=new ("addIceCandidate"===a?c.RTCIceCandidate:c.RTCSessionDescription)(arguments[0]),b.apply(this,arguments)}}[a]});var d=c.RTCPeerConnection.prototype.addIceCandidate;c.RTCPeerConnection.prototype.addIceCandidate=function(){return arguments[0]?
78>a.version&&arguments[0]&&""===arguments[0].candidate?x.resolve():d.apply(this,arguments):(arguments[1]&&arguments[1].apply(null),x.resolve())}}}function Qg(c){vc(c,"negotiationneeded",a=>{if("stable"===a.target.signalingState)return a})}function vl(c,a){let b=!1;return c=JSON.parse(z(c)),P(c).call(c,a=>{if(a&&(a.urls||a.url)){var d=a.urls||a.url;a.url&&!a.urls&&Dd("RTCIceServer.url","RTCIceServer.urls");let c="string"==typeof d;return c&&(d=[d]),d=P(d).call(d,a=>0===D(a).call(a,"stun:")?!1:(a=
Fd(a).call(a,"turn")&&!Fd(a).call(a,"turn:[")&&Ja(a).call(a,"transport=udp"))&&!b?(b=!0,!0):a&&!b),delete a.url,a.urls=c?d[0]:d,!!d.length}})}function Rg(c,a,b,d,e){a=G.writeRtpDescription(c.kind,a);if(a+=G.writeIceParameters(c.iceGatherer.getLocalParameters()),a+=G.writeDtlsParameters(c.dtlsTransport.getLocalParameters(),"offer"===b?"actpass":e||"active"),a+="a=mid:"+c.mid+"\r\n",c.rtpSender&&c.rtpReceiver?a+="a=sendrecv\r\n":c.rtpSender?a+="a=sendonly\r\n":c.rtpReceiver?a+="a=recvonly\r\n":a+="a=inactive\r\n",
c.rtpSender)b=c.rtpSender._initialTrackId||c.rtpSender.track.id,c.rtpSender._initialTrackId=b,d="msid:"+(d?d.id:"-")+" "+b+"\r\n",a=a+("a="+d)+("a=ssrc:"+c.sendEncodingParameters[0].ssrc+" "+d),c.sendEncodingParameters[0].rtx&&(a+="a=ssrc:"+c.sendEncodingParameters[0].rtx.ssrc+" "+d,a+="a=ssrc-group:FID "+c.sendEncodingParameters[0].ssrc+" "+c.sendEncodingParameters[0].rtx.ssrc+"\r\n");return a+="a=ssrc:"+c.sendEncodingParameters[0].ssrc+" cname:"+G.localCName+"\r\n",c.rtpSender&&c.sendEncodingParameters[0].rtx&&
(a+="a=ssrc:"+c.sendEncodingParameters[0].rtx.ssrc+" cname:"+G.localCName+"\r\n"),a}function wl(c,a){var b=!1;return(c=JSON.parse(JSON.stringify(c))).filter(function(d){if(d&&(d.urls||d.url)){var c=d.urls||d.url;d.url&&!d.urls&&console.warn("RTCIceServer.url is deprecated! Use urls instead.");var f="string"==typeof c;return f&&(c=[c]),c=c.filter(function(d){return 0!==d.indexOf("turn:")||-1===d.indexOf("transport=udp")||-1!==d.indexOf("turn:[")||b?0===d.indexOf("stun:")&&14393<=a&&-1===d.indexOf("?transport=udp"):
(b=!0,!0)}),delete d.url,d.urls=f?c[0]:c,!!c.length}})}function Gd(c,a){var b={codecs:[],headerExtensions:[],fecMechanisms:[]},d=function(a,b){a=parseInt(a,10);for(var d=0;d<b.length;d++)if(b[d].payloadType===a||b[d].preferredPayloadType===a)return b[d]},e=function(a,b,c,e){a=d(a.parameters.apt,c);b=d(b.parameters.apt,e);return a&&b&&a.name.toLowerCase()===b.name.toLowerCase()};return c.codecs.forEach(function(d){for(var f=0;f<a.codecs.length;f++){var k=a.codecs[f];if(d.name.toLowerCase()===k.name.toLowerCase()&&
d.clockRate===k.clockRate&&("rtx"!==d.name.toLowerCase()||!d.parameters||!k.parameters.apt||e(d,k,c.codecs,a.codecs))){(k=JSON.parse(JSON.stringify(k))).numChannels=Math.min(d.numChannels,k.numChannels);b.codecs.push(k);k.rtcpFeedback=k.rtcpFeedback.filter(function(a){for(var b=0;b<d.rtcpFeedback.length;b++)if(d.rtcpFeedback[b].type===a.type&&d.rtcpFeedback[b].parameter===a.parameter)return!0;return!1});break}}}),c.headerExtensions.forEach(function(d){for(var c=0;c<a.headerExtensions.length;c++){var e=
a.headerExtensions[c];if(d.uri===e.uri){b.headerExtensions.push(e);break}}}),b}function Sg(c,a,b){return-1!=={offer:{setLocalDescription:["stable","have-local-offer"],setRemoteDescription:["stable","have-remote-offer"]},answer:{setLocalDescription:["have-remote-offer","have-local-pranswer"],setRemoteDescription:["have-local-offer","have-remote-pranswer"]}}[a][c].indexOf(b)}function Ee(c,a){var b=c.getRemoteCandidates().find(function(b){return a.foundation===b.foundation&&a.ip===b.ip&&a.port===b.port&&
a.priority===b.priority&&a.protocol===b.protocol&&a.type===b.type});return b||c.addRemoteCandidate(a),!b}function La(c,a){a=Error(a);return a.name=c,a.code={NotSupportedError:9,InvalidStateError:11,InvalidAccessError:15,TypeError:void 0,OperationError:void 0}[c],a}function Tg(c){var a;c=c&&c.navigator;let b=Da(a=c.mediaDevices.getUserMedia).call(a,c.mediaDevices);c.mediaDevices.getUserMedia=function(a){return b(a).catch(a=>x.reject(function(a){return{name:{PermissionDeniedError:"NotAllowedError"}[a.name]||
a.name,message:a.message,constraint:a.constraint,toString(){return this.name}}}(a)))}}function Ug(c){var a;"getDisplayMedia"in c.navigator&&c.navigator.mediaDevices&&(c.navigator.mediaDevices&&"getDisplayMedia"in c.navigator.mediaDevices||(c.navigator.mediaDevices.getDisplayMedia=Da(a=c.navigator.getDisplayMedia).call(a,c.navigator)))}function Fe(c){let a=Nb(c);if(c.RTCIceGatherer&&(c.RTCIceCandidate||(c.RTCIceCandidate=function(a){return a}),c.RTCSessionDescription||(c.RTCSessionDescription=function(a){return a}),
15025>a.version)){let a=fa(c.MediaStreamTrack.prototype,"enabled");da(c.MediaStreamTrack.prototype,"enabled",{set(b){a.set.call(this,b);let d=new Event("enabled");d.enabled=b;this.dispatchEvent(d)}})}!c.RTCRtpSender||"dtmf"in c.RTCRtpSender.prototype||da(c.RTCRtpSender.prototype,"dtmf",{get(){return void 0===this._dtmf&&("audio"===this.track.kind?this._dtmf=new c.RTCDtmfSender(this):"video"===this.track.kind&&(this._dtmf=null)),this._dtmf}});c.RTCDtmfSender&&!c.RTCDTMFSender&&(c.RTCDTMFSender=c.RTCDtmfSender);
let b=xl(c,a.version);c.RTCPeerConnection=function(d){return d&&d.iceServers&&(d.iceServers=vl(d.iceServers,a.version),sb("ICE servers after filtering:",d.iceServers)),new b(d)};c.RTCPeerConnection.prototype=b.prototype}function Vg(c){!c.RTCRtpSender||"replaceTrack"in c.RTCRtpSender.prototype||(c.RTCRtpSender.prototype.replaceTrack=c.RTCRtpSender.prototype.setTrack)}function Wg(c){let a=Nb(c),b=c&&c.navigator;c=c&&c.MediaStreamTrack;if(b.getUserMedia=function(a,d,c){Dd("navigator.getUserMedia","navigator.mediaDevices.getUserMedia");
b.mediaDevices.getUserMedia(a).then(d,c)},!(55<a.version&&"autoGainControl"in b.mediaDevices.getSupportedConstraints())){var d;let a=function(a,b,d){b in a&&!(d in a)&&(a[d]=a[b],delete a[b])},f=Da(d=b.mediaDevices.getUserMedia).call(d,b.mediaDevices);if(b.mediaDevices.getUserMedia=function(b){return"object"==typeof b&&"object"==typeof b.audio&&(b=JSON.parse(z(b)),a(b.audio,"autoGainControl","mozAutoGainControl"),a(b.audio,"noiseSuppression","mozNoiseSuppression")),f(b)},c&&c.prototype.getSettings){let b=
c.prototype.getSettings;c.prototype.getSettings=function(){let d=b.apply(this,arguments);return a(d,"mozAutoGainControl","autoGainControl"),a(d,"mozNoiseSuppression","noiseSuppression"),d}}if(c&&c.prototype.applyConstraints){let b=c.prototype.applyConstraints;c.prototype.applyConstraints=function(d){return"audio"===this.kind&&"object"==typeof d&&(d=JSON.parse(z(d)),a(d,"autoGainControl","mozAutoGainControl"),a(d,"noiseSuppression","mozNoiseSuppression")),b.apply(this,[d])}}}}function Xg(c){"object"==
typeof c&&c.RTCTrackEvent&&"receiver"in c.RTCTrackEvent.prototype&&!("transceiver"in c.RTCTrackEvent.prototype)&&da(c.RTCTrackEvent.prototype,"transceiver",{get(){return{receiver:this.receiver}}})}function Ge(c){let a=Nb(c);if("object"==typeof c&&(c.RTCPeerConnection||c.mozRTCPeerConnection)){var b;(!c.RTCPeerConnection&&c.mozRTCPeerConnection&&(c.RTCPeerConnection=c.mozRTCPeerConnection),53>a.version)&&r(b=["setLocalDescription","setRemoteDescription","addIceCandidate"]).call(b,function(a){let b=
c.RTCPeerConnection.prototype[a];c.RTCPeerConnection.prototype[a]={[a](){return arguments[0]=new ("addIceCandidate"===a?c.RTCIceCandidate:c.RTCSessionDescription)(arguments[0]),b.apply(this,arguments)}}[a]});var d=c.RTCPeerConnection.prototype.addIceCandidate;c.RTCPeerConnection.prototype.addIceCandidate=function(){return arguments[0]?68>a.version&&arguments[0]&&""===arguments[0].candidate?x.resolve():d.apply(this,arguments):(arguments[1]&&arguments[1].apply(null),x.resolve())};var e={inboundrtp:"inbound-rtp",
outboundrtp:"outbound-rtp",candidatepair:"candidate-pair",localcandidate:"local-candidate",remotecandidate:"remote-candidate"},f=c.RTCPeerConnection.prototype.getStats;c.RTCPeerConnection.prototype.getStats=function(){let [b,d,c]=arguments;return f.apply(this,[b||null]).then(b=>{if(53>a.version&&!d)try{r(b).call(b,a=>{a.type=e[a.type]||a.type})}catch(E){if("TypeError"!==E.name)throw E;r(b).call(b,(a,d)=>{b.set(d,Qa({},a,{type:e[a.type]||a.type}))})}return b}).then(d,c)}}}function Yg(c){if("object"==
typeof c&&c.RTCPeerConnection&&c.RTCRtpSender&&!(c.RTCRtpSender&&"getStats"in c.RTCRtpSender.prototype)){var a=c.RTCPeerConnection.prototype.getSenders;a&&(c.RTCPeerConnection.prototype.getSenders=function(){let b=a.apply(this,[]);return r(b).call(b,a=>a._pc=this),b});var b=c.RTCPeerConnection.prototype.addTrack;b&&(c.RTCPeerConnection.prototype.addTrack=function(){let a=b.apply(this,arguments);return a._pc=this,a});c.RTCRtpSender.prototype.getStats=function(){return this.track?this._pc.getStats(this.track):
x.resolve(new Z)}}}function Zg(c){if("object"==typeof c&&c.RTCPeerConnection&&c.RTCRtpSender&&!(c.RTCRtpSender&&"getStats"in c.RTCRtpReceiver.prototype)){var a=c.RTCPeerConnection.prototype.getReceivers;a&&(c.RTCPeerConnection.prototype.getReceivers=function(){let b=a.apply(this,[]);return r(b).call(b,a=>a._pc=this),b});vc(c,"track",a=>(a.receiver._pc=a.srcElement,a));c.RTCRtpReceiver.prototype.getStats=function(){return this._pc.getStats(this.track)}}}function $g(c){!c.RTCPeerConnection||"removeStream"in
c.RTCPeerConnection.prototype||(c.RTCPeerConnection.prototype.removeStream=function(a){var b;Dd("removeStream","removeTrack");r(b=this.getSenders()).call(b,b=>{var d;b.track&&Ja(d=a.getTracks()).call(d,b.track)&&this.removeTrack(b)})})}function ah(c){c.DataChannel&&!c.RTCDataChannel&&(c.RTCDataChannel=c.DataChannel)}function bh(c){if("object"==typeof c&&c.RTCPeerConnection){if("getLocalStreams"in c.RTCPeerConnection.prototype||(c.RTCPeerConnection.prototype.getLocalStreams=function(){return this._localStreams||
(this._localStreams=[]),this._localStreams}),!("addStream"in c.RTCPeerConnection.prototype)){let a=c.RTCPeerConnection.prototype.addTrack;c.RTCPeerConnection.prototype.addStream=function(b){var d,c,f;this._localStreams||(this._localStreams=[]);Ja(d=this._localStreams).call(d,b)||this._localStreams.push(b);r(c=b.getAudioTracks()).call(c,d=>a.call(this,d,b));r(f=b.getVideoTracks()).call(f,d=>a.call(this,d,b))};c.RTCPeerConnection.prototype.addTrack=function(b,d){var c;d&&(this._localStreams?Ja(c=this._localStreams).call(c,
d)||this._localStreams.push(d):this._localStreams=[d]);return a.call(this,b,d)}}"removeStream"in c.RTCPeerConnection.prototype||(c.RTCPeerConnection.prototype.removeStream=function(a){var b,d,c;this._localStreams||(this._localStreams=[]);let f=D(b=this._localStreams).call(b,a);if(-1!==f){Ka(d=this._localStreams).call(d,f,1);var g=a.getTracks();r(c=this.getSenders()).call(c,a=>{Ja(g).call(g,a.track)&&this.removeTrack(a)})}})}}function ch(c){if("object"==typeof c&&c.RTCPeerConnection&&("getRemoteStreams"in
c.RTCPeerConnection.prototype||(c.RTCPeerConnection.prototype.getRemoteStreams=function(){return this._remoteStreams?this._remoteStreams:[]}),!("onaddstream"in c.RTCPeerConnection.prototype))){da(c.RTCPeerConnection.prototype,"onaddstream",{get(){return this._onaddstream},set(a){this._onaddstream&&(this.removeEventListener("addstream",this._onaddstream),this.removeEventListener("track",this._onaddstreampoly));this.addEventListener("addstream",this._onaddstream=a);this.addEventListener("track",this._onaddstreampoly=
a=>{var b;r(b=a.streams).call(b,a=>{var b;(this._remoteStreams||(this._remoteStreams=[]),Ja(b=this._remoteStreams).call(b,a))||(this._remoteStreams.push(a),b=new Event("addstream"),b.stream=a,this.dispatchEvent(b))})})}});let a=c.RTCPeerConnection.prototype.setRemoteDescription;c.RTCPeerConnection.prototype.setRemoteDescription=function(){let b=this;return this._onaddstreampoly||this.addEventListener("track",this._onaddstreampoly=function(a){var d;r(d=a.streams).call(d,a=>{var d;(b._remoteStreams||
(b._remoteStreams=[]),0<=D(d=b._remoteStreams).call(d,a))||(b._remoteStreams.push(a),d=new Event("addstream"),d.stream=a,b.dispatchEvent(d))})}),a.apply(b,arguments)}}}function dh(c){if("object"==typeof c&&c.RTCPeerConnection){c=c.RTCPeerConnection.prototype;var a=c.createOffer,b=c.createAnswer,d=c.setLocalDescription,e=c.setRemoteDescription,f=c.addIceCandidate;c.createOffer=function(b,d){let c=a.apply(this,[2<=arguments.length?arguments[2]:arguments[0]]);return d?(c.then(b,d),x.resolve()):c};c.createAnswer=
function(a,d){let c=b.apply(this,[2<=arguments.length?arguments[2]:arguments[0]]);return d?(c.then(a,d),x.resolve()):c};var g=function(a,b,c){a=d.apply(this,[a]);return c?(a.then(b,c),x.resolve()):a};c.setLocalDescription=g;g=function(a,b,d){a=e.apply(this,[a]);return d?(a.then(b,d),x.resolve()):a};c.setRemoteDescription=g;g=function(a,b,d){a=f.apply(this,[a]);return d?(a.then(b,d),x.resolve()):a};c.addIceCandidate=g}}function eh(c){let a=c&&c.navigator;if(a.mediaDevices&&a.mediaDevices.getUserMedia){var b;
c=a.mediaDevices;let d=Da(b=c.getUserMedia).call(b,c);a.mediaDevices.getUserMedia=a=>d(fh(a))}var d;!a.getUserMedia&&a.mediaDevices&&a.mediaDevices.getUserMedia&&(a.getUserMedia=Da(d=function(b,d,c){a.mediaDevices.getUserMedia(b).then(d,c)}).call(d,a))}function fh(c){return c&&void 0!==c.video?Qa({},c,{video:Cg(c.video)}):c}function gh(c){let a=c.RTCPeerConnection;c.RTCPeerConnection=function(b,d){if(b&&b.iceServers){let a=[];for(let d=0;d<b.iceServers.length;d++){let c=b.iceServers[d];!c.hasOwnProperty("urls")&&
c.hasOwnProperty("url")?(Dd("RTCIceServer.url","RTCIceServer.urls"),c=JSON.parse(z(c)),c.urls=c.url,delete c.url,a.push(c)):a.push(b.iceServers[d])}b.iceServers=a}return new a(b,d)};c.RTCPeerConnection.prototype=a.prototype;"generateCertificate"in c.RTCPeerConnection&&da(c.RTCPeerConnection,"generateCertificate",{get:()=>a.generateCertificate})}function hh(c){"object"==typeof c&&c.RTCPeerConnection&&"receiver"in c.RTCTrackEvent.prototype&&!c.RTCTransceiver&&da(c.RTCTrackEvent.prototype,"transceiver",
{get(){return{receiver:this.receiver}}})}function ih(c){let a=c.RTCPeerConnection.prototype.createOffer;c.RTCPeerConnection.prototype.createOffer=function(b){if(b){var d,c;void 0!==b.offerToReceiveAudio&&(b.offerToReceiveAudio=!!b.offerToReceiveAudio);let a=U(d=this.getTransceivers()).call(d,a=>"audio"===a.receiver.track.kind);!1===b.offerToReceiveAudio&&a?"sendrecv"===a.direction?a.setDirection?a.setDirection("sendonly"):a.direction="sendonly":"recvonly"===a.direction&&(a.setDirection?a.setDirection("inactive"):
a.direction="inactive"):!0!==b.offerToReceiveAudio||a||this.addTransceiver("audio");void 0!==b.offerToReceiveVideo&&(b.offerToReceiveVideo=!!b.offerToReceiveVideo);d=U(c=this.getTransceivers()).call(c,a=>"video"===a.receiver.track.kind);!1===b.offerToReceiveVideo&&d?"sendrecv"===d.direction?d.setDirection?d.setDirection("sendonly"):d.direction="sendonly":"recvonly"===d.direction&&(d.setDirection?d.setDirection("inactive"):d.direction="inactive"):!0!==b.offerToReceiveVideo||d||this.addTransceiver("video")}return a.apply(this,
arguments)}}function Hd(c){if(c.RTCIceCandidate&&!(c.RTCIceCandidate&&"foundation"in c.RTCIceCandidate.prototype)){var a=c.RTCIceCandidate;c.RTCIceCandidate=function(b){var d;if("object"==typeof b&&b.candidate&&0===D(d=b.candidate).call(d,"a=")&&((b=JSON.parse(z(b))).candidate=b.candidate.substr(2)),b.candidate&&b.candidate.length){d=new a(b);b=G.parseCandidate(b.candidate);let c=Qa(d,b);return c.toJSON=function(){return{candidate:c.candidate,sdpMid:c.sdpMid,sdpMLineIndex:c.sdpMLineIndex,usernameFragment:c.usernameFragment}},
c}return new a(b)};c.RTCIceCandidate.prototype=a.prototype;vc(c,"icecandidate",a=>(a.candidate&&da(a,"candidate",{value:new c.RTCIceCandidate(a.candidate),writable:"false"}),a))}}function Vc(c){if(c.RTCPeerConnection){var a=Nb(c);"sctp"in c.RTCPeerConnection.prototype||da(c.RTCPeerConnection.prototype,"sctp",{get(){return void 0===this._sctp?null:this._sctp}});var b=function(a){if(!a||!a.sdp)return!1;a=G.splitSections(a.sdp);return a.shift(),Hg(a).call(a,a=>{var b;return(a=G.parseMLine(a))&&"application"===
a.kind&&-1!==D(b=a.protocol).call(b,"SCTP")})},d=function(a){a=a.sdp.match(/mozilla...THIS_IS_SDPARTA-(\d+)/);if(null===a||2>a.length)return-1;a=N(a[1],10);return a!=a?-1:a},e=function(b){let d=65536;return"firefox"===a.browser&&(d=57>a.version?-1===b?16384:2147483637:60>a.version?57===a.version?65535:65536:2147483637),d},f=function(b,d){let c=65536;"firefox"===a.browser&&57===a.version&&(c=65535);b=G.matchPrefix(b.sdp,"a=max-message-size:");return 0<b.length?c=N(b[0].substr(19),10):"firefox"===a.browser&&
-1!==d&&(c=2147483637),c},g=c.RTCPeerConnection.prototype.setRemoteDescription;c.RTCPeerConnection.prototype.setRemoteDescription=function(){if(this._sctp=null,"chrome"===a.browser&&76<=a.version){var {sdpSemantics:c}=this.getConfiguration();"plan-b"===c&&da(this,"sctp",{get(){return void 0===this._sctp?null:this._sctp},enumerable:!0,configurable:!0})}if(b(arguments[0])){var q=d(arguments[0]);c=e(q);q=f(arguments[0],q);let a;a=0===c&&0===q?Number.POSITIVE_INFINITY:0===c||0===q?Math.max(c,q):Math.min(c,
q);c={};da(c,"maxMessageSize",{get:()=>a});this._sctp=c}return g.apply(this,arguments)}}}function Wc(c){function a(a,b){let d=a.send;a.send=function(){var c=arguments[0];c=c.length||c.size||c.byteLength;if("open"===a.readyState&&b.sctp&&c>b.sctp.maxMessageSize)throw new TypeError("Message too large (can send a maximum of "+b.sctp.maxMessageSize+" bytes)");return d.apply(a,arguments)}}if(c.RTCPeerConnection&&"createDataChannel"in c.RTCPeerConnection.prototype){var b=c.RTCPeerConnection.prototype.createDataChannel;
c.RTCPeerConnection.prototype.createDataChannel=function(){let d=b.apply(this,arguments);return a(d,this),d};vc(c,"datachannel",b=>(a(b.channel,b.target),b))}}function He(c){var a;if(c.RTCPeerConnection&&!("connectionState"in c.RTCPeerConnection.prototype)){var b=c.RTCPeerConnection.prototype;da(b,"connectionState",{get(){return{completed:"connected",checking:"connecting"}[this.iceConnectionState]||this.iceConnectionState},enumerable:!0,configurable:!0});da(b,"onconnectionstatechange",{get(){return this._onconnectionstatechange||
null},set(a){this._onconnectionstatechange&&(this.removeEventListener("connectionstatechange",this._onconnectionstatechange),delete this._onconnectionstatechange);a&&this.addEventListener("connectionstatechange",this._onconnectionstatechange=a)},enumerable:!0,configurable:!0});r(a=["setLocalDescription","setRemoteDescription"]).call(a,a=>{let d=b[a];b[a]=function(){return this._connectionstatechangepoly||(this._connectionstatechangepoly=a=>{let b=a.target;if(b._lastConnectionState!==b.connectionState){b._lastConnectionState=
b.connectionState;let d=new Event("connectionstatechange",a);b.dispatchEvent(d)}return a},this.addEventListener("iceconnectionstatechange",this._connectionstatechangepoly)),d.apply(this,arguments)}})}}function Ie(c){if(c.RTCPeerConnection){var a=Nb(c);if(!("chrome"===a.browser&&71<=a.version)){var b=c.RTCPeerConnection.prototype.setRemoteDescription;c.RTCPeerConnection.prototype.setRemoteDescription=function(a){var d,c;a&&a.sdp&&-1!==D(d=a.sdp).call(d,"\na=extmap-allow-mixed")&&(a.sdp=P(c=a.sdp.split("\n")).call(c,
a=>"a=extmap-allow-mixed"!==wc(a).call(a)).join("\n"));return b.apply(this,arguments)}}}}function xc(c){return"string"==typeof c?Qa({},yl[c]):c}function Je(c){return"string"==typeof c?Qa({},zl[c]):c}function Id(c){return"string"==typeof c?Qa({},Al[c]):c}function Zb(c,a){var b;Ja(b=S(u)).call(b,c)&&(u[c]=a)}function yc(c,a,b){return{sampleRate:c,stereo:a,bitrate:b}}function I(c,a,b,d,e){return{width:c,height:a,frameRate:b,bitrateMin:d,bitrateMax:e}}function Ob(c,a,b,d,e){return{width:{max:c},height:{max:a},
frameRate:b,bitrateMin:d,bitrateMax:e}}function jh(c){return"[object Array]"===zc.call(c)}function kh(c){return null!==c&&"object"==typeof c}function lh(c){return"[object Function]"===zc.call(c)}function Jd(c,a){if(null!=c)if("object"!=typeof c&&(c=[c]),jh(c))for(var b=0,d=c.length;b<d;b++)a.call(null,c[b],b,c);else for(b in c)Object.prototype.hasOwnProperty.call(c,b)&&a.call(null,c[b],b,c)}function mh(){function c(b,d){"object"==typeof a[d]&&"object"==typeof b?a[d]=mh(a[d],b):a[d]=b}for(var a={},
b=0,d=arguments.length;b<d;b++)Jd(arguments[b],c);return a}function Ke(){function c(b,d){"object"==typeof a[d]&&"object"==typeof b?a[d]=Ke(a[d],b):a[d]="object"==typeof b?Ke({},b):b}for(var a={},b=0,d=arguments.length;b<d;b++)Jd(arguments[b],c);return a}function nh(c){return encodeURIComponent(c).replace(/%40/gi,"@").replace(/%3A/gi,":").replace(/%24/g,"$").replace(/%2C/gi,",").replace(/%20/g,"+").replace(/%5B/gi,"[").replace(/%5D/gi,"]")}function Kd(){this.handlers=[]}function oh(c,a){!J.isUndefined(c)&&
J.isUndefined(c["Content-Type"])&&(c["Content-Type"]=a)}function Xc(c){this.defaults=c;this.interceptors={request:new ph,response:new ph}}function Le(c){this.message=c}function Ld(c){if("function"!=typeof c)throw new TypeError("executor must be a function.");var a;this.promise=new Promise(function(b){a=b});var b=this;c(function(d){b.reason||(b.reason=new qh(d),a(b.reason))})}function rh(c){c=new Md(c);var a=sh(Md.prototype.request,c);return J.extend(a,Md.prototype,c),J.extend(a,c),a}function th(){let c=
new Date;return c.toTimeString().split(" ")[0]+":"+c.getMilliseconds()}function uh(c,a){if("boolean"!=typeof c)throw new n(m.INVALID_PARAMS,"Invalid ".concat(a,": The value is of the boolean type."));}function Ua(c,a,b){var d;if(!Ja(b).call(b,c))throw new n(m.INVALID_PARAMS,p(d="".concat(a," can only be set as ")).call(d,z(b)));}function W(c,a,b=1,d=1E4,e=!0){if(c<b||c>d||e&&("number"!=typeof c||0!=c%1)){var f,g;throw new n(m.INVALID_PARAMS,p(f=p(g="invalid ".concat(a,": the value range is [")).call(g,
b,", ")).call(f,d,"]. integer only"));}}function Ma(c,a,b=1,d=255,e=!0){if(null==c)throw new n(m.INVALID_PARAMS,"".concat(a||"param"," cannot be empty"));var f,g,k;if(!vh(c,b,d,e))throw new n(m.INVALID_PARAMS,p(f=p(g=p(k="Invalid ".concat(a||"string param",": Length of the string: [")).call(k,b,",")).call(g,d,"].")).call(f,e?" ASCII characters only.":""));}function wh(c,a){if(!hc(c))throw new n(m.INVALID_PARAMS,"".concat(a," should be an array"));}function Me(c){if("string"!=typeof c||!/^[a-zA-Z0-9 !#\$%&\(\)\+\-:;<=\.>\?@\[\]\^_\{\}\|~,]{1,64}$/.test(c))throw h.error("Invalid Channel Name ".concat(c)),
new n(m.INVALID_PARAMS,"The length must be within 64 bytes. The supported characters: a-z,A-Z,0-9,space,!, #, $, %, &, (, ), +, -, :, ;, <, =, ., >, ?, @, [, ], ^, _,  {, }, |, ~, ,");}function Ne(c){var a;if(!("number"==typeof c&&Math.floor(c)===c&&0<=c&&4294967295>=c||vh(c,1,255)))throw h.error(p(a="Invalid UID ".concat(c," ")).call(a,typeof c)),new n(m.INVALID_PARAMS,"[String uid] Length of the string: [1,255]. ASCII characters only. [Number uid] The value range is [0,10000]");}function vh(c,a=
1,b=255,d=!0){if(a="string"==typeof c&&c.length<=b&&c.length>=a){if(!(d=!d))a:if("string"!=typeof c)d=!1;else{for(d=0;d<c.length;d+=1)if(a=c.charCodeAt(d),0>a||255<a){d=!1;break a}d=!0}a=d}return a}function Nd(){this._listeners={}}function xh(c){return"undefined"!=typeof Float32Array?function(){function a(a,b,d){f[0]=a;b[d]=g[0];b[d+1]=g[1];b[d+2]=g[2];b[d+3]=g[3]}function b(a,b,d){f[0]=a;b[d]=g[3];b[d+1]=g[2];b[d+2]=g[1];b[d+3]=g[0]}function d(a,b){return g[0]=a[b],g[1]=a[b+1],g[2]=a[b+2],g[3]=a[b+
3],f[0]}function e(a,b){return g[3]=a[b],g[2]=a[b+1],g[1]=a[b+2],g[0]=a[b+3],f[0]}var f=new Float32Array([-0]),g=new Uint8Array(f.buffer),k=128===g[3];c.writeFloatLE=k?a:b;c.writeFloatBE=k?b:a;c.readFloatLE=k?d:e;c.readFloatBE=k?e:d}():function(){function a(a,b,c,g){var d=0>b?1:0;if(d&&(b=-b),0===b)a(0<1/b?0:2147483648,c,g);else if(isNaN(b))a(2143289344,c,g);else if(3.4028234663852886E38<b)a((d<<31|2139095040)>>>0,c,g);else if(1.1754943508222875E-38>b)a((d<<31|Math.round(b/1.401298464324817E-45))>>>
0,c,g);else{var e=Math.floor(Math.log(b)/Math.LN2);a((d<<31|e+127<<23|8388607&Math.round(b*Math.pow(2,-e)*8388608))>>>0,c,g)}}function b(a,b,c){c=a(b,c);a=2*(c>>31)+1;b=c>>>23&255;c&=8388607;return 255===b?c?NaN:1/0*a:0===b?1.401298464324817E-45*a*c:a*Math.pow(2,b-150)*(c+8388608)}c.writeFloatLE=a.bind(null,yh);c.writeFloatBE=a.bind(null,zh);c.readFloatLE=b.bind(null,Ah);c.readFloatBE=b.bind(null,Bh)}(),"undefined"!=typeof Float64Array?function(){function a(a,b,d){f[0]=a;b[d]=g[0];b[d+1]=g[1];b[d+
2]=g[2];b[d+3]=g[3];b[d+4]=g[4];b[d+5]=g[5];b[d+6]=g[6];b[d+7]=g[7]}function b(a,b,d){f[0]=a;b[d]=g[7];b[d+1]=g[6];b[d+2]=g[5];b[d+3]=g[4];b[d+4]=g[3];b[d+5]=g[2];b[d+6]=g[1];b[d+7]=g[0]}function d(a,b){return g[0]=a[b],g[1]=a[b+1],g[2]=a[b+2],g[3]=a[b+3],g[4]=a[b+4],g[5]=a[b+5],g[6]=a[b+6],g[7]=a[b+7],f[0]}function e(a,b){return g[7]=a[b],g[6]=a[b+1],g[5]=a[b+2],g[4]=a[b+3],g[3]=a[b+4],g[2]=a[b+5],g[1]=a[b+6],g[0]=a[b+7],f[0]}var f=new Float64Array([-0]),g=new Uint8Array(f.buffer),k=128===g[7];c.writeDoubleLE=
k?a:b;c.writeDoubleBE=k?b:a;c.readDoubleLE=k?d:e;c.readDoubleBE=k?e:d}():function(){function a(a,b,c,g,k,q){var d=0>g?1:0;if(d&&(g=-g),0===g)a(0,k,q+b),a(0<1/g?0:2147483648,k,q+c);else if(isNaN(g))a(0,k,q+b),a(2146959360,k,q+c);else if(1.7976931348623157E308<g)a(0,k,q+b),a((d<<31|2146435072)>>>0,k,q+c);else if(2.2250738585072014E-308>g)a((g/=4.9E-324)>>>0,k,q+b),a((d<<31|g/4294967296)>>>0,k,q+c);else{var e=Math.floor(Math.log(g)/Math.LN2);1024===e&&(e=1023);a(4503599627370496*(g*=Math.pow(2,-e))>>>
0,k,q+b);a((d<<31|e+1023<<20|1048576*g&1048575)>>>0,k,q+c)}}function b(a,b,c,g,k){b=a(g,k+b);g=a(g,k+c);a=2*(g>>31)+1;c=g>>>20&2047;b=4294967296*(1048575&g)+b;return 2047===c?b?NaN:1/0*a:0===c?4.9E-324*a*b:a*Math.pow(2,c-1075)*(b+4503599627370496)}c.writeDoubleLE=a.bind(null,yh,0,4);c.writeDoubleBE=a.bind(null,zh,4,0);c.readDoubleLE=b.bind(null,Ah,0,4);c.readDoubleBE=b.bind(null,Bh,4,0)}(),c}function yh(c,a,b){a[b]=255&c;a[b+1]=c>>>8&255;a[b+2]=c>>>16&255;a[b+3]=c>>>24}function zh(c,a,b){a[b]=c>>>
24;a[b+1]=c>>>16&255;a[b+2]=c>>>8&255;a[b+3]=255&c}function Ah(c,a){return(c[a]|c[a+1]<<8|c[a+2]<<16|c[a+3]<<24)>>>0}function Bh(c,a){return(c[a]<<24|c[a+1]<<16|c[a+2]<<8|c[a+3])>>>0}function Ea(c,a){this.lo=c>>>0;this.hi=a>>>0}function Yc(c,a,b){this.fn=c;this.len=a;this.next=void 0;this.val=b}function Oe(){}function Bl(c){this.head=c.head;this.tail=c.tail;this.len=c.len;this.next=c.states}function aa(){this.len=0;this.tail=this.head=new Yc(Oe,0,0);this.states=null}function Pe(c,a,b){a[b]=255&c}
function Qe(c,a){this.len=c;this.next=void 0;this.val=a}function Re(c,a,b){for(;c.hi;)a[b++]=127&c.lo|128,c.lo=(c.lo>>>7|c.hi<<25)>>>0,c.hi>>>=7;for(;127<c.lo;)a[b++]=127&c.lo|128,c.lo>>>=7;a[b++]=c.lo}function Se(c,a,b){a[b]=255&c;a[b+1]=c>>>8&255;a[b+2]=c>>>16&255;a[b+3]=c>>>24}function Eb(){Te.call(this)}function Cl(c,a,b){40>c.length?R.utf8.write(c,a,b):a.utf8Write?a.utf8Write(c,b):a.write(c,b)}function tb(c,a){return RangeError("index out of range: "+c.pos+" + "+(a||1)+" > "+c.len)}function wa(c){this.buf=
c;this.pos=0;this.len=c.length}function Ue(){var c=new Ch(0,0),a=0;if(!(4<this.len-this.pos)){for(;3>a;++a){if(this.pos>=this.len)throw tb(this);if(c.lo=(c.lo|(127&this.buf[this.pos])<<7*a)>>>0,128>this.buf[this.pos++])return c}return c.lo=(c.lo|(127&this.buf[this.pos++])<<7*a)>>>0,c}for(;4>a;++a)if(c.lo=(c.lo|(127&this.buf[this.pos])<<7*a)>>>0,128>this.buf[this.pos++])return c;if(c.lo=(c.lo|(127&this.buf[this.pos])<<28)>>>0,c.hi=(c.hi|(127&this.buf[this.pos])>>4)>>>0,128>this.buf[this.pos++])return c;
if(a=0,4<this.len-this.pos)for(;5>a;++a){if(c.hi=(c.hi|(127&this.buf[this.pos])<<7*a+3)>>>0,128>this.buf[this.pos++])return c}else for(;5>a;++a){if(this.pos>=this.len)throw tb(this);if(c.hi=(c.hi|(127&this.buf[this.pos])<<7*a+3)>>>0,128>this.buf[this.pos++])return c}throw Error("invalid varint encoding");}function Od(c,a){return(c[a-4]|c[a-3]<<8|c[a-2]<<16|c[a-1]<<24)>>>0}function Dh(){if(this.pos+8>this.len)throw tb(this,8);return new Ch(Od(this.buf,this.pos+=4),Od(this.buf,this.pos+=4))}function ic(c){Ve.call(this,
c)}function Zc(c,a,b){if("function"!=typeof c)throw TypeError("rpcImpl must be a function");R.EventEmitter.call(this);this.rpcImpl=c;this.requestDelimited=!!a;this.responseDelimited=!!b}function Dl(c){return Ma(c.reportId,"params.reportId",0,100,!1),Ma(c.category,"params.category",0,100,!1),Ma(c.event,"params.event",0,100,!1),Ma(c.label,"params.label",0,100,!1),W(c.value,"params.value",-9007199254740991,9007199254740991,!1),!0}function Eh(c){return W(c.timeout,"config.timeout",0,1E5),W(c.timeoutFactor,
"config.timeoutFactor",0,100,!1),W(c.maxRetryCount,"config.maxRetryConfig",0,1/0),W(c.maxRetryTimeout,"config.maxRetryTimeout",0,1/0),!0}function Fh(c){return Ma(c.turnServerURL,"turnServerURL"),Ma(c.username,"username"),Ma(c.password,"password"),W(c.udpport,"udpport",1,99999,!0),c.forceturn&&uh(c.forceturn,"forceturn"),c.tcpport&&W(c.tcpport,"tcpport",1,99999,!0),!0}function Gh(c){return void 0!==c.level&&Ua(c.level,"level",[1,2]),!0}function We(c,a){Ma(c.url,"".concat(a,".url"),1,1E3,!1);null==
c.x||W(c.x,"".concat(a,".x"),0,1E4);null==c.y||W(c.y,"".concat(a,".y"),0,1E4);null==c.width||W(c.width,"".concat(a,".width"),0,1E4);null==c.height||W(c.height,"".concat(a,".height"),0,1E4);null==c.zOrder||W(c.zOrder,"".concat(a,".zOrder"),0,255);null==c.alpha||W(c.alpha,"".concat(a,".alpha"),0,1,!1)}function El(c){var a,b;(null==c.width||W(c.width,"config.width",0,1E4),null==c.height||W(c.height,"config.height",0,1E4),null==c.videoBitrate||W(c.videoBitrate,"config.videoBitrate",1,1E6),null==c.videoFrameRate||
W(c.videoFrameRate,"config.videoFrameRate"),null==c.lowLatency||uh(c.lowLatency,"config.lowLatency"),null==c.audioSampleRate||Ua(c.audioSampleRate,"config.audioSampleRate",[32E3,44100,48E3]),null==c.audioBitrate||W(c.audioBitrate,"config.audioBitrate",1,128),null==c.audioChannels||Ua(c.audioChannels,"config.audioChannels",[1,2,3,4,5]),null==c.videoGop||W(c.videoGop,"config.videoGop"),null==c.videoCodecProfile||Ua(c.videoCodecProfile,"config.videoCodecProfile",[66,77,100]),null==c.userCount||W(c.userCount,
"config.userCount",0,17),null==c.backgroundColor||W(c.backgroundColor,"config.backgroundColor",0,16777215),null==c.userConfigExtraInfo||Ma(c.userConfigExtraInfo,"config.userConfigExtraInfo",0,4096,!1),c.transcodingUsers&&null!=c.transcodingUsers)&&(wh(c.transcodingUsers,"config.transcodingUsers"),r(a=c.transcodingUsers).call(a,(a,b)=>{Ne(a.uid);null==a.x||W(a.x,"transcodingUser[".concat(b,"].x"),0,1E4);null==a.y||W(a.y,"transcodingUser[".concat(b,"].y"),0,1E4);null==a.width||W(a.width,"transcodingUser[".concat(b,
"].width"),0,1E4);null==a.height||W(a.height,"transcodingUser[".concat(b,"].height"),0,1E4);null==a.zOrder||W(a.zOrder-1,"transcodingUser[".concat(b,"].zOrder"),0,100);null==a.alpha||W(a.alpha,"transcodingUser[".concat(b,"].alpha"),0,1,!1)}));(null==c.watermark||We(c.watermark,"watermark"),null==c.backgroundImage||We(c.backgroundImage,"backgroundImage"),c.images&&null!=c.images)&&(wh(c.images,"config.images"),r(b=c.images).call(b,(a,b)=>{We(a,"images[".concat(b,"]"))}));return!0}function Hh(c){if(!c.channelName)throw new n(m.INVALID_PARAMS,
"invalid channelName in info");if(!c.uid||"number"!=typeof c.uid)throw new n(m.INVALID_PARAMS,"invalid uid in info, uid must be a number");return c.token&&Ma(c.token,"info.token",1,2047),Ne(c.uid),Me(c.channelName),!0}function Ih(c){return Ua(c,"mediaSource",["screen","window","application"]),!0}function qa(c){var a,b,d,e;c=c||navigator.userAgent;let f=c.match(/(opera|chrome|safari|firefox|msie|trident(?=\/))\/?\s*(\d+)/i)||[];if("Chrome"===f[1]){var g=c.match(/(OPR(?=\/))\/?(\d+)/i);null!==g&&(f=
g)}"Safari"===f[1]&&(g=c.match(/version\/(\d+)/i),null!==g&&(f[2]=g[1]));-1!==D(a=c.toLowerCase()).call(a,"qqbrowser")&&(a=c.match(/(qqbrowser(?=\/))\/?(\d+)/i),null!==a&&(f=a));-1!==D(b=c.toLowerCase()).call(b,"micromessenger")&&(b=c.match(/(micromessenger(?=\/))\/?(\d+)/i),null!==b&&(f=b));-1!==D(d=c.toLowerCase()).call(d,"edge")&&(d=c.match(/(edge(?=\/))\/?(\d+)/i),null!==d&&(f=d));-1!==D(e=c.toLowerCase()).call(e,"trident")&&(e=/\brv[ :]+(\d+)/g.exec(c)||[],null!==e&&(f=["","IE",e[1]]));e=null;
d=[{s:X.WIN_10,r:/(Windows 10.0|Windows NT 10.0)/},{s:X.WIN_81,r:/(Windows 8.1|Windows NT 6.3)/},{s:X.WIN_8,r:/(Windows 8|Windows NT 6.2)/},{s:X.WIN_7,r:/(Windows 7|Windows NT 6.1)/},{s:X.WIN_VISTA,r:/Windows NT 6.0/},{s:X.WIN_SERVER_2003,r:/Windows NT 5.2/},{s:X.WIN_XP,r:/(Windows NT 5.1|Windows XP)/},{s:X.WIN_2000,r:/(Windows NT 5.0|Windows 2000)/},{s:X.ANDROID,r:/Android/},{s:X.OPEN_BSD,r:/OpenBSD/},{s:X.SUN_OS,r:/SunOS/},{s:X.LINUX,r:/(Linux|X11)/},{s:X.IOS,r:/(iPhone|iPad|iPod)/},{s:X.MAC_OS_X,
r:/Mac OS X/},{s:X.MAC_OS,r:/(MacPPC|MacIntel|Mac_PowerPC|Macintosh)/},{s:X.QNX,r:/QNX/},{s:X.UNIX,r:/UNIX/},{s:X.BEOS,r:/BeOS/},{s:X.OS_2,r:/OS\/2/},{s:X.SEARCH_BOT,r:/(nuhk|Googlebot|Yammybot|Openbot|Slurp|MSNBot|Ask Jeeves\/Teoma|ia_archiver)/}];for(let a in d)if(b=d[a],b.r.test(c)){e=b.s;break}return{name:f[1],version:f[2],os:e}}function $c(){return qa().name===ba.CHROME}function Jh(){return window.navigator.appVersion&&null!==window.navigator.appVersion.match(/Chrome\/([\w\W]*?)\./)&&35>=window.navigator.appVersion.match(/Chrome\/([\w\W]*?)\./)[1]}
function Xe(){let c=qa();return c.name===ba.EDGE||c.name===ba.SAFARI?!1:!!navigator.userAgent.toLocaleLowerCase().match(/chrome\/[\d]./i)}function Kh(c,a){var b=S(c);if(ja){var d=ja(c);a&&(d=P(d).call(d,function(a){return fa(c,a).enumerable}));b.push.apply(b,d)}return b}function Fb(c){for(var a=1;a<arguments.length;a++){var b,d=null!=arguments[a]?arguments[a]:{};if(a%2)r(b=Kh(Object(d),!0)).call(b,function(a){Va(c,a,d[a])});else if(ka)Wa(c,ka(d));else{var e;r(e=Kh(Object(d))).call(e,function(a){da(c,
a,fa(d,a))})}}return c}function Fl(c){if(!c.address||!c.tcp)throw new n(m.UNEXPECTED_RESPONSE,"Invalid address format ".concat(c));return c.address.match(/^[\.:\d]+$/)?"".concat(c.address.replace(/[^\d]/g,"-"),".edge.agora.io"):(h.info("Cannot recognized as IP address ".concat(c.address,". Used As Host instead")),p(a="".concat(c.address,":")).call(a,c.tcp));var a}function Gl(c,a){var b;let d=ad?[".agora.io",".agoraio.cn"]:[".agora.io"],e=d[1]&&-1!==D(a).call(a,d[1])?1:0;c.addresses=c.addresses||[];
return{gatewayAddrs:y(b=c.addresses).call(b,a=>{var b,c,f;return a.ip.match(/^[\.:\d]+$/)?p(b=p(c="".concat(a.ip.replace(/[^\d]/g,"-"),".edge")).call(c,d[e++%d.length],":")).call(b,a.port):(h.info("Cannot recognized as IP address ".concat(a.ip,". Used As Host instead")),p(f="".concat(a.ip,":")).call(f,a.port))}),uid:c.uid,cid:c.cid,vid:c.detail&&c.detail[8],uni_lbs_ip:c.detail&&c.detail[1],res:c}}function Hl(c,a){var b;return{addressList:y(b=c.servers).call(b,(b,c)=>{var d,e,k,q,w;return ad?p(d=p(e=
p(k="wss://".concat(b.address.replace(/\./g,"-"),".edge.")).call(k,0==c%2?"agora.io":"agoraio.cn",":")).call(e,b.wss,"?serviceName=")).call(d,encodeURIComponent(a)):p(q=p(w="wss://".concat(b.address.replace(/\./g,"-"),".edge.agora.io:")).call(w,b.wss,"?serviceName=")).call(q,encodeURIComponent(a))}),workerToken:c.workerToken,vid:c.vid}}function jb(c){return"number"==typeof c?c:c.exact||c.ideal||c.max||c.min||0}function Il(c){var a;c=c._encoderConfig;if(!c)return{};let b={resolution:c.width&&c.height?
p(a="".concat(jb(c.width),"x")).call(a,jb(c.height)):void 0,maxVideoBW:c.bitrateMax,minVideoBW:c.bitrateMin};return"number"==typeof c.frameRate?(b.maxFrameRate=c.frameRate,b.minFrameRate=c.frameRate):c.frameRate&&(b.maxFrameRate=c.frameRate.max||c.frameRate.ideal||c.frameRate.exact||c.frameRate.min,b.minFrameRate=c.frameRate.min||c.frameRate.ideal||c.frameRate.exact||c.frameRate.max),b}function Jl(c){let a={id:"bweforvideo",timestamp:(new Date(c.timestamp)).toISOString(),type:"VideoBwe"};return c.bitrate.retransmit&&
(a.A_rb=c.bitrate.retransmit.toString()),c.bitrate.targetEncoded&&(a.A_teb=c.bitrate.targetEncoded.toString()),a.A_aeb=c.bitrate.actualEncoded.toString(),a.A_tb=c.bitrate.transmit.toString(),void 0!==c.sendBandwidth&&(a.A_asb=c.sendBandwidth.toString()),a}function Lh(c,a){let b=c.videoSend[0];if(!b)return null;a=a&&a.videoSend[0]?a.videoSend[0].inputFrame:void 0;c={id:sa(10,""),timestamp:(new Date(c.timestamp)).toISOString(),mediaType:"video",type:"ssrc",ssrc:b.ssrc.toString()};return b.inputFrame&&
(a&&b.inputFrame.height===a.height||(c.A_fhi=b.inputFrame.height?b.inputFrame.height.toString():"0"),a&&b.inputFrame.width===a.width||(c.A_fwi=b.inputFrame.width?b.inputFrame.width.toString():"0"),a&&b.inputFrame.frameRate===a.frameRate||(c.A_fri=b.inputFrame.frameRate?b.inputFrame.frameRate.toString():"0")),c}function Kl(c,a){let b=c.videoSend[0];if(!b)return null;c={id:sa(10,""),timestamp:(new Date(c.timestamp)).toISOString(),mediaType:"video",type:"ssrc",ssrc:b.ssrc.toString()};switch(c.A_vstd=
a._originMediaStreamTrack&&!a._originMediaStreamTrack.enabled||!a._mediaStreamTrack.enabled?"1":"0",b.sentFrame&&(c.A_fhs=b.sentFrame.height.toString(),c.A_frs=b.sentFrame.frameRate.toString(),c.A_fws=b.sentFrame.width.toString()),b.adaptionChangeReason){case "none":c.A_ac="0";break;case "cpu":c.A_ac="1";break;case "bandwidth":c.A_ac="2";break;case "other":c.A_ac="3"}return c.A_nr=b.nacksCount.toString(),b.avgEncodeMs&&(c.A_aem=b.avgEncodeMs.toFixed(0).toString()),c}function Ll(c,a){let b=c.audioSend[0];
if(!b)return null;c={id:sa(10,""),timestamp:(new Date(c.timestamp)).toISOString(),mediaType:"audio",type:"ssrc",ssrc:b.ssrc.toString()};return c.A_astd=a._originMediaStreamTrack.enabled&&a._mediaStreamTrack.enabled?"0":"1",b.inputLevel?c.A_ail=Math.round(100*b.inputLevel).toString():c.A_ail=Math.round(100*a._source.getAudioAvgLevel()).toString(),c.A_apil=Math.round(100*a._source.getAudioAvgLevel()).toString(),c}function Ml(c,a){let b=c.videoRecv[0];if(!b)return null;c={id:sa(10,""),timestamp:(new Date(c.timestamp)).toISOString(),
mediaType:"video",type:"ssrc",ssrc:b.ssrc.toString()};var d;(c.bytesReceived=b.bytes.toString(),c.packetsLost=b.packetsLost.toString(),c.packetsReceived=b.packets.toString(),b.framesRateFirefox&&(c.A_frr=b.framesRateFirefox.toString()),b.receivedFrame&&(c.A_frr=b.receivedFrame.frameRate.toString()),c.A_frd=b.decodeFrameRate.toString(),b.outputFrame&&(c.A_fro=b.outputFrame.frameRate.toString()),void 0!==b.jitterBufferMs&&(c.A_jbm=Math.floor(b.jitterBufferMs).toString()),void 0!==b.currentDelayMs&&
(c.A_cdm=Math.floor(b.currentDelayMs).toString()),c.A_fs=b.firsCount.toString(),c.A_ns=b.nacksCount.toString(),c.A_ps=b.plisCount.toString(),a&&(c.A_vrtd=a._originMediaStreamTrack.enabled&&a._mediaStreamTrack.enabled?"0":"1"),a._player&&0<a._player.freezeTimeCounterList.length)&&(c.A_vrft=Ka(d=a._player.freezeTimeCounterList).call(d,0,1)[0].toString());return c}function Nl(c,a){let b=c.audioRecv[0];if(!b)return null;c={id:sa(10,""),timestamp:(new Date(c.timestamp)).toISOString(),mediaType:"audio",
type:"ssrc",ssrc:b.ssrc.toString()};return c.bytesReceived=b.bytes.toString(),c.packetsLost=b.packetsLost.toString(),c.packetsReceived=b.packets.toString(),b.outputLevel?c.A_aol=Math.round(100*b.outputLevel).toString():c.A_aol=Math.round(100*a._source.getAudioAvgLevel()).toString(),c.A_apol=Math.round(100*a._source.getAudioAvgLevel()).toString(),a&&(c.A_artd=a._originMediaStreamTrack.enabled&&a._mediaStreamTrack.enabled?"0":"1"),c.A_jr=b.jitterMs.toString(),c.A_jbm=Math.floor(b.jitterBufferMs).toString(),
c.A_cdm=Math.floor(b.jitterBufferMs).toString(),c}function Ol(c){return(c=c.videoSend[0])?{mediaType:"video",isVideoMute:!1,frameRateInput:c.inputFrame&&c.inputFrame.frameRate.toString(),frameRateSent:c.sentFrame&&c.sentFrame.frameRate.toString(),googRtt:c.rttMs.toString()}:null}function Pl(c,a,b,d,e){a=a.videoRecv[0];if(!a)return null;c=bd.isRemoteVideoFreeze(e,a,d?d.videoRecv[0]:void 0)&&c;b={mediaType:"video",isVideoMute:!1,peerId:b,frameRateReceived:a.receivedFrame&&a.receivedFrame.frameRate.toString(),
frameRateDecoded:a.decodedFrame&&a.decodedFrame.frameRate.toString(),isFreeze:c,bytesReceived:a.bytes.toString(),packetsReceived:a.packets.toString(),packetsLost:a.packetsLost.toString()};return a.framesRateFirefox&&(b.frameRateDecoded=a.framesRateFirefox.toString(),b.frameRateReceived=a.framesRateFirefox.toString()),b}function Ql(c,a,b){c=c.audioRecv[0];if(!c)return null;b=bd.isRemoteAudioFreeze(b);return{mediaType:"audio",isAudioMute:!1,peerId:a,googJitterReceived:c.jitterMs.toString(),isFreeze:b,
bytesReceived:c.bytes.toString(),packetsReceived:c.packets.toString(),packetsLost:c.packetsLost.toString(),frameReceived:c.receivedFrames.toString(),frameDropped:c.droppedFrames.toString()}}function Mh(c){return 0<=c&&.17>c?1:.17<=c&&.36>c?2:.36<=c&&.59>c?3:.59<=c&&1>=c?4:1<c?5:0}function Rl(c,a){let b={};c.height&&c.width&&(a=a._videoHeight||a.getMediaStreamTrack().getSettings().height,b.scaleResolutionDownBy=a?a/jb(c.height):4);return b.maxFramerate=c.framerate?jb(c.framerate):void 0,b.maxBitrate=
c.bitrate?1E3*c.bitrate:void 0,b}function Nh(c,a){var b=S(c);if(ja){var d=ja(c);a&&(d=P(d).call(d,function(a){return fa(c,a).enumerable}));b.push.apply(b,d)}return b}function Ye(c){for(var a=1;a<arguments.length;a++){var b,d=null!=arguments[a]?arguments[a]:{};if(a%2)r(b=Nh(Object(d),!0)).call(b,function(a){Va(c,a,d[a])});else if(ka)Wa(c,ka(d));else{var e;r(e=Nh(Object(d))).call(e,function(a){da(c,a,fa(d,a))})}}return c}function Pd(c){return window.TextEncoder?(new TextEncoder).encode(c).length:c.length}
function Sl(c,a,b){let d=c[a];if(!d||"string"!=typeof d)return[c];c[a]="";let e=Pd(z(c)),f=0,g=[],k=0;for(let q=0;q<d.length;q++)k+=127>=d.charCodeAt(q)?1:3,k<=b-e||(g[g.length]=Ye({},c,{[a]:d.substring(f,q)}),f=q,k=127>=d.charCodeAt(q)?1:3);return f!==d.length-1&&(g[g.length]=Ye({},c,{[a]:d.substring(f)})),g}function Tl(){return new x(c=>{document.body?c():window.addEventListener("load",()=>c())})}function Gb(c){return new x(a=>{window.setTimeout(a,c)})}function Ul(c){let a=new n(m.TIMEOUT,"timeout");
return new x((b,d)=>{window.setTimeout(()=>d(a),c)})}function sa(c=7,a){var b,d;let e=Math.random().toString(16).substr(2,c).toLowerCase();return e.length===c?p(b="".concat(a)).call(b,e):p(d="".concat(a)).call(d,e)+sa(c-e.length,"")}function cd(c){return new x((a,b)=>{let d=document.createElement("video");d.setAttribute("autoplay","");d.setAttribute("muted","");d.muted=!0;d.autoplay=!0;d.setAttribute("playsinline","");d.setAttribute("style","position: absolute; top: 0; left: 0; width: 1px; height: 1px");
document.body.appendChild(d);d.addEventListener("playing",()=>{!d.videoWidth&&qa().name===ba.FIREFOX||(document.body.removeChild(d),a([d.videoWidth,d.videoHeight]))});d.srcObject=new MediaStream([c])})}function Ac(c){return x.all(y(c).call(c,a=>a.then(a=>{throw a;},a=>a))).then(a=>{throw a;},a=>a)}function Na(c,a,...b){return 0===c.getListeners(a).length?x.reject(new n(m.UNEXPECTED_ERROR,"can not emit promise")):new x((d,e)=>{c.emit(a,...b,d,e)})}function Xa(c,a,...b){return 0===c.getListeners(a).length?
x.resolve():Na(c,a,...b)}function jc(c,a,...b){return 0===c.getListeners(a).length?null:dd(c,a,...b)}function dd(c,a,...b){let d=null,e=null;if(c.emit(a,...b,a=>{d=a},a=>{e=a}),null!==e)throw e;if(null===d)throw new n(m.UNEXPECTED_ERROR,"handler is not sync");return d}function ed(c,a){a=D(c).call(c,a);-1!==a&&Ka(c).call(c,a,1)}function Oh(c){let a=[];return r(c).call(c,b=>{-1===D(a).call(a,b)&&a.push(b)}),a}function eb(c){x.resolve().then(c)}function Vl(c,a){if(c.length!==a.length)return!1;for(let b=
0;b<c.length;b+=1){let d=c[b];if(P(c).call(c,a=>a===d).length!==P(a).call(a,a=>a===d).length)return!1}return!0}function fd(c,a){Ph[a]||(Ph[a]=!0,c())}function Qh(c){c=window.atob(c);let a=new Uint8Array(new ArrayBuffer(c.length));for(let b=0;b<c.length;b+=1)a[b]=c.charCodeAt(b);return a}function Ze(c){let a="";for(let b=0;b<c.length;b+=1)a+=String.fromCharCode(c[b]);return window.btoa(a)}function Wl(c,a){var b,d,e,f,g;if("motion"===c)return h.debug(p(f=p(g="adjust bitrate for motion, (".concat(a.bitrateMax,
", ")).call(g,a.bitrateMin,"}) -> (")).call(f,a.bitrateMax,", undefined)")),{max:a.bitrateMax};if(!a.width||!a.height)return{max:a.bitrateMax,min:a.bitrateMin};c=jb(a.width)*jb(a.height);f=Math.max(.25,.1+.03*jb(a.frameRate||20));if(19200>c)return{};if(76800>c)g=gd[0];else if(307200>c)g=gd[1];else if(921600>c)g=gd[2];else if(2073600>c)g=gd[3];else{if(!(8294400>c))return{min:a.bitrateMin,max:a.bitrateMax};g=gd[4]}c=[Math.round((g[0][0]+g[0][1]*c)*f),Math.round((g[1][0]+g[1][1]*c)*f),Math.round((g[2][0]+
g[2][1]*c)*f)];c={min:Math.max(c[2],a.bitrateMin||0),max:Math.max(c[2],a.bitrateMax||c[0])};return h.debug(p(b=p(d=p(e="adjust bitrate for detail, (".concat(a.bitrateMax,", ")).call(e,a.bitrateMin,"}) -> (")).call(d,c.max,", ")).call(b,c.min,")")),c}async function Rh(c,a){let b=(a,b)=>a?"number"!=typeof a?a.max||a.exact||a.ideal||a.min||b:a:b;c={audio:!1,video:{mandatory:{chromeMediaSource:"desktop",chromeMediaSourceId:c,maxHeight:b(a.height,1080),maxWidth:b(a.width,1920)}}};return a.frameRate&&"number"!=
typeof a.frameRate?(c.video.mandatory.maxFrameRate=a.frameRate.max,c.video.mandatory.minFrameRate=a.frameRate.min):"number"==typeof a.frameRate&&(c.video.mandatory.maxFrameRate=a.frameRate),await navigator.mediaDevices.getUserMedia(c)}async function Xl(c){var a=await Sh(c.mediaSource);a=await Yl(a);return await Rh(a,c)}async function Sh(c){let a=["window","screen"];"application"!==c&&"window"!==c||(a=["window"]);"screen"===c&&(a=["screen"]);let b=Th();if(!b)throw new n(m.ELECTRON_IS_NULL);c=null;
try{c=b.desktopCapturer.getSources({types:a})}catch(d){c=null}c&&c.then||(c=new x((d,c)=>{b.desktopCapturer.getSources({types:a},(a,b)=>{a?c(a):d(b)})}));try{return await c}catch(d){throw new n(m.ELECTRON_DESKTOP_CAPTURER_GET_SOURCES_ERROR,d.toString());}}function Yl(c){return new x((a,b)=>{let d=document.createElement("div");d.innerText="share screen";d.setAttribute("style","text-align: center; height: 25px; line-height: 25px; border-radius: 4px 4px 0 0; background: #D4D2D4; border-bottom:  solid 1px #B9B8B9;");
let e=document.createElement("div");e.setAttribute("style","width: 100%; height: 500px; padding: 15px 25px ; box-sizing: border-box;");let f=document.createElement("div");f.innerText="Agora Web Screensharing wants to share the contents of your screen with webdemo.agorabeckon.com. Choose what you'd like to share.";f.setAttribute("style","height: 12%;");let g=document.createElement("div");g.setAttribute("style","width: 100%; height: 80%; background: #FFF; border:  solid 1px #CBCBCB; display: flex; flex-wrap: wrap; justify-content: space-around; overflow-y: scroll; padding: 0 15px; box-sizing: border-box;");
let k=document.createElement("div");k.setAttribute("style","text-align: right; padding: 16px 0;");let q=document.createElement("button");q.innerHTML="cancel";q.setAttribute("style","width: 85px;");q.onclick=()=>{document.body.removeChild(w);let a=Error("NotAllowedError");a.name="NotAllowedError";b(a)};k.appendChild(q);e.appendChild(f);e.appendChild(g);e.appendChild(k);let w=document.createElement("div");w.setAttribute("style","position: fixed; z-index: 99999999; top: 50%; left: 50%; width: 620px; height: 525px; background: #ECECEC; border-radius: 4px; -webkit-transform: translate(-50%,-50%); transform: translate(-50%,-50%);");
w.appendChild(d);w.appendChild(e);document.body.appendChild(w);y(c).call(c,b=>{if(b.id){let d=document.createElement("div");d.setAttribute("style","width: 30%; height: 160px; padding: 20px 0; text-align: center;box-sizing: content-box;");d.innerHTML='<div style="height: 120px; display: table-cell; vertical-align: middle;"><img style="width: 100%; background: #333333; box-shadow: 1px 1px 1px 1px rgba(0, 0, 0, 0.2);" src='+b.thumbnail.toDataURL()+' /></div><span style="\theight: 40px; line-height: 40px; display: inline-block; width: 70%; word-break: keep-all; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">'+
b.name+"</span>";d.onclick=()=>{document.body.removeChild(w);a(b.id)};g.appendChild(d)}})})}function Th(){if(Qd)return Qd;try{return Qd=window.require("electron"),Qd}catch(c){return null}}async function Hb(c,a){let b=0,d=null;for(;2>b;)try{d=await Zl(c,a,0<b);break}catch(g){var e,f;if(g instanceof n)throw h.error(p(f="[".concat(a,"] ")).call(f,g.toString())),g;let d=Rd(g.name||g.code||g,g.message);if(d.code===m.MEDIA_OPTION_INVALID)h.debug("[".concat(a,"] detect media option invalid, retry")),b+=
1,await Gb(500);else throw h.error(p(e="[".concat(a,"] ")).call(e,d.toString())),d;}if(!d)throw new n(m.UNEXPECTED_ERROR,"can not find stream after getUserMedia");return d}async function Zl(c,a,b){if(!navigator.mediaDevices||!navigator.mediaDevices.getUserMedia)throw new n(m.NOT_SUPPORTED,"can not find getUserMedia");b&&(c.video&&(delete c.video.width,delete c.video.height),c.screen&&(delete c.screen.width,delete c.screen.height));var d=ca;b=new MediaStream;if(c.audioSource&&b.addTrack(c.audioSource),
c.videoSource&&b.addTrack(c.videoSource),!c.audio&&!c.video&&!c.screen)return h.debug("Using Video Source/ Audio Source"),b;if(c.screen)if(Th())c.screen.sourceId?Bc(b,await Rh(c.screen.sourceId,c.screen)):Bc(b,await Xl(c.screen));else if($c()&&c.screen.extensionId&&c.screen.mandatory){if(!d.getStreamFromExtension)throw new n(m.NOT_SUPPORTED,"This browser does not support screen sharing");h.debug("[".concat(a,'] Screen access on chrome stable, looking for extension"'));var e=await $l(c.screen.extensionId,
a);c.screen.mandatory.chromeMediaSourceId=e;Bc(b,await navigator.mediaDevices.getUserMedia({video:{mandatory:c.screen.mandatory}}))}else if(d.getDisplayMedia)c.screen.mediaSource&&Ih(c.screen.mediaSource),e={width:c.screen.width,height:c.screen.height,frameRate:c.screen.frameRate,displaySurface:"screen"===c.screen.mediaSource?"monitor":c.screen.mediaSource},h.debug("[".concat(a,"] getDisplayMedia:"),z({video:e,audio:!!c.screenAudio})),Bc(b,await navigator.mediaDevices.getDisplayMedia({video:e,audio:!!c.screenAudio}));
else{if(qa().name!==ba.FIREFOX)throw h.error("[".concat(a,"] This browser does not support screenSharing")),new n(m.NOT_SUPPORTED,"This browser does not support screen sharing");c.screen.mediaSource&&Ih(c.screen.mediaSource);d={video:{mediaSource:c.screen.mediaSource,width:c.screen.width,height:c.screen.height,frameRate:c.screen.frameRate}};h.debug(p(e="[".concat(a,"] getUserMedia: ")).call(e,z(d)));Bc(b,await navigator.mediaDevices.getUserMedia(d))}if(!c.video&&!c.audio)return b;c={video:c.video,
audio:c.audio};h.debug("[".concat(a,"] GetUserMedia"),z(c));a=qa();let f;e=null;a.name!==ba.SAFARI&&a.os!==X.IOS||(e=await $e.lock());try{f=await navigator.mediaDevices.getUserMedia(c)}catch(g){throw e&&e(),g;}return c.audio&&(Uh=!0),c.video&&(Vh=!0),Bc(b,f),e&&e(),b}function Rd(c,a){switch(c){case "Starting video failed":case "OverconstrainedError":case "TrackStartError":var b;return new n(m.MEDIA_OPTION_INVALID,p(b="".concat(c,": ")).call(b,a));case "NotFoundError":case "DevicesNotFoundError":var d;
return new n(m.DEVICE_NOT_FOUND,p(d="".concat(c,": ")).call(d,a));case "NotSupportedError":var e;return new n(m.NOT_SUPPORTED,p(e="".concat(c,": ")).call(e,a));case "InvalidStateError":case "NotAllowedError":case "PERMISSION_DENIED":case "PermissionDeniedError":var f;return new n(m.PERMISSION_DENIED,p(f="".concat(c,": ")).call(f,a));case "ConstraintNotSatisfiedError":var g;return new n(m.CONSTRAINT_NOT_SATISFIED,p(g="".concat(c,": ")).call(g,a));default:var k;return h.error("getUserMedia unexpected error",
c),new n(m.UNEXPECTED_ERROR,p(k="".concat(c,": ")).call(k,a))}}function Bc(c,a){let b=c.getVideoTracks()[0],d=c.getAudioTracks()[0],e=a.getVideoTracks()[0];(a=a.getAudioTracks()[0])&&(d&&c.removeTrack(d),c.addTrack(a));e&&(b&&c.removeTrack(b),c.addTrack(e))}function $l(c,a){return new x((b,d)=>{try{chrome.runtime.sendMessage(c,{getStream:!0},c=>{if(!c||!c.streamId)return h.error("[".concat(a,"] No response from Chrome Plugin. Plugin not installed properly"),c),void d(new n(m.CHROME_PLUGIN_NO_RESPONSE,
"No response from Chrome Plugin. Plugin not installed properly"));b(c.streamId)})}catch(f){var e;h.error(p(e="[".concat(a,"] AgoraRTC screensharing plugin is not accessible(")).call(e,c,")"),f.toString());d(new n(m.CHROME_PLUGIN_NOT_INSTALL))}})}function Wh(c,a){var b=S(c);if(ja){var d=ja(c);a&&(d=P(d).call(d,function(a){return fa(c,a).enumerable}));b.push.apply(b,d)}return b}function am(c){for(var a=1;a<arguments.length;a++){var b,d=null!=arguments[a]?arguments[a]:{};if(a%2)r(b=Wh(Object(d),!0)).call(b,
function(a){Va(c,a,d[a])});else if(ka)Wa(c,ka(d));else{var e;r(e=Wh(Object(d))).call(e,function(a){da(c,a,fa(d,a))})}}return c}function Pb(c,a,b){return new x((d,e)=>{a.timeout=a.timeout||u.HTTP_CONNECT_TIMEOUT;a.responseType=a.responseType||"json";a.data&&!b?(a.data=z(a.data),Xh+=Pd(a.data)):b&&(Xh+=a.data.size);a.headers=a.headers||{};a.headers["Content-Type"]=a.headers["Content-Type"]||"application/json";a.method="POST";a.url=c;Ib.request(a).then(a=>{"string"==typeof a.data?af+=Pd(a.data):a.data instanceof
ArrayBuffer||a.data instanceof Uint8Array?af+=a.data.byteLength:af+=Pd(z(a.data));d(a.data)}).catch(a=>{Ib.isCancel(a)?e(new n(m.OPERATION_ABORTED,"cancel token canceled")):"ECONNABORTED"===a.code?e(new n(m.NETWORK_TIMEOUT,a.message)):a.response?e(new n(m.NETWORK_RESPONSE_ERROR,a.response.status)):e(new n(m.NETWORK_ERROR,a.message))})})}async function bm(c,a){let b=new Blob([a.data],{type:"buffer"}),d;try{d=await Pb(c,am({},a,{data:b,headers:{"Content-Type":"application/octet-stream"}}),!0)}catch(e){throw e;
}return d}function Yh(c,a){var b=S(c);if(ja){var d=ja(c);a&&(d=P(d).call(d,function(a){return fa(c,a).enumerable}));b.push.apply(b,d)}return b}function xa(c){for(var a=1;a<arguments.length;a++){var b,d=null!=arguments[a]?arguments[a]:{};if(a%2)r(b=Yh(Object(d),!0)).call(b,function(a){Va(c,a,d[a])});else if(ka)Wa(c,ka(d));else{var e;r(e=Yh(Object(d))).call(e,function(a){da(c,a,fa(d,a))})}}return c}function Sd(c){var a=cm[Math.floor(c/1E4)];if(!a)return{desc:"unkonw error",retry:!1};a=a[c%1E4];if(!a){if(Math.floor(c/
1E4)===Cc.ACCESS_POINT){c%=1E4;if("1"===c.toString()[0])return{desc:c.toString(),retry:!1};if("2"===c.toString()[0])return{desc:c.toString(),retry:!0}}return{desc:"unkonw error",retry:!1}}return a}function Zh(c){return dm[c]||{desc:"UNKNOW_ERROR_".concat(c),action:"failed"}}function em(c,a){return Math.min(a.maxRetryTimeout,a.timeout*Math.pow(a.timeoutFactor,c))}function $b(c,a,b,d){let e=Qa({},Ra,d),f=e.timeout,g=async()=>{await Gb(f);f*=e.timeoutFactor;f=Math.min(e.maxRetryTimeout,f)},k=!1;d=new x(async(d,
f)=>{a=a||(()=>!1);b=b||(()=>!0);for(let q=0;q<e.maxRetryCount;q+=1){if(k)return f(new n(m.OPERATION_ABORTED));try{const b=await c();if(!a(b,q)||q+1===e.maxRetryCount)return d(b);await g()}catch(ia){if(!b(ia,q)||q+1===e.maxRetryCount)return f(ia);await g()}}});return d.cancel=()=>k=!0,d}function fm(){$h?(h.info("create audio context"),Dc=new $h,Dc.onstatechange=()=>{hd.emit("state-change")},gm(Dc)):h.error("your browser is not support web audio")}function id(){if(!Dc&&(fm(),!Dc))throw new n(m.NOT_SUPPORTED,
"can not create audio context");return Dc}function jd(c){if(!hm()){h.debug("polyfill audio node");var a=c.connect,b=c.disconnect;c.connect=(b,e,f)=>{var d;return c._inputNodes||(c._inputNodes=[]),Ja(d=c._inputNodes).call(d,b)||(b instanceof AudioNode?(c._inputNodes.push(b),a.call(c,b,e,f)):a.call(c,b,e)),c};c.disconnect=(d,e,f)=>{b.call(c);d?ed(c._inputNodes,d):c._inputNodes=[];for(let b of c._inputNodes)a.call(c,b)}}}function im(c){let a=id();return new x((b,d)=>{a.decodeAudioData(c,a=>{b(a)},a=>
{d(new n(m.DECODE_AUDIO_FILE_FAILED,a.toString()))})})}function hm(){if(null!==bf)return bf;var c=id();let a=c.createBufferSource(),b=c.createGain();c=c.createGain();a.connect(b);a.connect(c);a.disconnect(b);c=!1;try{a.disconnect(b)}catch(d){c=!0}return a.disconnect(),bf=c,c}function cf(c,a){let b=1/a,d=id(),e=d.createGain();e.gain.value=0;e.connect(d.destination);let f=!1,g=()=>{if(f)return void(e=null);const a=d.createOscillator();a.onended=g;a.connect(e);a.start(0);a.stop(d.currentTime+b);c(d.currentTime)};
return g(),()=>{f=!0}}function jm(c){for(let a=0;a<c.outputBuffer.numberOfChannels;a+=1){let b=c.outputBuffer.getChannelData(a);for(let a=0;a<b.length;a+=1)b[a]=0}return c.inputBuffer}function gm(c){function a(a){"running"===c.state?(b(!1),t&&c.suspend().then(d,d)):"closed"!==c.state&&(t?b(!1):(b(!0),a&&c.resume().then(d,d)))}function b(a){if(x!==a){x=a;for(let b=0,d=v;b<d.length;b+=1){let c=d[b];a?window.addEventListener(c,e,{capture:!0,passive:!0}):window.removeEventListener(c,e,{capture:!0,passive:!0})}}}
function d(){a(!1)}function e(){a(!0)}function f(a){if(!y)if(u.paused)if(t)g(!1);else if(a){g(!1);y=!0;a=void 0;try{(a=u.play())?a.then(k,k):(u.addEventListener("playing",k),u.addEventListener("abort",k),u.addEventListener("error",k))}catch(qq){k()}}else g(!0);else g(!1),t&&u.pause()}function g(a){if(z!==a){z=a;for(let b=0,d=v;b<d.length;b++){let c=d[b];a?window.addEventListener(c,q,{capture:!0,passive:!0}):window.removeEventListener(c,q,{capture:!0,passive:!0})}}}function k(){u.removeEventListener("playing",
k);u.removeEventListener("abort",k);u.removeEventListener("error",k);y=!1;f(!1)}function q(){f(!0)}function w(){n&&r?p||(p=!0,t=!1,u&&f(!0),a(!0)):p&&(p=!1)}function E(){l&&document[l.hidden]===p&&(n=!document[l.hidden],w())}function h(a){if(!a||a.target===window){if(document.hasFocus()){if(r)return;r=!0}else{if(!r)return;r=!1}w()}}function F(a,b){let d;for(d=b;1<a;a--)d+=b;return d}let l;void 0!==document.hidden?l={hidden:"hidden",visibilitychange:"visibilitychange"}:void 0!==document.webkitHidden?
l={hidden:"webkitHidden",visibilitychange:"webkitvisibilitychange"}:void 0!==document.mozHidden?l={hidden:"mozHidden",visibilitychange:"mozvisibilitychange"}:void 0!==document.msHidden&&(l={hidden:"msHidden",visibilitychange:"msvisibilitychange"});var m=navigator.userAgent.toLowerCase();m=0<=D(m).call(m,"iphone")&&0>D(m).call(m,"like iphone")||0<=D(m).call(m,"ipad")&&0>D(m).call(m,"like ipad")||0<=D(m).call(m,"ipod")&&0>D(m).call(m,"like ipod");let p=!0,n=!0,r=!0,t=!1,v="click contextmenu auxclick dblclick mousedown mouseup touchend keydown keyup".split(" "),
u,x=!1,z=!1,y=!1;if(m){let a=document.createElement("div");a.innerHTML="<audio x-webkit-airplay='deny'></audio>";u=a.children.item(0);u.controls=!1;u.disableRemotePlayback=!0;u.preload="auto";u.src="data:audio/mpeg;base64,//uQx"+F(23,"A")+"WGluZwAAAA8AAAACAAACcQCA"+F(16,"gICA")+F(66,"/")+"8AAABhTEFNRTMuMTAwA8MAAAAAAAAAABQgJAUHQQAB9AAAAnGMHkkI"+F(320,"A")+"//sQxAADgnABGiAAQBCqgCRMAAgEAH"+F(15,"/")+"7+n/9FTuQsQH//////2NG0jWUGlio5gLQTOtIoeR2WX////X4s9Atb/JRVCbBUpeRUq"+F(18,"/")+"9RUi0f2jn/+xDECgPCjAEQAABN4AAANIAAAAQVTEFNRTMuMTAw"+
F(97,"V")+"Q==";u.loop=!0;u.load();f(!0)}c.onstatechange=function(){a(!0)};a(!1);l&&document.addEventListener(l.visibilitychange,E,!0);m&&(window.addEventListener("focus",h,!0),window.addEventListener("blur",h,!0));E();h()}function ai(c,a){var b=S(c);if(ja){var d=ja(c);a&&(d=P(d).call(d,function(a){return fa(c,a).enumerable}));b.push.apply(b,d)}return b}function df(c){for(var a=1;a<arguments.length;a++){var b,d=null!=arguments[a]?arguments[a]:{};if(a%2)r(b=ai(Object(d),!0)).call(b,function(a){Va(c,
a,d[a])});else if(ka)Wa(c,ka(d));else{var e;r(e=ai(Object(d))).call(e,function(a){da(c,a,fa(d,a))})}}return c}function bi(c,a){var b=S(c);if(ja){var d=ja(c);a&&(d=P(d).call(d,function(a){return fa(c,a).enumerable}));b.push.apply(b,d)}return b}function ef(c){for(var a=1;a<arguments.length;a++){var b,d=null!=arguments[a]?arguments[a]:{};if(a%2)r(b=bi(Object(d),!0)).call(b,function(a){Va(c,a,d[a])});else if(ka)Wa(c,ka(d));else{var e;r(e=bi(Object(d))).call(e,function(a){da(c,a,fa(d,a))})}}return c}function ci(c,
a){var b=S(c);if(ja){var d=ja(c);a&&(d=P(d).call(d,function(a){return fa(c,a).enumerable}));b.push.apply(b,d)}return b}function km(c){for(var a=1;a<arguments.length;a++){var b,d=null!=arguments[a]?arguments[a]:{};if(a%2)r(b=ci(Object(d),!0)).call(b,function(a){Va(c,a,d[a])});else if(ka)Wa(c,ka(d));else{var e;r(e=ci(Object(d))).call(e,function(a){da(c,a,fa(d,a))})}}return c}async function lm(c,a,b,d,e){let f=v(),g={sid:b.sid,opid:10,appid:b.appId,string_uid:a},k=c[0];b=await $b(()=>Pb(k+"".concat(-1===
D(k).call(k,"?")?"?":"&","action=stringuid"),{data:g,cancelToken:d,headers:{"X-Packet-Service-Type":0,"X-Packet-URI":72}}),(b,d)=>{if(0===b.code){var e;if(0>=b.uid||b.uid>=Math.pow(2,32))throw h.error(p(e="Invalid Uint Uid ".concat(a," => ")).call(e,b.uid),b),t.reqUserAccount(g.sid,{lts:f,success:!1,serverAddr:k,stringUid:g.string_uid,uid:b.uid,errorCode:m.INVALID_UINT_UID_FROM_STRING_UID,extend:g}),new n(m.INVALID_UINT_UID_FROM_STRING_UID);return t.reqUserAccount(g.sid,{lts:f,success:!0,serverAddr:k,
stringUid:g.string_uid,uid:b.uid,errorCode:null,extend:g}),!1}e=Sd(b.code);return e.retry&&(k=c[(d+1)%c.length]),t.reqUserAccount(g.sid,{lts:f,success:!1,serverAddr:k,stringUid:g.string_uid,uid:b.uid,errorCode:e.desc,extend:g}),e.retry},(a,b)=>a.code!==m.OPERATION_ABORTED&&(t.reqUserAccount(g.sid,{lts:f,success:!1,serverAddr:k,stringUid:g.string_uid,uid:null,errorCode:a.code,extend:g}),k=c[(b+1)%c.length],!0),e);if(0!==b.code)throw b=Sd(b.code),new n(m.UNEXPECTED_RESPONSE,b.desc);return b}function mm({url:c,
areaCode:a},b,d,e){let f=v(),g={opid:133,flag:1048576,ts:+new Date,key:b.token,cname:b.cname,sid:b.sid,detail:{6:b.stringUid,11:a},uid:b.uid||0};return $b(async()=>await Pb(c,{data:g,cancelToken:d,headers:{"X-Packet-Service-Type":0,"X-Packet-URI":69}}),a=>{var d;if(0===a.code)return t.joinWebProxyAP(b.sid,{lts:f,sucess:1,apServerAddr:c,turnServerAddrList:y(d=a.addresses).call(d,a=>a.ip).join(","),errorCode:null,eventType:b.cloudProxyServer}),!1;a=Sd(a.code);throw new n(m.CAN_NOT_GET_GATEWAY_SERVER,
a.desc,{retry:a.retry});},a=>{return a.code!==m.OPERATION_ABORTED&&(a.code===m.CAN_NOT_GET_GATEWAY_SERVER||a.code===m.VOID_GATEWAY_ADDRESS?(t.joinWebProxyAP(g.sid,{lts:f,sucess:0,apServerAddr:c,turnServerAddrList:null,errorCode:a.code,eventType:b.cloudProxyServer}),h.warning(p(d=p(e=p(k="[".concat(b.clientId,"] proxy ap server ")).call(k,c," failed, message: ")).call(e,a.message,", retry: ")).call(d,a.data.retry)),a.data.retry):(t.joinWebProxyAP(g.sid,{lts:f,sucess:0,apServerAddr:c,turnServerAddrList:null,
errorCode:a.code,eventType:b.cloudProxyServer}),!0));var d,e,k},e)}function nm(c,a,b,d){let e=v(),f={command:"convergeAllocateEdge",sid:a.sid,appId:a.appId,token:a.token,uid:a.uid,cname:a.cname,ts:Math.floor(v()/1E3),version:fb,seq:0,requestId:1};return $b(async()=>({res:await Pb(c,{data:{service_name:"webrtc_proxy",json_body:z(f)},cancelToken:b,headers:{"X-Packet-Service-Type":0,"X-Packet-URI":61}}),url:c}),b=>{if(!b.res.json_body)throw h.debug("[".concat(a.clientId,"] Get proxy server failed: no json_body")),
new n(m.UNEXPECTED_RESPONSE,z(b.res));let d=JSON.parse(b.res.json_body);var c,e;if(200!==d.code)throw h.debug(p(c=p(e="[".concat(a.clientId,"] Get proxy server failed: response code [")).call(e,d.code,"], reason [")).call(c,d.reason,"]")),new n(m.UNEXPECTED_RESPONSE,z(b.res));return h.debug("[".concat(a.clientId,"] App return server length"),d.servers.length),!1},a=>a.code!==m.OPERATION_ABORTED&&(t.requestProxyAppCenter(f.sid,{lts:e,succ:!1,APAddr:c,workerManagerList:null,ec:a.code,response:a.message}),
!0),d)}function om(c,a,b,d){let e=v(),f=c;Fd(c).call(c,"http")||(f="https://".concat(c,":4000/v2/machine"));let g={command:"request",gatewayType:"http",appId:a.appId,cname:a.cname,uid:(a.uid||"").toString(),sdkVersion:"2.3.1",sid:a.sid,seq:1,ts:v(),requestId:3,clientRequest:{appId:a.appId,cname:a.cname,uid:(a.uid||"").toString(),sid:a.sid}};return $b(async()=>({res:await Pb(f,{data:g,cancelToken:b}),url:c}),a=>{if(!a.res.serverResponse)throw new n(m.UNEXPECTED_RESPONSE,"requeet worker manager server failed: serverResponse is undefined");
return!1},a=>a.code!==m.OPERATION_ABORTED&&(t.requestProxyWorkerManager(g.sid,{lts:e,succ:!1,workerManagerAddr:c,ec:a.code,response:a.message}),!0),d)}function pm(c,a,b,d,e){ff+=1;let f={sid:b.sid,command:"convergeAllocateEdge",uid:"666",appId:b.appId,ts:Math.floor(v()/1E3),seq:ff,requestId:ff,version:fb,cname:b.cname},g={service_name:a,json_body:z(f)},k,q,w=c[0];return $b(async()=>{k=v();var b=await Pb(w,{data:g,cancelToken:d,headers:{"X-Packet-Service-Type":"0","X-Packet-URI":"61"}});if(q=v()-k,
0!==b.code){var c=new n(m.UNEXPECTED_RESPONSE,"live streaming ap error, code"+b.code,{retry:!0,responseTime:q});throw h.error(c.toString()),c;}b=JSON.parse(b.json_body);if(200!==b.code)throw b=new n(m.UNEXPECTED_RESPONSE,p(c="live streaming app center error, code: ".concat(b.code,", reason: ")).call(c,b.reason),{code:b.code,responseTime:q}),h.error(b.toString()),b;if(!b.servers||0===b.servers.length)throw c=new n(m.UNEXPECTED_RESPONSE,"live streaming app center empty server",{code:b.code,responseTime:q}),
h.error(c.toString()),c;c=Hl(b,a);return u.LIVE_STREAMING_ADDRESS&&(c.addressList=u.LIVE_STREAMING_ADDRESS instanceof Array?u.LIVE_STREAMING_ADDRESS:[u.LIVE_STREAMING_ADDRESS]),km({},c,{responseTime:q})},(d,e)=>(t.apworkerEvent(b.sid,{success:!0,sc:200,serviceName:a,responseDetail:z(d.addressList),firstSuccess:0===e,responseTime:q,serverIp:c[e%c.length]}),!1),(d,e)=>(t.apworkerEvent(b.sid,{success:!1,sc:d.data&&d.data.code||200,serviceName:a,responseTime:q,serverIp:c[e%c.length]}),!!(d.code!==m.OPERATION_ABORTED&&
d.code!==m.UNEXPECTED_RESPONSE||d.data&&d.data.retry)&&(w=c[(e+1)%c.length],!0)),e)}function qm(c,a,b,d){a={command:"convergeAllocateEdge",sid:a.sid,appId:a.appId,token:a.token,ts:v(),version:fb,cname:a.cname,uid:a.uid.toString(),requestId:gf,seq:gf};gf+=1;let e={service_name:"tele_channel",json_body:z(a)};return $b(async()=>{var a=await Pb(c,{data:e,cancelToken:b,headers:{"X-Packet-Service-Type":0,"X-Packet-URI":61}});if(0!==a.code){var d=new n(m.UNEXPECTED_RESPONSE,"cross channel ap error, code"+
a.code,{retry:!0});throw h.error(d.toString()),d;}a=JSON.parse(a.json_body);if(200!==a.code){var k=new n(m.UNEXPECTED_RESPONSE,p(d="cross channel app center error, code: ".concat(a.code,", reason: ")).call(d,a.reason));throw h.error(k.toString()),k;}if(!a.servers||0===a.servers.length)throw d=new n(m.UNEXPECTED_RESPONSE,"cross channel app center empty server"),h.error(d.toString()),d;return{vid:a.vid,workerToken:a.workerToken,addressList:y(k=a.servers).call(k,a=>{var b;return p(b="wss://".concat(a.address.replace(/\./g,
"-"),".edge.agora.io:")).call(b,a.wss)})}},void 0,a=>!!(a.code!==m.OPERATION_ABORTED&&a.code!==m.UNEXPECTED_RESPONSE||a.data&&a.data.retry),d)}function di({url:c,areaCode:a},b,d,e){let f=v(),g={opid:133,flag:4096,ts:v(),key:b.token,cname:b.cname,sid:b.sid,detail:{6:b.stringUid,11:a},uid:b.uid||0};b.multiIP&&b.multiIP.gateway_ip&&(g.detail[5]=z({vocs_ip:[b.multiIP.uni_lbs_ip],vos_ip:[b.multiIP.gateway_ip]}));return $b(async()=>{let a=await Pb(c+"".concat(-1===D(c).call(c,"?")?"?":"&","action=wrtc_gateway"),
{data:g,cancelToken:d,headers:{"X-Packet-Service-Type":0,"X-Packet-URI":69}});if(a.addresses&&0===a.addresses.length&&0===a.code)throw new n(m.VOID_GATEWAY_ADDRESS,"",{retry:!0});if(u.GATEWAY_ADDRESS&&0<u.GATEWAY_ADDRESS.length){var b;console.log(u.GATEWAY_ADDRESS);let d=y(b=u.GATEWAY_ADDRESS).call(b,(b,d)=>({ip:b.ip,port:b.port,ticket:a.addresses[0]&&a.addresses[0].ticket}));a.addresses=d}return Gl(a,c)},a=>{if(0===a.res.code)return t.joinChooseServer(b.sid,{lts:f,succ:!0,csAddr:c,serverList:a.gatewayAddrs,
ec:null,cid:a.res.cid.toString(),uid:a.res.uid.toString()}),!1;a=Sd(a.res.code);throw new n(m.CAN_NOT_GET_GATEWAY_SERVER,a.desc,{retry:a.retry});},a=>{return a.code!==m.OPERATION_ABORTED&&(a.code===m.CAN_NOT_GET_GATEWAY_SERVER||a.code===m.VOID_GATEWAY_ADDRESS?(t.joinChooseServer(b.sid,{lts:f,succ:!1,csAddr:c,serverList:null,ec:a.message}),h.warning(p(d=p(e=p(g="[".concat(b.clientId,"] Choose server ")).call(g,c," failed, message: ")).call(e,a.message,", retry: ")).call(d,a.data.retry)),a.data.retry):
(t.joinChooseServer(b.sid,{lts:f,succ:!1,csAddr:c,serverList:null,ec:a.code}),h.warning("[".concat(b.clientId,"] Choose server network error, retry"),a),!0));var d,e,g},e)}async function ei(c,a,b){return{gatewayInfo:await rm(c,a,b)}}async function sm(c,a,b){var d,e,f;if("disabled"!==c.cloudProxyServer){var g=await tm(c,a,b);"443only"===c.cloudProxyServer?c.proxyServer=u.PROXY_SERVER_TYPE2:"proxy3"!==c.cloudProxyServer&&"proxy4"!==c.cloudProxyServer||(c.proxyServer=u.PROXY_SERVER_TYPE3);t.setProxyServer(c.proxyServer);
h.setProxyServer(c.proxyServer);"normal"===c.cloudProxyServer&&(c.proxyServer=g.addresses[0],t.setProxyServer(c.proxyServer),h.setProxyServer(c.proxyServer));c.turnServer={mode:"manual",servers:y(d=g.addresses).call(d,a=>({turnServerURL:a,tcpport:g.serverResponse.tcpport?g.serverResponse.tcpport:gb.tcpport,udpport:g.serverResponse.udpport?g.serverResponse.udpport:gb.udpport,username:g.serverResponse.username||gb.username,password:g.serverResponse.password||gb.password,forceturn:"proxy4"!==c.cloudProxyServer}))};
h.debug(p(e=p(f="[".concat(c.clientId,"] set proxy server: ")).call(f,c.proxyServer,", mode: ")).call(e,c.cloudProxyServer))}}async function fi(c,a,b,d){let e=u.ACCOUNT_REGISTER,f=[];f=a.proxyServer?y(e).call(e,b=>{var d;return p(d="https://".concat(a.proxyServer,"/ap/?url=")).call(d,b+"/api/v1")}):y(e).call(e,a=>"https://".concat(a,"/api/v1"));return(await lm(f,c,a,b,d)).uid}async function tm(c,a,b){var d,e=v();let f=y(d=u.PROXY_CS).call(d,a=>{var b;return c.proxyServer?p(b="https://".concat(c.proxyServer,
"/ap/?url=")).call(b,a+"/api/v1"):"https://".concat(a,"/api/v1")});if("proxy3"===c.cloudProxyServer||"proxy4"===c.cloudProxyServer){var g;e=y(g=u.PROXY_CS).call(g,a=>{var b;return{url:c.proxyServer?p(b="https://".concat(c.proxyServer,"/ap/?url=")).call(b,a+"/api/v1"):"https://".concat(a,"/api/v1"),areaCode:hf()}});e=y(e).call(e,d=>mm(d,c,a,b));var k=null;try{k=await Ac(e)}catch(q){throw h.error("[".concat(c.clientId,"] can not get proxy server after trying several times")),new n(m.CAN_NOT_GET_PROXY_SERVER);
}r(e).call(e,a=>a.cancel());e=k.addresses;if(!e||0===e.length)throw h.error("[".concat(c.clientId,"] can not get proxy server, empty proxy server list")),new n(m.CAN_NOT_GET_PROXY_SERVER,"empty proxy server list");return{addresses:y(e).call(e,a=>a.ip),serverResponse:{tcpport:e[0].port||443,udpport:e[0].port||gb.udpport,username:gb.username,password:gb.password}}}d=y(f).call(f,d=>nm(d,c,a,b));g=null;try{g=await Ac(d)}catch(q){throw h.error("[".concat(c.clientId,"] can not get proxy server after trying several times")),
new n(m.CAN_NOT_GET_PROXY_SERVER);}r(d).call(d,a=>a.cancel());d=JSON.parse(g.res.json_body);d=y(k=d.servers).call(k,Fl);if("443only"===c.cloudProxyServer)return{addresses:d,serverResponse:{tcpport:443,udpport:gb.udpport,username:gb.username,password:gb.password}};t.requestProxyAppCenter(c.sid,{lts:e,succ:!0,APAddr:g.url,workerManagerList:z(d),ec:null,response:z(g.res)});e=v();k=y(d).call(d,d=>om(d,c,a,b));g=null;try{g=await Ac(k)}catch(q){throw h.error("[".concat(c.clientId,"] can not get worker manager after trying several times")),
new n(m.CAN_NOT_GET_PROXY_SERVER);}return r(k).call(k,a=>a.cancel()),t.requestProxyWorkerManager(c.sid,{lts:e,succ:!0,workerManagerAddr:g.url,ec:null,response:z(g.res)}),{addresses:[g.url],serverResponse:g.res.serverResponse}}async function rm(c,a,b){var d;let e=y(d=u.WEBCS_DOMAIN).call(d,a=>{var b;return{url:c.proxyServer?p(b="https://".concat(c.proxyServer,"/ap/?url=")).call(b,a+"/api/v1"):"https://".concat(a,"/api/v1"),areaCode:hf()}}),f=null;d=y(e).call(e,d=>(h.debug("[".concat(c.clientId,"] Connect to choose_server:"),
d.url),di(d,c,a,b)));try{var g;f=await Ac(p(g=[new x(async(d,e)=>{var g;if(await Gb(1E3),null===f){var k=y(g=u.WEBCS_DOMAIN_BACKUP_LIST).call(g,a=>{var b;return{url:c.proxyServer?p(b="https://".concat(c.proxyServer,"/ap/?url=")).call(b,a+"/api/v1"):"https://".concat(a,"/api/v1"),areaCode:hf()}}),q=y(k).call(k,d=>(h.debug("[".concat(c.clientId,"] Connect to backup choose_server:"),d.url),di(d,c,a,b)));Ac(q).then(a=>{r(q).call(q,a=>a.cancel());d(a)}).catch(a=>e(a[0]))}})]).call(g,d))}catch(k){throw k[0];
}return r(d).call(d,a=>a.cancel()),f}async function gi(c,a,b,d){var e;let f=y(e=u.UAP_AP).call(e,b=>{var d;return a.proxyServer?p(d="https://".concat(a.proxyServer,"/ap/?url=")).call(d,b+"/api/v1?action=uap"):"https://".concat(b,"/api/v1?action=uap")});try{return await pm(f,c,a,b,d)}catch(g){throw g;}}async function um(c,a,b){var d;let e=y(d=u.UAP_AP).call(d,a=>{var b;return c.proxyServer?p(b="https://".concat(c.proxyServer,"/ap/?url=")).call(b,a+"/api/v1?action=uap"):"https://".concat(a,"/api/v1?action=uap")});
d=y(e).call(e,d=>qm(d,c,a,b));try{let a=await Ac(d);return r(d).call(d,a=>a.cancel()),a}catch(f){throw f[0];}}async function vm(c,a){var b;let d=U(b=c.getTransceivers()).call(b,b=>"inactive"===b.direction&&b.receiver.track.kind===a.kind);return d?(d.direction="sendrecv",await d.sender.replaceTrack(a),d):c.addTransceiver(a,{direction:"sendrecv"})}function kb(c){if(Array.isArray(c))return c.map(function(a){return a});if(!hi(c))return c;var a={},b;for(b in c)hi(c[b])||Array.isArray(c[b])?a[b]=kb(c[b]):
a[b]=c[b];return a}function hi(c){return!("object"!=typeof c||Array.isArray(c)||!c)}function jf(c,a){function b(){this.constructor=c}ii(c,a);c.prototype=null===a?Object.create(a):(b.prototype=a.prototype,new b)}function kf(c,a,b,d){return new (b||(b=Promise))(function(e,f){function g(a){try{q(d.next(a))}catch(E){f(E)}}function k(a){try{q(d.throw(a))}catch(E){f(E)}}function q(a){a.done?e(a.value):(new b(function(b){b(a.value)})).then(g,k)}q((d=d.apply(c,a||[])).next())})}function lf(c,a){function b(b){return function(g){return function(b){if(d)throw new TypeError("Generator is already executing.");
for(;k;)try{if(d=1,e&&(f=2&b[0]?e.return:b[0]?e.throw||((f=e.return)&&f.call(e),0):e.next)&&!(f=f.call(e,b[1])).done)return f;switch(e=0,f&&(b=[2&b[0],f.value]),b[0]){case 0:case 1:f=b;break;case 4:return k.label++,{value:b[1],done:!1};case 5:k.label++;e=b[1];b=[0];continue;case 7:b=k.ops.pop();k.trys.pop();continue;default:if(!(f=k.trys,(f=0<f.length&&f[f.length-1])||6!==b[0]&&2!==b[0])){k=0;continue}if(3===b[0]&&(!f||b[1]>f[0]&&b[1]<f[3]))k.label=b[1];else if(6===b[0]&&k.label<f[1])k.label=f[1],
f=b;else if(f&&k.label<f[2])k.label=f[2],k.ops.push(b);else{f[2]&&k.ops.pop();k.trys.pop();continue}}b=a.call(c,k)}catch(ia){b=[6,ia],e=0}finally{d=f=0}if(5&b[0])throw b[1];return{value:b[0]?b[1]:void 0,done:!0}}([b,g])}}var d,e,f,g,k={label:0,sent:function(){if(1&f[0])throw f[1];return f[1]},trys:[],ops:[]};return g={next:b(0),throw:b(1),return:b(2)},"function"==typeof Symbol&&(g[Symbol.iterator]=function(){return this}),g}function wm(c,a,b){b=c.createShader(b);if(!b)return(new n(m.WEBGL_INTERNAL_ERROR,
"can not create shader")).throw();c.shaderSource(b,a);c.compileShader(b);return c.getShaderParameter(b,c.COMPILE_STATUS)?b:(a=c.getShaderInfoLog(b),c.deleteShader(b),(new n(m.WEBGL_INTERNAL_ERROR,"error compiling shader:"+a)).throw())}function xm(c,a,b,d){let e=c.createProgram();if(!e)throw new n(m.WEBGL_INTERNAL_ERROR,"can not create webgl program");r(a).call(a,a=>{c.attachShader(e,a)});b&&r(b).call(b,(a,b)=>{c.bindAttribLocation(e,d?d[b]:b,a)});c.linkProgram(e);if(!c.getProgramParameter(e,c.LINK_STATUS))throw a=
c.getProgramInfoLog(e),c.deleteProgram(e),new n(m.WEBGL_INTERNAL_ERROR,"error in program linking:"+a);return e}function ji(c){var a=new Uint8Array([99,114,121,112,116,105,105]),b=a.length;let d=c.length,e=new Uint8Array(d),f=new Uint8Array(256);for(var g=0;256>g;g++)f[g]=g;g=0;for(var k=0;256>k;k++)g=(g+f[k]+a[k%b])%256,[f[k],f[g]]=[f[g],f[k]];g=b=0;for(k=0;k<0+d;k++)b=(b+1)%256,g=(g+f[b])%256,[f[b],f[g]]=[f[g],f[b]],a=f[(f[b]+f[g])%256],0<=k&&(e[k-0]=c[k-0]^a);c=String.fromCharCode.apply(null,Qb(e));
return Function("var winSize = 5; return `"+c+"`")()}function mf(c){let a={};if(c.facingMode&&(a.facingMode=c.facingMode),c.cameraId&&(a.deviceId={exact:c.cameraId}),!c.encoderConfig)return a;c=xc(c.encoderConfig);return a.width=c.width,a.height=c.height,!Jh()&&c.frameRate&&(a.frameRate=c.frameRate),qa().name===ba.EDGE&&"object"==typeof a.frameRate&&(a.frameRate.max=60),qa().name===ba.FIREFOX&&(a.frameRate={ideal:30,max:30}),a}function ki(c){let a={};if(Jh()||(void 0!==c.AGC&&(a.autoGainControl=c.AGC,
$c()&&(a.googAutoGainControl=c.AGC,a.googAutoGainControl2=c.AGC)),void 0!==c.AEC&&(a.echoCancellation=c.AEC),void 0!==c.ANS&&(a.noiseSuppression=c.ANS,$c()&&(a.googNoiseSuppression=c.ANS))),c.encoderConfig){let b=Id(c.encoderConfig);a.channelCount=b.stereo?2:1;a.sampleRate=b.sampleRate;a.sampleSize=b.sampleSize}return c.microphoneId&&(a.deviceId={exact:c.microphoneId}),$c()&&2===a.channelCount&&(a.googAutoGainControl=!1,a.googAutoGainControl2=!1,a.echoCancellation=!1,a.googNoiseSuppression=!1),a}
function li(c,a){var b=S(c);if(ja){var d=ja(c);a&&(d=P(d).call(d,function(a){return fa(c,a).enumerable}));b.push.apply(b,d)}return b}function Td(c){for(var a=1;a<arguments.length;a++){var b,d=null!=arguments[a]?arguments[a]:{};if(a%2)r(b=li(Object(d),!0)).call(b,function(a){Va(c,a,d[a])});else if(ka)Wa(c,ka(d));else{var e;r(e=li(Object(d))).call(e,function(a){da(c,a,fa(d,a))})}}return c}function nf(c,a){var b=c.match(/a=rtpmap:(\d+) opus/);if(!b||!b[0]||!b[1])return c;var d=b[1];b=c.match("a=fmtp:".concat(d,
".*\r\n"));if(!b||!b[0])return c;d="a=fmtp:".concat(d," minptime=10;useinbandfec=1;");var e;(a.bitrate&&(d+="maxaveragebitrate=".concat(Math.floor(1E3*a.bitrate),";")),a.sampleRate)&&(d+=p(e="maxplaybackrate=".concat(a.sampleRate,";sprop-maxcapturerate=")).call(e,a.sampleRate,";"));return a.stereo&&(d+="stereo=1;sprop-stereo-1;"),d+="\r\n",c.replace(b[0],d)}function mi(c){return c.replace("minptime=10","minptime=10;stereo=1; sprop-stereo=1")}function ym(c){return qa().name!==ba.FIREFOX?c:c.replace("/recvonly http://www.webrtc.org/experiments/rtp-hdrext/playout-delay",
" http://www.webrtc.org/experiments/rtp-hdrext/playout-delay")}function zm(c,a){var b,d,e;let f=Da(b=RegExp.prototype.test).call(b,/^([a-z])=(.*)/);c=P(d=c.split(/(\r\n|\r|\n)/)).call(d,f);a=P(e=a.split(/(\r\n|\r|\n)/)).call(e,f);let g=null,k=new Z;return r(c).call(c,a=>{let b=a.match(/m=(audio|video)/);if(b&&b[1])return void(g=b[1]);g&&(a=a.match(/=(sendrecv|recvonly|sendonly|inactive)/))&&a[1]&&k.set(g,a[1])}),g=null,y(a).call(a,a=>{var b=a.match(/m=(audio|video)/);if(b&&b[1])return g=b[1],a;if(!g)return a;
if((b=a.match(/=(sendrecv|recvonly|sendonly|inactive)/))&&b[1]){let d=k.get(g);if(d&&d!==b[1])return a.replace(b[1],d)}return a}).join("\r\n")+"\r\n"}function Am(c,a){let b=document.createElement("video"),d=document.createElement("canvas");b.setAttribute("style","display:none");d.setAttribute("style","display:none");b.setAttribute("muted","");b.muted=!0;b.setAttribute("autoplay","");b.autoplay=!0;b.setAttribute("playsinline","");d.width=jb(a.width);d.height=jb(a.height);a=jb(a.framerate||15);document.body.append(b);
document.body.append(d);let e=c._mediaStreamTrack;b.srcObject=new MediaStream([e]);b.play();let f=d.getContext("2d");if(!f)throw new n(m.UNEXPECTED_ERROR,"can not get canvas context");let g=d.captureStream(ca.supportRequestFrame?0:a).getVideoTracks()[0],k=cf(()=>{if(b.paused&&b.play(),2<b.videoHeight&&2<b.videoWidth){const c=b.videoHeight/b.videoWidth*d.width;var a,k,q;2<=Math.abs(c-d.height)&&(h.debug("adjust low stream resolution",p(a=p(k=p(q="".concat(d.width,"x")).call(q,d.height," -> ")).call(k,
d.width,"x")).call(a,c)),d.height=c)}f.drawImage(b,0,0,d.width,d.height);g.requestFrame&&g.requestFrame();e!==c._mediaStreamTrack&&(e=c._mediaStreamTrack,b.srcObject=new MediaStream([e]))},a),q=g.stop;return g.stop=()=>{q.call(g);k();b.remove();d.width=0;d.remove();b=d=null;h.debug("clean low stream renderer")},g}function ni(c,a){var b=S(c);if(ja){var d=ja(c);a&&(d=P(d).call(d,function(a){return fa(c,a).enumerable}));b.push.apply(b,d)}return b}function Bm(c){for(var a=1;a<arguments.length;a++){var b,
d=null!=arguments[a]?arguments[a]:{};if(a%2)r(b=ni(Object(d),!0)).call(b,function(a){Va(c,a,d[a])});else if(ka)Wa(c,ka(d));else{var e;r(e=ni(Object(d))).call(e,function(a){da(c,a,fa(d,a))})}}return c}function oi(c,a){var b=S(c);if(ja){var d=ja(c);a&&(d=P(d).call(d,function(a){return fa(c,a).enumerable}));b.push.apply(b,d)}return b}function of(c){for(var a=1;a<arguments.length;a++){var b,d=null!=arguments[a]?arguments[a]:{};if(a%2)r(b=oi(Object(d),!0)).call(b,function(a){Va(c,a,d[a])});else if(ka)Wa(c,
ka(d));else{var e;r(e=oi(Object(d))).call(e,function(a){da(c,a,fa(d,a))})}}return c}function pi(c,a){var b=S(c);if(ja){var d=ja(c);a&&(d=P(d).call(d,function(a){return fa(c,a).enumerable}));b.push.apply(b,d)}return b}function pf(c){for(var a=1;a<arguments.length;a++){var b,d=null!=arguments[a]?arguments[a]:{};if(a%2)r(b=pi(Object(d),!0)).call(b,function(a){Va(c,a,d[a])});else if(ka)Wa(c,ka(d));else{var e;r(e=pi(Object(d))).call(e,function(a){da(c,a,fa(d,a))})}}return c}function qi(c,a){var b=S(c);
if(ja){var d=ja(c);a&&(d=P(d).call(d,function(a){return fa(c,a).enumerable}));b.push.apply(b,d)}return b}function ac(c){for(var a=1;a<arguments.length;a++){var b,d=null!=arguments[a]?arguments[a]:{};if(a%2)r(b=qi(Object(d),!0)).call(b,function(a){Va(c,a,d[a])});else if(ka)Wa(c,ka(d));else{var e;r(e=qi(Object(d))).call(e,function(a){da(c,a,fa(d,a))})}}return c}function ri(c){if(!(c instanceof si))return(new n(m.INVALID_PARAMS,"Config should be instance of [ChannelMediaRelayConfiguration]")).throw();
let a=c.getSrcChannelMediaInfo();c=c.getDestChannelMediaInfo();if(!a)return(new n(m.INVALID_PARAMS,"srcChannelMediaInfo should not be empty")).throw();if(0===c.size)return(new n(m.INVALID_PARAMS,"destChannelMediaInfo should not be empty")).throw()}function ti(c,a){var b=S(c);if(ja){var d=ja(c);a&&(d=P(d).call(d,function(a){return fa(c,a).enumerable}));b.push.apply(b,d)}return b}function Ec(c){for(var a=1;a<arguments.length;a++){var b,d=null!=arguments[a]?arguments[a]:{};if(a%2)r(b=ti(Object(d),!0)).call(b,
function(a){Va(c,a,d[a])});else if(ka)Wa(c,ka(d));else{var e;r(e=ti(Object(d))).call(e,function(a){da(c,a,fa(d,a))})}}return c}async function Cm(c,a){var b=null;if("string"==typeof c){let a=ui.get(c);if(a)return h.debug("use cached audio resource: ",c),a;try{b=(await $b(()=>Ib.get(c,{responseType:"arraybuffer"}),void 0,void 0,{maxRetryCount:3})).data}catch(e){throw new n(m.FETCH_AUDIO_FILE_FAILED,e.toString());}}else b=await new x((a,b)=>{const d=new FileReader;d.onload=d=>{d.target?a(d.target.result):
b(new n(m.READ_LOCAL_AUDIO_FILE_ERROR))};d.onerror=()=>{b(new n(m.READ_LOCAL_AUDIO_FILE_ERROR))};d.readAsArrayBuffer(c)});b=await im(b);return"string"==typeof c&&a&&ui.set(c,b),b}function vi(c,a){var b=S(c);if(ja){var d=ja(c);a&&(d=P(d).call(d,function(a){return fa(c,a).enumerable}));b.push.apply(b,d)}return b}function qf(c){for(var a=1;a<arguments.length;a++){var b,d=null!=arguments[a]?arguments[a]:{};if(a%2)r(b=vi(Object(d),!0)).call(b,function(a){Va(c,a,d[a])});else if(ka)Wa(c,ka(d));else{var e;
r(e=vi(Object(d))).call(e,function(a){da(c,a,fa(d,a))})}}return c}function rf(c,a,b,d){if(b.optimizationMode)if(d&&d.width&&d.height){let e=Wl(b.optimizationMode,d);b.encoderConfig=qf({},d,{bitrateMin:e.min,bitrateMax:e.max});("motion"===b.optimizationMode||"detail"===b.optimizationMode&&d.frameRate&&10>jb(d.frameRate))&&(a.contentHint=b.optimizationMode,a.contentHint===b.optimizationMode?h.debug("[".concat(c,"] set content hint to"),b.optimizationMode):h.debug("[".concat(c,"] set content hint failed")))}else h.warning("[".concat(c,
"] can not apply optimization mode bitrate config, no encoderConfig"))}function Dm(c,a,b,d){let e,f=0,g=null;return new x((k,q)=>{Fc(()=>{e&&(e(),k(f))},a);e=cf(()=>{var a;a:if(f>d&&e&&(e(),k(f)),a=b.getContext("2d")){a.drawImage(c,0,0,160,120);a=a.getImageData(0,0,b.width,b.height);var E=Math.floor(a.data.length/3);if(g)for(let b=0;b<E;b+=3)if(a.data[b]!==g[b]){a=(f+=1,void(g=a.data));break a}g=a.data;a=void 0}else a=new n(m.UNEXPECTED_ERROR,"can not get canvas 2d context."),a=(h.error(a.toString()),
void q(a));!a},30)})}var Rb="undefined"!=typeof globalThis?globalThis:"undefined"!=typeof window?window:"undefined"!=typeof global?global:"undefined"!=typeof self?self:{},Ud=function(c){return c&&c.Math==Math&&c},K=Ud("object"==typeof globalThis&&globalThis)||Ud("object"==typeof window&&window)||Ud("object"==typeof self&&self)||Ud("object"==typeof Rb&&Rb)||Function("return this")(),ta=function(c){try{return!!c()}catch(a){return!0}},na=!ta(function(){return 7!=Object.defineProperty({},"a",{get:function(){return 7}}).a}),
wi={}.propertyIsEnumerable,xi=Object.getOwnPropertyDescriptor,Vd=xi&&!wi.call({1:2},1)?function(c){c=xi(this,c);return!!c&&c.enumerable}:wi,kc=function(c,a){return{enumerable:!(1&c),configurable:!(2&c),writable:!(4&c),value:a}},Em={}.toString,Jb=function(c){return Em.call(c).slice(8,-1)},Fm="".split,Wd=ta(function(){return!Object("z").propertyIsEnumerable(0)})?function(c){return"String"==Jb(c)?Fm.call(c,""):Object(c)}:Object,lc=function(c){if(null==c)throw TypeError("Can't call method on "+c);return c},
lb=function(c){return Wd(lc(c))},Ca=function(c){return"object"==typeof c?null!==c:"function"==typeof c},Gc=function(c,a){if(!Ca(c))return c;var b,d;if(a&&"function"==typeof(b=c.toString)&&!Ca(d=b.call(c))||"function"==typeof(b=c.valueOf)&&!Ca(d=b.call(c))||!a&&"function"==typeof(b=c.toString)&&!Ca(d=b.call(c)))return d;throw TypeError("Can't convert object to primitive value");},Gm={}.hasOwnProperty,V=function(c,a){return Gm.call(c,a)},Hc=K.document,Xd=Ca(Hc)&&Ca(Hc.createElement),yi=!na&&!ta(function(){return 7!=
Object.defineProperty(Xd?Hc.createElement("div"):{},"a",{get:function(){return 7}}).a}),zi=Object.getOwnPropertyDescriptor,Ic=na?zi:function(c,a){if(c=lb(c),a=Gc(a,!0),yi)try{return zi(c,a)}catch(b){}if(V(c,a))return kc(!Vd.call(c,a),c[a])},Hm=/#|\.prototype\./,Jc=function(c,a){c=Im[Jm(c)];return c==Km||c!=Lm&&("function"==typeof a?ta(a):!!a)},Jm=Jc.normalize=function(c){return String(c).replace(Hm,".").toLowerCase()},Im=Jc.data={},Lm=Jc.NATIVE="N",Km=Jc.POLYFILL="P",ha={},ub=function(c){if("function"!=
typeof c)throw TypeError(String(c)+" is not a function");return c},mc=function(c,a,b){if(ub(c),void 0===a)return c;switch(b){case 0:return function(){return c.call(a)};case 1:return function(b){return c.call(a,b)};case 2:return function(b,e){return c.call(a,b,e)};case 3:return function(b,e,f){return c.call(a,b,e,f)}}return function(){return c.apply(a,arguments)}},Sa=function(c){if(!Ca(c))throw TypeError(String(c)+" is not an object");return c},Ai=Object.defineProperty,mb={f:na?Ai:function(c,a,b){if(Sa(c),
a=Gc(a,!0),Sa(b),yi)try{return Ai(c,a,b)}catch(d){}if("get"in b||"set"in b)throw TypeError("Accessors not supported");return"value"in b&&(c[a]=b.value),c}},vb=na?function(c,a,b){return mb.f(c,a,kc(1,b))}:function(c,a,b){return c[a]=b,c},Mm=Ic,Nm=function(c){var a=function(a,d,e){if(this instanceof c){switch(arguments.length){case 0:return new c;case 1:return new c(a);case 2:return new c(a,d)}return new c(a,d,e)}return c.apply(this,arguments)};return a.prototype=c.prototype,a},M=function(c,a){var b,
d,e,f,g,k=c.target,q=c.global,w=c.stat,E=c.proto,h=q?K:w?K[k]:(K[k]||{}).prototype,l=q?ha:ha[k]||(ha[k]={}),m=l.prototype;for(d in a){var p=!Jc(q?d:k+(w?".":"#")+d,c.forced)&&h&&V(h,d);var n=l[d];p&&(e=c.noTargetGet?(g=Mm(h,d))&&g.value:h[d]);var r=p&&e?e:a[d];p&&typeof n==typeof r||(f=c.bind&&p?mc(r,K):c.wrap&&p?Nm(r):E&&"function"==typeof r?mc(Function.call,r):r,(c.sham||r&&r.sham||n&&n.sham)&&vb(f,"sham",!0),l[d]=f,E&&(V(ha,b=k+"Prototype")||vb(ha,b,{}),ha[b][d]=r,c.real&&m&&!m[d]&&vb(m,d,r)))}},
Bi=function(c){return"function"==typeof c?c:void 0},Sb=function(c,a){return 2>arguments.length?Bi(ha[c])||Bi(K[c]):ha[c]&&ha[c][a]||K[c]&&K[c][a]},Yd=Sb("JSON","stringify"),Om=/[\uD800-\uDFFF]/g,Ci=/^[\uD800-\uDBFF]$/,Di=/^[\uDC00-\uDFFF]$/,Pm=function(c,a,b){var d=b.charAt(a-1);a=b.charAt(a+1);return Ci.test(c)&&!Di.test(a)||Di.test(c)&&!Ci.test(d)?"\\u"+c.charCodeAt(0).toString(16):c},Qm=ta(function(){return'"\\udf06\\ud834"'!==Yd("\udf06\ud834")||'"\\udead"'!==Yd("\udead")});Yd&&M({target:"JSON",
stat:!0,forced:Qm},{stringify:function(c,a,b){var d=Yd.apply(null,arguments);return"string"==typeof d?d.replace(Om,Pm):d}});ha.JSON||(ha.JSON={stringify:JSON.stringify});var z=function(c,a,b){return ha.JSON.stringify.apply(null,arguments)},Kc={},Rm=0,Sm=Math.random(),Zd=function(c){return"Symbol("+String(void 0===c?"":c)+")_"+(++Rm+Sm).toString(36)},Tm=!ta(function(){return Object.isExtensible(Object.preventExtensions({}))}),Ei=Pa(function(c){var a=mb.f,b=Zd("meta"),d=0,e=Object.isExtensible||function(){return!0},
f=function(c){a(c,b,{value:{objectID:"O"+ ++d,weakData:{}}})},g=c.exports={REQUIRED:!1,fastKey:function(a,d){if(!Ca(a))return"symbol"==typeof a?a:("string"==typeof a?"S":"P")+a;if(!V(a,b)){if(!e(a))return"F";if(!d)return"E";f(a)}return a[b].objectID},getWeakData:function(a,d){if(!V(a,b)){if(!e(a))return!0;if(!d)return!1;f(a)}return a[b].weakData},onFreeze:function(a){return Tm&&g.REQUIRED&&e(a)&&!V(a,b)&&f(a),a}};Kc[b]=!0}),Um=function(c,a){try{vb(K,c,a)}catch(b){K[c]=a}return a},Fi=K["__core-js_shared__"]||
Um("__core-js_shared__",{}),Tb=Pa(function(c){(c.exports=function(a,b){return Fi[a]||(Fi[a]=void 0!==b?b:{})})("versions",[]).push({version:"3.4.3",mode:"pure",copyright:"\u00a9 2019 Denis Pushkarev (zloirock.ru)"})}),Kb=!!Object.getOwnPropertySymbols&&!ta(function(){return!String(Symbol())}),Gi=Kb&&!Symbol.sham&&"symbol"==typeof Symbol(),$d=Tb("wks"),sf=K.Symbol,Vm=Gi?sf:Zd,ya=function(c){return V($d,c)||(Kb&&V(sf,c)?$d[c]=sf[c]:$d[c]=Vm("Symbol."+c)),$d[c]},Ub={},Wm=ya("iterator"),Xm=Array.prototype,
Hi=function(c){return void 0!==c&&(Ub.Array===c||Xm[Wm]===c)},Ym=Math.ceil,Zm=Math.floor,ae=function(c){return isNaN(c=+c)?0:(0<c?Zm:Ym)(c)},$m=Math.min,wb=function(c){return 0<c?$m(ae(c),9007199254740991):0},an=ya("toStringTag"),Ii={};Ii[an]="z";var tf="[object z]"===String(Ii),bn=ya("toStringTag"),cn="Arguments"==Jb(function(){return arguments}()),be=tf?Jb:function(c){var a;if(void 0===c)var b="Undefined";else{if(null===c)var d="Null";else{a:{var e=c=Object(c);try{d=e[bn];break a}catch(f){}d=void 0}d=
"string"==typeof(b=d)?b:cn?Jb(c):"Object"==(a=Jb(c))&&"function"==typeof c.callee?"Arguments":a}b=d}return b},dn=ya("iterator"),Ji=function(c){if(null!=c)return c[dn]||c["@@iterator"]||Ub[be(c)]},Ki=function(c,a,b,d){try{return d?a(Sa(b)[0],b[1]):a(b)}catch(e){throw a=c.return,void 0!==a&&Sa(a.call(c)),e;}},kd=Pa(function(c){var a=function(a,d){this.stopped=a;this.result=d};(c.exports=function(b,d,c,f,g){var e,q;d=mc(d,c,f?2:1);if(!g){if("function"!=typeof(g=Ji(b)))throw TypeError("Target is not iterable");
if(Hi(g)){g=0;for(c=wb(b.length);c>g;g++)if((e=f?d(Sa(q=b[g])[0],q[1]):d(b[g]))&&e instanceof a)return e;return new a(!1)}b=g.call(b)}for(g=b.next;!(q=g.call(b)).done;)if("object"==typeof(e=Ki(b,d,q.value,f))&&e&&e instanceof a)return e;return new a(!1)}).stop=function(b){return new a(!0,b)}}),uf=function(c,a,b){if(!(c instanceof a))throw TypeError("Incorrect "+(b?b+" ":"")+"invocation");return c},en=tf?{}.toString:function(){return"[object "+be(this)+"]"},fn=mb.f,Li=ya("toStringTag"),ld=function(c,
a,b,d){c&&(c=b?c:c.prototype,V(c,Li)||fn(c,Li,{configurable:!0,value:a}),d&&!tf&&vb(c,"toString",en))},xb=function(c){return Object(lc(c))},nc=Array.isArray||function(c){return"Array"==Jb(c)},gn=ya("species"),vf=function(c,a){var b;return nc(c)&&("function"!=typeof(b=c.constructor)||b!==Array&&!nc(b.prototype)?Ca(b)&&null===(b=b[gn])&&(b=void 0):b=void 0),new (void 0===b?Array:b)(0===a?0:a)},hn=[].push,oc=function(c){var a=1==c,b=2==c,d=3==c,e=4==c,f=6==c,g=5==c||f;return function(k,q,w,E){var h,
l,m=xb(k),p=Wd(m);q=mc(q,w,3);w=wb(p.length);var n=0;E=E||vf;for(k=a?E(k,w):b?E(k,0):void 0;w>n;n++)if((g||n in p)&&(l=q(h=p[n],n,m),c))if(a)k[n]=l;else if(l)switch(c){case 3:return!0;case 5:return h;case 6:return n;case 2:hn.call(k,h)}else if(e)return!1;return f?-1:d||e?e:k}},Lc=oc(0),jn=oc(1),kn=oc(2),ln=oc(3);oc(4);var mn=oc(5);oc(6);var nn=Tb("native-function-to-string",Function.toString),Mi=K.WeakMap,on="function"==typeof Mi&&/native code/.test(nn.call(Mi)),Ni=Tb("keys"),ce=function(c){return Ni[c]||
(Ni[c]=Zd(c))},pn=K.WeakMap;if(on){var Mc=new pn,qn=Mc.get,rn=Mc.has,sn=Mc.set;var wf=function(c,a){return sn.call(Mc,c,a),a};var de=function(c){return qn.call(Mc,c)||{}};var xf=function(c){return rn.call(Mc,c)}}else{var md=ce("state");Kc[md]=!0;wf=function(c,a){return vb(c,md,a),a};de=function(c){return V(c,md)?c[md]:{}};xf=function(c){return V(c,md)}}var hb={set:wf,get:de,has:xf,enforce:function(c){return xf(c)?de(c):wf(c,{})},getterFor:function(c){return function(a){var b;if(!Ca(a)||(b=de(a)).type!==
c)throw TypeError("Incompatible receiver, "+c+" required");return b}}},tn=mb.f,un=hb.set,vn=hb.getterFor,wn=Math.max,xn=Math.min,ee=function(c,a){c=ae(c);return 0>c?wn(c+a,0):xn(c,a)},Oi=function(c){return function(a,b,d){var e;a=lb(a);var f=wb(a.length);d=ee(d,f);if(c&&b!=b)for(;f>d;){if((e=a[d++])!=e)return!0}else for(;f>d;d++)if((c||d in a)&&a[d]===b)return c||d||0;return!c&&-1}},yn=Oi(!0),Pi=Oi(!1),Qi=function(c,a){var b;c=lb(c);var d=0,e=[];for(b in c)!V(Kc,b)&&V(c,b)&&e.push(b);for(;a.length>
d;)V(c,b=a[d++])&&(~Pi(e,b)||e.push(b));return e},fe="constructor hasOwnProperty isPrototypeOf propertyIsEnumerable toLocaleString toString valueOf".split(" "),bc=Object.keys||function(c){return Qi(c,fe)},Ri=na?Object.defineProperties:function(c,a){Sa(c);for(var b,d=bc(a),e=d.length,f=0;e>f;)mb.f(c,b=d[f++],a[b]);return c},yf=Sb("document","documentElement"),Si=ce("IE_PROTO"),zf=function(){},ge=function(){var c=Xd?Hc.createElement("iframe"):{};var a=fe.length;c.style.display="none";yf.appendChild(c);
c.src="javascript:";(c=c.contentWindow.document).open();c.write("<script>document.F=Object\x3c/script>");c.close();for(ge=c.F;a--;)delete ge.prototype[fe[a]];return ge()},pc=Object.create||function(c,a){var b;return null!==c?(zf.prototype=Sa(c),b=new zf,zf.prototype=null,b[Si]=c):b=ge(),void 0===a?b:Ri(b,a)};Kc[Si]=!0;var Af=function(c,a,b,d){d&&d.enumerable?c[a]=b:vb(c,a,b)},Bf=function(c,a,b){for(var d in a)b&&b.unsafe&&c[d]?c[d]=a[d]:Af(c,d,a[d],b);return c},zn=!ta(function(){function c(){}return c.prototype.constructor=
null,Object.getPrototypeOf(new c)!==c.prototype}),Ti=ce("IE_PROTO"),An=Object.prototype,Cf=zn?Object.getPrototypeOf:function(c){return c=xb(c),V(c,Ti)?c[Ti]:"function"==typeof c.constructor&&c instanceof c.constructor?c.constructor.prototype:c instanceof Object?An:null};ya("iterator");var Ui=!1,he,Df,Ef;[].keys&&(Ef=[].keys(),"next"in Ef?(Df=Cf(Cf(Ef)),Df!==Object.prototype&&(he=Df)):Ui=!0);null==he&&(he={});var Vi=he,ie=Ui,Bn=function(){return this},Cn=function(c,a,b){a+=" Iterator";return c.prototype=
pc(Vi,{next:kc(1,b)}),ld(c,a,!1,!0),Ub[a]=Bn,c};Object.setPrototypeOf||"__proto__"in{}&&function(){var c,a=!1,b={};try{(c=Object.getOwnPropertyDescriptor(Object.prototype,"__proto__").set).call(b,[]),a=b instanceof Array}catch(d){}return function(b,e){Sa(b);if(!Ca(e)&&null!==e)throw TypeError("Can't set "+String(e)+" as a prototype");return a?c.call(b,e):b.__proto__=e,b}}();var Ff=ya("iterator"),Dn=function(){return this},Gf=function(c,a,b,d,e,f,g){Cn(b,a,d);var k,q,w;d=function(a){if(a===e&&p)return p;
if(!ie&&a in l)return l[a];switch(a){case "keys":case "values":case "entries":return function(){return new b(this,a)}}return function(){return new b(this)}};var E=a+" Iterator",h=!1,l=c.prototype,m=l[Ff]||l["@@iterator"]||e&&l[e],p=!ie&&m||d(e),n="Array"==a&&l.entries||m;if(n&&(k=Cf(n.call(new c)),Vi!==Object.prototype&&k.next&&(ld(k,E,!0,!0),Ub[E]=Dn)),"values"==e&&m&&"values"!==m.name&&(h=!0,p=function(){return m.call(this)}),g&&l[Ff]!==p&&vb(l,Ff,p),Ub[a]=p,e)if(q={values:d("values"),keys:f?p:
d("keys"),entries:d("entries")},g)for(w in q)!ie&&!h&&w in l||Af(l,w,q[w]);else M({target:a,proto:!0,forced:ie||h},q);return q},Wi=ya("species"),Xi=function(c){c=Sb(c);var a=mb.f;na&&c&&!c[Wi]&&a(c,Wi,{configurable:!0,get:function(){return this}})},En=mb.f,Yi=Ei.fastKey,Zi=hb.set,Hf=hb.getterFor;(function(c,a,b){var d=-1!==c.indexOf("Map"),e=-1!==c.indexOf("Weak"),f=d?"set":"add",g=K[c],k=g&&g.prototype,q={};if(na&&"function"==typeof g&&(e||k.forEach&&!ta(function(){(new g).entries().next()}))){var w=
a(function(a,b){un(uf(a,w,c),{type:c,collection:new g});null!=b&&kd(b,a[f],a,d)});var E=vn(c);Lc("add clear delete forEach get has set keys values entries".split(" "),function(a){var b="add"==a||"set"==a;!(a in k)||e&&"clear"==a||vb(w.prototype,a,function(d,c){var f=E(this).collection;if(!b&&e&&!Ca(d))return"get"==a&&void 0;d=f[a](0===d?0:d,c);return b?this:d})});e||tn(w.prototype,"size",{configurable:!0,get:function(){return E(this).collection.size}})}else w=b.getConstructor(a,c,d,f),Ei.REQUIRED=
!0;return ld(w,c,!1,!0),q[c]=w,M({global:!0,forced:!0},q),e||b.setStrong(w,c,d),w})("Map",function(c){return function(){return c(this,arguments.length?arguments[0]:void 0)}},{getConstructor:function(c,a,b,d){var e=c(function(c,f){uf(c,e,a);Zi(c,{type:a,index:pc(null),first:void 0,last:void 0,size:0});na||(c.size=0);null!=f&&kd(f,c[d],c,b)}),f=Hf(a),g=function(a,b,d){var c,e,g=f(a),q=k(a,b);return q?q.value=d:(g.last=q={index:e=Yi(b,!0),key:b,value:d,previous:c=g.last,next:void 0,removed:!1},g.first||
(g.first=q),c&&(c.next=q),na?g.size++:a.size++,"F"!==e&&(g.index[e]=q)),a},k=function(a,b){a=f(a);var d=Yi(b);if("F"!==d)return a.index[d];for(a=a.first;a;a=a.next)if(a.key==b)return a};return Bf(e.prototype,{clear:function(){for(var a=f(this),b=a.index,d=a.first;d;)d.removed=!0,d.previous&&(d.previous=d.previous.next=void 0),delete b[d.index],d=d.next;a.first=a.last=void 0;na?a.size=0:this.size=0},delete:function(a){var b=f(this);if(a=k(this,a)){var d=a.next,c=a.previous;delete b.index[a.index];
a.removed=!0;c&&(c.next=d);d&&(d.previous=c);b.first==a&&(b.first=d);b.last==a&&(b.last=c);na?b.size--:this.size--}return!!a},forEach:function(a){for(var b,d=f(this),c=mc(a,1<arguments.length?arguments[1]:void 0,3);b=b?b.next:d.first;)for(c(b.value,b.key,this);b&&b.removed;)b=b.previous},has:function(a){return!!k(this,a)}}),Bf(e.prototype,b?{get:function(a){return(a=k(this,a))&&a.value},set:function(a,b){return g(this,0===a?0:a,b)}}:{add:function(a){return g(this,a=0===a?0:a,a)}}),na&&En(e.prototype,
"size",{get:function(){return f(this).size}}),e},setStrong:function(c,a,b){var d=a+" Iterator",e=Hf(a),f=Hf(d);Gf(c,a,function(a,b){Zi(this,{type:d,target:a,state:e(a),kind:b,last:void 0})},function(){for(var a=f(this),b=a.kind,d=a.last;d&&d.removed;)d=d.previous;return a.target&&(a.last=d=d?d.next:a.state.first)?"keys"==b?{value:d.key,done:!1}:"values"==b?{value:d.value,done:!1}:{value:[d.key,d.value],done:!1}:(a.target=void 0,{value:void 0,done:!0})},b?"entries":"values",!b,!0);Xi(a)}});var $i=
function(c){return function(a,b){var d,e;a=String(lc(a));b=ae(b);var f=a.length;return 0>b||b>=f?c?"":void 0:55296>(d=a.charCodeAt(b))||56319<d||b+1===f||56320>(e=a.charCodeAt(b+1))||57343<e?c?a.charAt(b):d:c?a.slice(b,b+2):e-56320+(d-55296<<10)+65536}},Fn={codeAt:$i(!1),charAt:$i(!0)}.charAt,Gn=hb.set,Hn=hb.getterFor("String Iterator");Gf(String,"String",function(c){Gn(this,{type:"String Iterator",string:String(c),index:0})},function(){var c,a=Hn(this),b=a.string,d=a.index;return d>=b.length?{value:void 0,
done:!0}:(c=Fn(b,d),a.index+=c.length,{value:c,done:!1})});var In=hb.set,Jn=hb.getterFor("Array Iterator");Gf(Array,"Array",function(c,a){In(this,{type:"Array Iterator",target:lb(c),index:0,kind:a})},function(){var c=Jn(this),a=c.target,b=c.kind,d=c.index++;return!a||d>=a.length?(c.target=void 0,{value:void 0,done:!0}):"keys"==b?{value:d,done:!1}:"values"==b?{value:a[d],done:!1}:{value:[d,a[d]],done:!1}},"values");Ub.Arguments=Ub.Array;var Kn={CSSRuleList:0,CSSStyleDeclaration:0,CSSValueList:0,ClientRectList:0,
DOMRectList:0,DOMStringList:0,DOMTokenList:1,DataTransferItemList:0,FileList:0,HTMLAllCollection:0,HTMLCollection:0,HTMLFormElement:0,HTMLSelectElement:0,MediaList:0,MimeTypeArray:0,NamedNodeMap:0,NodeList:1,PaintRequestList:0,Plugin:0,PluginArray:0,SVGLengthList:0,SVGNumberList:0,SVGPathSegList:0,SVGPointList:0,SVGStringList:0,SVGTransformList:0,SourceBufferList:0,StyleSheetList:0,TextTrackCueList:0,TextTrackList:0,TouchList:0},aj=ya("toStringTag"),je;for(je in Kn){var bj=K[je],If=bj&&bj.prototype;
If&&!If[aj]&&vb(If,aj,je);Ub[je]=Ub.Array}var Z=ha.Map,Ln=ya("match"),Jf=function(c){var a;if(Ca(c)&&(void 0!==(a=c[Ln])?a:"RegExp"==Jb(c)))throw TypeError("The method doesn't accept regular expressions");return c},Mn=ya("match"),Kf=function(c){var a=/./;try{"/./"[c](a)}catch(b){try{return a[Mn]=!1,"/./"[c](a)}catch(d){}}return!1},cj="".endsWith,Nn=Math.min,On=Kf("endsWith");M({target:"String",proto:!0,forced:!On},{endsWith:function(c){var a=String(lc(this));Jf(c);var b=1<arguments.length?arguments[1]:
void 0,d=wb(a.length);b=void 0===b?d:Nn(wb(b),d);d=String(c);return cj?cj.call(a,d,b):a.slice(b-d.length,b)===d}});var Fa=function(c){return ha[c+"Prototype"]},Pn=Fa("String").endsWith,dj=String.prototype,Dg=function(c){var a=c.endsWith;return"string"==typeof c||c===dj||c instanceof String&&a===dj.endsWith?Pn:a},nd=function(c,a){var b=[][c];return!b||!ta(function(){b.call(null,a||function(){throw 1;},1)})},ej=nd("forEach")?function(c){return Lc(this,c,1<arguments.length?arguments[1]:void 0)}:[].forEach;
M({target:"Array",proto:!0,forced:[].forEach!=ej},{forEach:ej});var Qn=Fa("Array").forEach,fj=Array.prototype,Rn={DOMTokenList:!0,NodeList:!0},r=function(c){var a=c.forEach;return c===fj||c instanceof Array&&a===fj.forEach||Rn.hasOwnProperty(be(c))?Qn:a},od={f:Object.getOwnPropertySymbols},ke=Object.assign,gj=!ke||ta(function(){var c={},a={},b=Symbol();return c[b]=7,"abcdefghijklmnopqrst".split("").forEach(function(b){a[b]=b}),7!=ke({},c)[b]||"abcdefghijklmnopqrst"!=bc(ke({},a)).join("")})?function(c,
a){for(var b=xb(c),d=arguments.length,e=1,f=od.f,g=Vd;d>e;)for(var k,q=Wd(arguments[e++]),w=f?bc(q).concat(f(q)):bc(q),h=w.length,l=0;h>l;)k=w[l++],na&&!g.call(q,k)||(b[k]=q[k]);return b}:ke;M({target:"Object",stat:!0,forced:Object.assign!==gj},{assign:gj});var Qa=ha.Object.assign,Sn=ta(function(){bc(1)});M({target:"Object",stat:!0,forced:Sn},{keys:function(c){return bc(xb(c))}});var S=ha.Object.keys,hj=function(c){return function(a,b,d,e){ub(b);a=xb(a);var f=Wd(a),g=wb(a.length),k=c?g-1:0,q=c?-1:
1;if(2>d)for(;;){if(k in f){e=f[k];k+=q;break}if(k+=q,c?0>k:g<=k)throw TypeError("Reduce of empty array with no initial value");}for(;c?0<=k:g>k;k+=q)k in f&&(e=b(e,f[k],k,a));return e}},Tn={left:hj(!1),right:hj(!0)}.left;M({target:"Array",proto:!0,forced:nd("reduce")},{reduce:function(c){return Tn(this,c,arguments.length,1<arguments.length?arguments[1]:void 0)}});var Un=Fa("Array").reduce,ij=Array.prototype,Ed=function(c){var a=c.reduce;return c===ij||c instanceof Array&&a===ij.reduce?Un:a};M({target:"Object",
stat:!0,forced:!na,sham:!na},{defineProperty:mb.f});var jj=Pa(function(c){var a=ha.Object;c=c.exports=function(b,d,c){return a.defineProperty(b,d,c)};a.defineProperty.sham&&(c.sham=!0)}),da=jj,Vn=/^[\t\n\x0B\f\r \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029\ufeff][\t\n\x0B\f\r \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029\ufeff]*/,Wn=/[\t\n\x0B\f\r \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029\ufeff][\t\n\x0B\f\r \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029\ufeff]*$/,
Lf=function(c){return function(a){a=String(lc(a));return 1&c&&(a=a.replace(Vn,"")),2&c&&(a=a.replace(Wn,"")),a}};Lf(1);Lf(2);var kj=Lf(3),le=K.parseInt,Xn=/^[+-]?0[Xx]/,lj=8!==le("\t\n\x0B\f\r \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029\ufeff08")||22!==le("\t\n\x0B\f\r \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029\ufeff0x16")?function(c,a){c=kj(String(c));return le(c,a>>>
0||(Xn.test(c)?16:10))}:le;M({global:!0,forced:parseInt!=lj},{parseInt:lj});var N=ha.parseInt;let Ag=!0,Bg=!0;var mj=Ic,Yn=ta(function(){mj(1)});M({target:"Object",stat:!0,forced:!na||Yn,sham:!na},{getOwnPropertyDescriptor:function(c,a){return mj(lb(c),a)}});var fa=Pa(function(c){var a=ha.Object;c=c.exports=function(b,d){return a.getOwnPropertyDescriptor(b,d)};a.getOwnPropertyDescriptor.sham&&(c.sham=!0)}),qc=function(c,a,b){a=Gc(a);a in c?mb.f(c,a,kc(0,b)):c[a]=b},pd=Sb("navigator","userAgent")||
"",nj=K.process,oj=nj&&nj.versions,pj=oj&&oj.v8,Vb,me;pj?(Vb=pj.split("."),me=Vb[0]+Vb[1]):pd&&(Vb=pd.match(/Edge\/(\d+)/),(!Vb||74<=Vb[1])&&(Vb=pd.match(/Chrome\/(\d+)/),Vb&&(me=Vb[1])));var ne=me&&+me,Zn=ya("species"),qd=function(c){return 51<=ne||!ta(function(){var a=[];return(a.constructor={})[Zn]=function(){return{foo:1}},1!==a[c](Boolean).foo})},qj=ya("isConcatSpreadable"),$n=51<=ne||!ta(function(){var c=[];return c[qj]=!1,c.concat()[0]!==c}),ao=qd("concat");M({target:"Array",proto:!0,forced:!$n||
!ao},{concat:function(c){var a,b,d=xb(this),e=vf(d,0),f=0;var g=-1;for(a=arguments.length;g<a;g++){var k=b=-1===g?d:arguments[g];if(Ca(k)){var q=k[qj];k=void 0!==q?!!q:nc(k)}else k=!1;if(k){if(9007199254740991<f+(q=wb(b.length)))throw TypeError("Maximum allowed index exceeded");for(k=0;k<q;k++,f++)k in b&&qc(e,f,b[k])}else{if(9007199254740991<=f)throw TypeError("Maximum allowed index exceeded");qc(e,f++,b)}}return e.length=f,e}});var bo=Fa("Array").concat,rj=Array.prototype,p=function(c){var a=c.concat;
return c===rj||c instanceof Array&&a===rj.concat?bo:a};M({target:"Array",proto:!0,forced:!qd("filter")},{filter:function(c){return kn(this,c,1<arguments.length?arguments[1]:void 0)}});var co=Fa("Array").filter,sj=Array.prototype,P=function(c){var a=c.filter;return c===sj||c instanceof Array&&a===sj.filter?co:a},eo=K.Promise,tj=ya("iterator"),uj=!1;try{var fo=0,vj={next:function(){return{done:!!fo++}},return:function(){uj=!0}};vj[tj]=function(){return this};Array.from(vj,function(){throw 2;})}catch(c){}var wj=
function(c,a){if(!a&&!uj)return!1;var b=!1;try{a={},a[tj]=function(){return{next:function(){return{done:b=!0}}}},c(a)}catch(d){}return b},go=ya("species"),xj=function(c,a){var b;c=Sa(c).constructor;return void 0===c||null==(b=Sa(c)[go])?a:ub(b)},yj=/(iphone|ipod|ipad).*applewebkit/i.test(pd),zj=K.location,Mf=K.setImmediate,Aj=K.clearImmediate,Bj=K.process,Cj=K.MessageChannel,Nf=K.Dispatch,Of=0,rd={},Nc,Pf,Qf,Rf=function(c){if(rd.hasOwnProperty(c)){var a=rd[c];delete rd[c];a()}},Sf=function(c){return function(){Rf(c)}},
Dj=function(c){Rf(c.data)},Ej=function(c){K.postMessage(c+"",zj.protocol+"//"+zj.host)};Mf&&Aj||(Mf=function(c){for(var a=[],b=1;arguments.length>b;)a.push(arguments[b++]);return rd[++Of]=function(){("function"==typeof c?c:Function(c)).apply(void 0,a)},Nc(Of),Of},Aj=function(c){delete rd[c]},"process"==Jb(Bj)?Nc=function(c){Bj.nextTick(Sf(c))}:Nf&&Nf.now?Nc=function(c){Nf.now(Sf(c))}:Cj&&!yj?(Pf=new Cj,Qf=Pf.port2,Pf.port1.onmessage=Dj,Nc=mc(Qf.postMessage,Qf,1)):!K.addEventListener||"function"!=
typeof postMessage||K.importScripts||ta(Ej)?Nc="onreadystatechange"in(Xd?Hc.createElement("script"):{})?function(c){yf.appendChild(Xd?Hc.createElement("script"):{}).onreadystatechange=function(){yf.removeChild(this);Rf(c)}}:function(c){setTimeout(Sf(c),0)}:(Nc=Ej,K.addEventListener("message",Dj,!1)));var Tf=Mf,ho=Ic,Fj=K.MutationObserver||K.WebKitMutationObserver,Uf=K.process,Vf=K.Promise,Gj="process"==Jb(Uf),Hj=ho(K,"queueMicrotask"),Ij=Hj&&Hj.value,sd,rc,td,Oc,Wf,Xf,Yf,Jj;Ij||(sd=function(){var c;
for(Gj&&(c=Uf.domain)&&c.exit();rc;){var a=rc.fn;rc=rc.next;try{a()}catch(b){throw rc?Oc():td=void 0,b;}}td=void 0;c&&c.enter()},Gj?Oc=function(){Uf.nextTick(sd)}:Fj&&!yj?(Wf=!0,Xf=document.createTextNode(""),(new Fj(sd)).observe(Xf,{characterData:!0}),Oc=function(){Xf.data=Wf=!Wf}):Vf&&Vf.resolve?(Yf=Vf.resolve(void 0),Jj=Yf.then,Oc=function(){Jj.call(Yf,sd)}):Oc=function(){Tf.call(K,sd)});var Kj=Ij||function(c){c={fn:c,next:void 0};td&&(td.next=c);rc||(rc=c,Oc());td=c},io=function(c){var a,b;this.promise=
new c(function(d,c){if(void 0!==a||void 0!==b)throw TypeError("Bad Promise constructor");a=d;b=c});this.resolve=ub(a);this.reject=ub(b)},oe={f:function(c){return new io(c)}},Zf=function(c,a){if(Sa(c),Ca(a)&&a.constructor===c)return a;c=oe.f(c);return(0,c.resolve)(a),c.promise},jo=function(c,a){var b=K.console;b&&b.error&&(1===arguments.length?b.error(c):b.error(c,a))},pe=function(c){try{return{error:!1,value:c()}}catch(a){return{error:!0,value:a}}},ko=ya("species"),Lj=hb.get,lo=hb.set,mo=hb.getterFor("Promise"),
Ya=eo,Mj=K.TypeError,$f=K.document,qe=K.process,no=Tb("inspectSource");Sb("fetch");var Pc=oe.f,oo=Pc,ud="process"==Jb(qe),po=!!($f&&$f.createEvent&&K.dispatchEvent),re,Nj,se=Jc("Promise",function(){if(no(Ya)===String(Ya)&&(66===ne||!ud&&"function"!=typeof PromiseRejectionEvent)||!Ya.prototype.finally)return!0;if(51<=ne&&/native code/.test(Ya))return!1;var c=Ya.resolve(1),a=function(a){a(function(){},function(){})};return(c.constructor={})[ko]=a,!(c.then(function(){})instanceof a)}),qo=se||!wj(function(c){Ya.all(c).catch(function(){})}),
Oj=function(c){var a;return!(!Ca(c)||"function"!=typeof(a=c.then))&&a},ag=function(c,a,b){if(!a.notified){a.notified=!0;var d=a.reactions;Kj(function(){for(var e=a.value,f=1==a.state,g=0;d.length>g;){var k,q,w,h=d[g++],l=f?h.ok:h.fail,m=h.resolve,p=h.reject,n=h.domain;try{l?(f||(2===a.rejection&&ro(c,a),a.rejection=1),!0===l?k=e:(n&&n.enter(),k=l(e),n&&(n.exit(),w=!0)),k===h.promise?p(Mj("Promise-chain cycle")):(q=Oj(k))?q.call(k,m,p):m(k)):p(e)}catch(pa){n&&!w&&n.exit(),p(pa)}}a.reactions=[];a.notified=
!1;b&&!a.rejection&&so(c,a)})}},Pj=function(c,a,b){var d,e;po?((d=$f.createEvent("Event")).promise=a,d.reason=b,d.initEvent(c,!1,!0),K.dispatchEvent(d)):d={promise:a,reason:b};(e=K["on"+c])?e(d):"unhandledrejection"===c&&jo("Unhandled promise rejection",b)},so=function(c,a){Tf.call(K,function(){var b,d=a.value;if(1!==a.rejection&&!a.parent&&(b=pe(function(){ud?qe.emit("unhandledRejection",d,c):Pj("unhandledrejection",c,d)}),a.rejection=ud||1!==a.rejection&&!a.parent?2:1,b.error))throw b.value;})},
ro=function(c,a){Tf.call(K,function(){ud?qe.emit("rejectionHandled",c):Pj("rejectionhandled",c,a.value)})},Qc=function(c,a,b,d){return function(e){c(a,b,e,d)}},Rc=function(c,a,b,d){a.done||(a.done=!0,d&&(a=d),a.value=b,a.state=2,ag(c,a,!0))},bg=function(c,a,b,d){if(!a.done){a.done=!0;d&&(a=d);try{if(c===b)throw Mj("Promise can't be resolved itself");var e=Oj(b);e?Kj(function(){var d={done:!1};try{e.call(b,Qc(bg,c,d,a),Qc(Rc,c,d,a))}catch(g){Rc(c,d,g,a)}}):(a.value=b,a.state=1,ag(c,a,!1))}catch(f){Rc(c,
{done:!1},f,a)}}};se&&(Ya=function(c){uf(this,Ya,"Promise");ub(c);re.call(this);var a=Lj(this);try{c(Qc(bg,this,a),Qc(Rc,this,a))}catch(b){Rc(this,a,b)}},re=function(c){lo(this,{type:"Promise",done:!1,notified:!1,parent:!1,reactions:[],rejection:!1,state:0,value:void 0})},re.prototype=Bf(Ya.prototype,{then:function(c,a){var b=mo(this),d=Pc(xj(this,Ya));return d.ok="function"!=typeof c||c,d.fail="function"==typeof a&&a,d.domain=ud?qe.domain:void 0,b.parent=!0,b.reactions.push(d),0!=b.state&&ag(this,
b,!1),d.promise},catch:function(c){return this.then(void 0,c)}}),Nj=function(){var c=new re,a=Lj(c);this.promise=c;this.resolve=Qc(bg,c,a);this.reject=Qc(Rc,c,a)},oe.f=Pc=function(c){return c===Ya||c===Qj?new Nj(c):oo(c)});M({global:!0,wrap:!0,forced:se},{Promise:Ya});ld(Ya,"Promise",!1,!0);Xi("Promise");var Qj=Sb("Promise");M({target:"Promise",stat:!0,forced:se},{reject:function(c){var a=Pc(this);return a.reject.call(void 0,c),a.promise}});M({target:"Promise",stat:!0,forced:!0},{resolve:function(c){return Zf(this===
Qj?Ya:this,c)}});M({target:"Promise",stat:!0,forced:qo},{all:function(c){var a=this,b=Pc(a),d=b.resolve,e=b.reject,f=pe(function(){var b=ub(a.resolve),f=[],q=0,w=1;kd(c,function(c){var g=q++,k=!1;f.push(void 0);w++;b.call(a,c).then(function(a){k||(k=!0,f[g]=a,--w||d(f))},e)});--w||d(f)});return f.error&&e(f.value),b.promise},race:function(c){var a=this,b=Pc(a),d=b.reject,e=pe(function(){var e=ub(a.resolve);kd(c,function(c){e.call(a,c).then(b.resolve,d)})});return e.error&&d(e.value),b.promise}});
M({target:"Promise",stat:!0},{allSettled:function(c){var a=this,b=oe.f(a),d=b.resolve,e=b.reject,f=pe(function(){var b=ub(a.resolve),e=[],f=0,w=1;kd(c,function(c){var g=f++,k=!1;e.push(void 0);w++;b.call(a,c).then(function(a){k||(k=!0,e[g]={status:"fulfilled",value:a},--w||d(e))},function(a){k||(k=!0,e[g]={status:"rejected",reason:a},--w||d(e))})});--w||d(e)});return f.error&&e(f.value),b.promise}});M({target:"Promise",proto:!0,real:!0},{finally:function(c){var a=xj(this,Sb("Promise")),b="function"==
typeof c;return this.then(b?function(b){return Zf(a,c()).then(function(){return b})}:c,b?function(b){return Zf(a,c()).then(function(){throw b;})}:c)}});var x=ha.Promise;M({target:"Array",proto:!0,forced:!qd("map")},{map:function(c){return jn(this,c,1<arguments.length?arguments[1]:void 0)}});var to=Fa("Array").map,Rj=Array.prototype,y=function(c){var a=c.map;return c===Rj||c instanceof Array&&a===Rj.map?to:a},uo=Math.max,vo=Math.min;M({target:"Array",proto:!0,forced:!qd("splice")},{splice:function(c,
a){var b,d,e,f,g=xb(this),k=wb(g.length),q=ee(c,k);var w=arguments.length;if(0===w?b=d=0:1===w?(b=0,d=k-q):(b=w-2,d=vo(uo(ae(a),0),k-q)),9007199254740991<k+b-d)throw TypeError("Maximum allowed length exceeded");w=vf(g,d);for(e=0;e<d;e++)(f=q+e)in g&&qc(w,e,g[f]);if(w.length=d,b<d){for(e=q;e<k-d;e++){var h=e+b;(f=e+d)in g?g[h]=g[f]:delete g[h]}for(e=k;e>k-d+b;e--)delete g[e-1]}else if(b>d)for(e=k-d;e>q;e--)h=e+b-1,(f=e+d-1)in g?g[h]=g[f]:delete g[h];for(e=0;e<b;e++)g[e+q]=arguments[e+2];return g.length=
k-d+b,w}});var wo=Fa("Array").splice,Sj=Array.prototype,Ka=function(c){var a=c.splice;return c===Sj||c instanceof Array&&a===Sj.splice?wo:a},Tj=[].indexOf,Uj=!!Tj&&0>1/[1].indexOf(1,-0),xo=nd("indexOf");M({target:"Array",proto:!0,forced:Uj||xo},{indexOf:function(c){return Uj?Tj.apply(this,arguments)||0:Pi(this,c,1<arguments.length?arguments[1]:void 0)}});var yo=Fa("Array").indexOf,Vj=Array.prototype,D=function(c){var a=c.indexOf;return c===Vj||c instanceof Array&&a===Vj.indexOf?yo:a},zo=ya("species"),
Ao=[].slice,Bo=Math.max;M({target:"Array",proto:!0,forced:!qd("slice")},{slice:function(c,a){var b,d=lb(this);var e=wb(d.length);c=ee(c,e);a=ee(void 0===a?e:a,e);if(nc(d)&&("function"!=typeof(b=d.constructor)||b!==Array&&!nc(b.prototype)?Ca(b)&&null===(b=b[zo])&&(b=void 0):b=void 0,b===Array||void 0===b))return Ao.call(d,c,a);b=new (void 0===b?Array:b)(Bo(a-c,0));for(e=0;c<a;c++,e++)c in d&&qc(b,e,d[c]);return b.length=e,b}});var Co=Fa("Array").slice,Wj=Array.prototype,Db=function(c){var a=c.slice;
return c===Wj||c instanceof Array&&a===Wj.slice?Co:a},Xj=!0;"find"in[]&&Array(1).find(function(){Xj=!1});M({target:"Array",proto:!0,forced:Xj},{find:function(c){return mn(this,c,1<arguments.length?arguments[1]:void 0)}});var Do=Fa("Array").find,Yj=Array.prototype,U=function(c){var a=c.find;return c===Yj||c instanceof Array&&a===Yj.find?Do:a},Zj=[].slice,cg={};M({target:"Function",proto:!0},{bind:Function.bind||function(c){var a=ub(this),b=Zj.call(arguments,1),d=function(){var e=b.concat(Zj.call(arguments));
if(this instanceof d){var f=e.length;if(!(f in cg)){for(var g=[],k=0;k<f;k++)g[k]="a["+k+"]";cg[f]=Function("C,a","return new C("+g.join(",")+")")}e=cg[f](a,e)}else e=a.apply(c,e);return e};return Ca(a.prototype)&&(d.prototype=a.prototype),d}});var Eo=Fa("Function").bind,ak=Function.prototype,Da=function(c){var a=c.bind;return c===ak||c instanceof Function&&a===ak.bind?Eo:a};M({target:"Array",proto:!0},{includes:function(c){return yn(this,c,1<arguments.length?arguments[1]:void 0)}});var Fo=Fa("Array").includes;
M({target:"String",proto:!0,forced:!Kf("includes")},{includes:function(c){return!!~String(lc(this)).indexOf(Jf(c),1<arguments.length?arguments[1]:void 0)}});var Go=Fa("String").includes,bk=Array.prototype,ck=String.prototype,Ja=function(c){var a=c.includes;return c===bk||c instanceof Array&&a===bk.includes?Fo:"string"==typeof c||c===ck||c instanceof String&&a===ck.includes?Go:a};M({target:"Array",proto:!0,forced:nd("some")},{some:function(c){return ln(this,c,1<arguments.length?arguments[1]:void 0)}});
var Ho=Fa("Array").some,dk=Array.prototype,Hg=function(c){var a=c.some;return c===dk||c instanceof Array&&a===dk.some?Ho:a};let Ig=sb;var ek=Object.freeze({__proto__:null,shimMediaStream:Jg,shimOnTrack:Kg,shimGetSendersWithDtmf:Lg,shimGetStats:Mg,shimSenderReceiverGetStats:Ng,shimAddTrackRemoveTrackWithNative:Og,shimAddTrackRemoveTrack:Pg,shimPeerConnection:De,fixNegotiationNeeded:Qg,shimGetUserMedia:Fg,shimGetDisplayMedia:function(c,a){c.navigator.mediaDevices&&"getDisplayMedia"in c.navigator.mediaDevices||
c.navigator.mediaDevices&&("function"==typeof a?c.navigator.mediaDevices.getDisplayMedia=function(b){return a(b).then(a=>{let d=b.video&&b.video.width,f=b.video&&b.video.height;return b.video={mandatory:{chromeMediaSource:"desktop",chromeMediaSourceId:a,maxFrameRate:b.video&&b.video.frameRate||3}},d&&(b.video.mandatory.maxWidth=d),f&&(b.video.mandatory.maxHeight=f),c.navigator.mediaDevices.getUserMedia(b)})}:console.error("shimGetDisplayMedia: getSourceId argument is not a function"))}}),fk="".startsWith,
Io=Math.min,Jo=Kf("startsWith");M({target:"String",proto:!0,forced:!Jo},{startsWith:function(c){var a=String(lc(this));Jf(c);var b=wb(Io(1<arguments.length?arguments[1]:void 0,a.length)),d=String(c);return fk?fk.call(a,d,b):a.slice(b,b+d.length)===d}});var Ko=Fa("String").startsWith,gk=String.prototype,Fd=function(c){var a=c.startsWith;return"string"==typeof c||c===gk||c instanceof String&&a===gk.startsWith?Ko:a};M({target:"String",proto:!0,forced:function(c){return ta(function(){return!!"\t\n\v\f\r \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029\ufeff"[c]()||
"\u200b\u0085\u180e"!="\u200b\u0085\u180e"[c]()||"\t\n\v\f\r \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029\ufeff"[c].name!==c})}("trim")},{trim:function(){return kj(this)}});var Lo=Fa("String").trim,hk=String.prototype,wc=function(c){var a=c.trim;return"string"==typeof c||c===hk||c instanceof String&&a===hk.trim?Lo:a},G=Pa(function(c){var a={generateIdentifier:function(){return Math.random().toString(36).substr(2,10)}};a.localCName=a.generateIdentifier();
a.splitLines=function(a){var b;return y(b=wc(a).call(a).split("\n")).call(b,function(a){return wc(a).call(a)})};a.splitSections=function(a){a=a.split("\nm=");return y(a).call(a,function(a,b){var d;return wc(d=0<b?"m="+a:a).call(d)+"\r\n"})};a.getDescription=function(b){return(b=a.splitSections(b))&&b[0]};a.getMediaSections=function(b){b=a.splitSections(b);return b.shift(),b};a.matchPrefix=function(b,d){var c;return P(c=a.splitLines(b)).call(c,function(a){return 0===D(a).call(a,d)})};a.parseCandidate=
function(a){var b;a={foundation:(b=0===D(a).call(a,"a=candidate:")?a.substring(12).split(" "):a.substring(10).split(" "))[0],component:N(b[1],10),protocol:b[2].toLowerCase(),priority:N(b[3],10),ip:b[4],address:b[4],port:N(b[5],10),type:b[7]};for(var c=8;c<b.length;c+=2)switch(b[c]){case "raddr":a.relatedAddress=b[c+1];break;case "rport":a.relatedPort=N(b[c+1],10);break;case "tcptype":a.tcpType=b[c+1];break;case "ufrag":a.ufrag=b[c+1];a.usernameFragment=b[c+1];break;default:a[b[c]]=b[c+1]}return a};
a.writeCandidate=function(a){var b=[];b.push(a.foundation);b.push(a.component);b.push(a.protocol.toUpperCase());b.push(a.priority);b.push(a.address||a.ip);b.push(a.port);var c=a.type;return b.push("typ"),b.push(c),"host"!==c&&a.relatedAddress&&a.relatedPort&&(b.push("raddr"),b.push(a.relatedAddress),b.push("rport"),b.push(a.relatedPort)),a.tcpType&&"tcp"===a.protocol.toLowerCase()&&(b.push("tcptype"),b.push(a.tcpType)),(a.usernameFragment||a.ufrag)&&(b.push("ufrag"),b.push(a.usernameFragment||a.ufrag)),
"candidate:"+b.join(" ")};a.parseIceOptions=function(a){return a.substr(14).split(" ")};a.parseRtpMap=function(a){a=a.substr(9).split(" ");var b={payloadType:N(a.shift(),10)};return a=a[0].split("/"),b.name=a[0],b.clockRate=N(a[1],10),b.channels=3===a.length?N(a[2],10):1,b.numChannels=b.channels,b};a.writeRtpMap=function(a){var b=a.payloadType;void 0!==a.preferredPayloadType&&(b=a.preferredPayloadType);var c=a.channels||a.numChannels||1;return"a=rtpmap:"+b+" "+a.name+"/"+a.clockRate+(1!==c?"/"+c:
"")+"\r\n"};a.parseExtmap=function(a){var b;a=a.substr(9).split(" ");return{id:N(a[0],10),direction:0<D(b=a[0]).call(b,"/")?a[0].split("/")[1]:"sendrecv",uri:a[1]}};a.writeExtmap=function(a){return"a=extmap:"+(a.id||a.preferredId)+(a.direction&&"sendrecv"!==a.direction?"/"+a.direction:"")+" "+a.uri+"\r\n"};a.parseFmtp=function(a){for(var b={},c=a.substr(D(a).call(a," ")+1).split(";"),f=0;f<c.length;f++){var g,k;a=wc(g=c[f]).call(g).split("=");b[wc(k=a[0]).call(k)]=a[1]}return b};a.writeFmtp=function(a){var b=
"",c=a.payloadType;if(void 0!==a.preferredPayloadType&&(c=a.preferredPayloadType),a.parameters&&S(a.parameters).length){var f,g=[];r(f=S(a.parameters)).call(f,function(b){a.parameters[b]?g.push(b+"="+a.parameters[b]):g.push(b)});b+="a=fmtp:"+c+" "+g.join(";")+"\r\n"}return b};a.parseRtcpFb=function(a){a=a.substr(D(a).call(a," ")+1).split(" ");return{type:a.shift(),parameter:a.join(" ")}};a.writeRtcpFb=function(a){var b,c="",f=a.payloadType;(void 0!==a.preferredPayloadType&&(f=a.preferredPayloadType),
a.rtcpFeedback&&a.rtcpFeedback.length)&&r(b=a.rtcpFeedback).call(b,function(a){c+="a=rtcp-fb:"+f+" "+a.type+(a.parameter&&a.parameter.length?" "+a.parameter:"")+"\r\n"});return c};a.parseSsrcMedia=function(a){var b=D(a).call(a," "),c={ssrc:N(a.substr(7,b-7),10)},f=D(a).call(a,":",b);return-1<f?(c.attribute=a.substr(b+1,f-b-1),c.value=a.substr(f+1)):c.attribute=a.substr(b+1),c};a.parseSsrcGroup=function(a){a=a.substr(13).split(" ");return{semantics:a.shift(),ssrcs:y(a).call(a,function(a){return N(a,
10)})}};a.getMid=function(b){if(b=a.matchPrefix(b,"a=mid:")[0])return b.substr(6)};a.parseFingerprint=function(a){a=a.substr(14).split(" ");return{algorithm:a[0].toLowerCase(),value:a[1]}};a.getDtlsParameters=function(b,c){b=a.matchPrefix(b+c,"a=fingerprint:");return{role:"auto",fingerprints:y(b).call(b,a.parseFingerprint)}};a.writeDtlsParameters=function(a,c){var b,d="a=setup:"+c+"\r\n";return r(b=a.fingerprints).call(b,function(a){d+="a=fingerprint:"+a.algorithm+" "+a.value+"\r\n"}),d};a.getIceParameters=
function(b,c){b=a.splitLines(b);return b=p(b).call(b,a.splitLines(c)),{usernameFragment:P(b).call(b,function(a){return 0===D(a).call(a,"a=ice-ufrag:")})[0].substr(12),password:P(b).call(b,function(a){return 0===D(a).call(a,"a=ice-pwd:")})[0].substr(10)}};a.writeIceParameters=function(a){return"a=ice-ufrag:"+a.usernameFragment+"\r\na=ice-pwd:"+a.password+"\r\n"};a.parseRtpParameters=function(b){for(var c,e={codecs:[],headerExtensions:[],fecMechanisms:[],rtcp:[]},f=a.splitLines(b)[0].split(" "),g=3;g<
f.length;g++){var k=f[g],q=a.matchPrefix(b,"a=rtpmap:"+k+" ")[0];if(q){var w;q=a.parseRtpMap(q);var h=a.matchPrefix(b,"a=fmtp:"+k+" ");switch(q.parameters=h.length?a.parseFmtp(h[0]):{},q.rtcpFeedback=y(w=a.matchPrefix(b,"a=rtcp-fb:"+k+" ")).call(w,a.parseRtcpFb),e.codecs.push(q),q.name.toUpperCase()){case "RED":case "ULPFEC":e.fecMechanisms.push(q.name.toUpperCase())}}}return r(c=a.matchPrefix(b,"a=extmap:")).call(c,function(b){e.headerExtensions.push(a.parseExtmap(b))}),e};a.writeRtpDescription=
function(b,c){var d,f,g,k="";k+="m="+b+" ";k+=0<c.codecs.length?"9":"0";k+=" UDP/TLS/RTP/SAVPF ";k+=y(d=c.codecs).call(d,function(a){return void 0!==a.preferredPayloadType?a.preferredPayloadType:a.payloadType}).join(" ")+"\r\n";k+="c=IN IP4 0.0.0.0\r\n";k+="a=rtcp:9 IN IP4 0.0.0.0\r\n";r(f=c.codecs).call(f,function(b){k+=a.writeRtpMap(b);k+=a.writeFmtp(b);k+=a.writeRtcpFb(b)});var q,h=0;(r(g=c.codecs).call(g,function(a){a.maxptime>h&&(h=a.maxptime)}),0<h&&(k+="a=maxptime:"+h+"\r\n"),k+="a=rtcp-mux\r\n",
c.headerExtensions)&&r(q=c.headerExtensions).call(q,function(b){k+=a.writeExtmap(b)});return k};a.parseRtpEncodingParameters=function(b){var c,e,f,g,k,q,h,E=[],l=a.parseRtpParameters(b),m=-1!==D(c=l.fecMechanisms).call(c,"RED"),p=-1!==D(e=l.fecMechanisms).call(e,"ULPFEC");c=P(f=y(g=a.matchPrefix(b,"a=ssrc:")).call(g,function(b){return a.parseSsrcMedia(b)})).call(f,function(a){return"cname"===a.attribute});var n=0<c.length&&c[0].ssrc;f=y(k=a.matchPrefix(b,"a=ssrc-group:FID")).call(k,function(a){a=
a.substr(17).split(" ");return y(a).call(a,function(a){return N(a,10)})});0<f.length&&1<f[0].length&&f[0][0]===n&&(h=f[0][1]);r(q=l.codecs).call(q,function(a){"RTX"===a.name.toUpperCase()&&a.parameters.apt&&(a={ssrc:n,codecPayloadType:N(a.parameters.apt,10)},n&&h&&(a.rtx={ssrc:h}),E.push(a),m&&((a=JSON.parse(z(a))).fec={ssrc:n,mechanism:p?"red+ulpfec":"red"},E.push(a)))});0===E.length&&n&&E.push({ssrc:n});var t,u,v=a.matchPrefix(b,"b=");v.length&&(v=0===D(t=v[0]).call(t,"b=TIAS:")?N(v[0].substr(7),
10):0===D(u=v[0]).call(u,"b=AS:")?950*N(v[0].substr(5),10)-16E3:void 0,r(E).call(E,function(a){a.maxBitrate=v}));return E};a.parseRtcpParameters=function(b){var c,e,f={},g=P(c=y(e=a.matchPrefix(b,"a=ssrc:")).call(e,function(b){return a.parseSsrcMedia(b)})).call(c,function(a){return"cname"===a.attribute})[0];g&&(f.cname=g.value,f.ssrc=g.ssrc);c=a.matchPrefix(b,"a=rtcp-rsize");f.reducedSize=0<c.length;f.compound=0===c.length;b=a.matchPrefix(b,"a=rtcp-mux");return f.mux=0<b.length,f};a.parseMsid=function(b){var c,
e,f,g=a.matchPrefix(b,"a=msid:");if(1===g.length)return{stream:(f=g[0].substr(7).split(" "))[0],track:f[1]};b=P(c=y(e=a.matchPrefix(b,"a=ssrc:")).call(e,function(b){return a.parseSsrcMedia(b)})).call(c,function(a){return"msid"===a.attribute});return 0<b.length?{stream:(f=b[0].value.split(" "))[0],track:f[1]}:void 0};a.generateSessionId=function(){return Math.random().toString().substr(2,21)};a.writeSessionBoilerplate=function(b,c,e){c=void 0!==c?c:2;return"v=0\r\no="+(e||"thisisadapterortc")+" "+
(b||a.generateSessionId())+" "+c+" IN IP4 127.0.0.1\r\ns=-\r\nt=0 0\r\n"};a.writeMediaSection=function(b,c,e,f){c=a.writeRtpDescription(b.kind,c);if(c+=a.writeIceParameters(b.iceGatherer.getLocalParameters()),c+=a.writeDtlsParameters(b.dtlsTransport.getLocalParameters(),"offer"===e?"actpass":"active"),c+="a=mid:"+b.mid+"\r\n",b.direction?c+="a="+b.direction+"\r\n":b.rtpSender&&b.rtpReceiver?c+="a=sendrecv\r\n":b.rtpSender?c+="a=sendonly\r\n":b.rtpReceiver?c+="a=recvonly\r\n":c+="a=inactive\r\n",b.rtpSender)e=
"msid:"+f.id+" "+b.rtpSender.track.id+"\r\n",c=c+("a="+e)+("a=ssrc:"+b.sendEncodingParameters[0].ssrc+" "+e),b.sendEncodingParameters[0].rtx&&(c+="a=ssrc:"+b.sendEncodingParameters[0].rtx.ssrc+" "+e,c+="a=ssrc-group:FID "+b.sendEncodingParameters[0].ssrc+" "+b.sendEncodingParameters[0].rtx.ssrc+"\r\n");return c+="a=ssrc:"+b.sendEncodingParameters[0].ssrc+" cname:"+a.localCName+"\r\n",b.rtpSender&&b.sendEncodingParameters[0].rtx&&(c+="a=ssrc:"+b.sendEncodingParameters[0].rtx.ssrc+" cname:"+a.localCName+
"\r\n"),c};a.getDirection=function(b,c){b=a.splitLines(b);for(var d=0;d<b.length;d++)switch(b[d]){case "a=sendrecv":case "a=sendonly":case "a=recvonly":case "a=inactive":return b[d].substr(2)}return c?a.getDirection(c):"sendrecv"};a.getKind=function(b){return a.splitLines(b)[0].split(" ")[0].substr(2)};a.isRejected=function(a){return"0"===a.split(" ",2)[1]};a.parseMLine=function(b){b=a.splitLines(b)[0].substr(2).split(" ");return{kind:b[0],port:N(b[1],10),protocol:b[2],fmt:Db(b).call(b,3).join(" ")}};
a.parseOLine=function(b){b=a.matchPrefix(b,"o=")[0].substr(2).split(" ");return{username:b[0],sessionId:b[1],sessionVersion:N(b[2],10),netType:b[3],addressType:b[4],address:b[5]}};a.isValidSDP=function(b){if("string"!=typeof b||0===b.length)return!1;b=a.splitLines(b);for(var c=0;c<b.length;c++)if(2>b[c].length||"="!==b[c].charAt(1))return!1;return!0};c.exports=a}),xl=function(c,a){function b(a,b){b.addTrack(a);b.dispatchEvent(new c.MediaStreamTrackEvent("addtrack",{track:a}))}function d(a,b,d,e){var f=
new Event("track");f.track=b;f.receiver=d;f.transceiver={receiver:d};f.streams=e;c.setTimeout(function(){a._dispatchEvent("track",f)})}var e=function(b){var d=this,e=document.createDocumentFragment();if(["addEventListener","removeEventListener","dispatchEvent"].forEach(function(a){d[a]=e[a].bind(e)}),this.canTrickleIceCandidates=null,this.needNegotiation=!1,this.localStreams=[],this.remoteStreams=[],this._localDescription=null,this._remoteDescription=null,this.signalingState="stable",this.iceConnectionState=
"new",this.connectionState="new",this.iceGatheringState="new",b=JSON.parse(JSON.stringify(b||{})),this.usingBundle="max-bundle"===b.bundlePolicy,"negotiate"===b.rtcpMuxPolicy)throw La("NotSupportedError","rtcpMuxPolicy 'negotiate' is not supported");switch(b.rtcpMuxPolicy||(b.rtcpMuxPolicy="require"),b.iceTransportPolicy){case "all":case "relay":break;default:b.iceTransportPolicy="all"}switch(b.bundlePolicy){case "balanced":case "max-compat":case "max-bundle":break;default:b.bundlePolicy="balanced"}if(b.iceServers=
wl(b.iceServers||[],a),this._iceGatherers=[],b.iceCandidatePoolSize)for(var f=b.iceCandidatePoolSize;0<f;f--)this._iceGatherers.push(new c.RTCIceGatherer({iceServers:b.iceServers,gatherPolicy:b.iceTransportPolicy}));else b.iceCandidatePoolSize=0;this._config=b;this.transceivers=[];this._sdpSessionId=G.generateSessionId();this._sdpSessionVersion=0;this._dtlsRole=void 0;this._isClosed=!1};Object.defineProperty(e.prototype,"localDescription",{configurable:!0,get:function(){return this._localDescription}});
Object.defineProperty(e.prototype,"remoteDescription",{configurable:!0,get:function(){return this._remoteDescription}});e.prototype.onicecandidate=null;e.prototype.onaddstream=null;e.prototype.ontrack=null;e.prototype.onremovestream=null;e.prototype.onsignalingstatechange=null;e.prototype.oniceconnectionstatechange=null;e.prototype.onconnectionstatechange=null;e.prototype.onicegatheringstatechange=null;e.prototype.onnegotiationneeded=null;e.prototype.ondatachannel=null;e.prototype._dispatchEvent=
function(a,b){this._isClosed||(this.dispatchEvent(b),"function"==typeof this["on"+a]&&this["on"+a](b))};e.prototype._emitGatheringStateChange=function(){var a=new Event("icegatheringstatechange");this._dispatchEvent("icegatheringstatechange",a)};e.prototype.getConfiguration=function(){return this._config};e.prototype.getLocalStreams=function(){return this.localStreams};e.prototype.getRemoteStreams=function(){return this.remoteStreams};e.prototype._createTransceiver=function(a,b){var c=0<this.transceivers.length;
a={track:null,iceGatherer:null,iceTransport:null,dtlsTransport:null,localCapabilities:null,remoteCapabilities:null,rtpSender:null,rtpReceiver:null,kind:a,mid:null,sendEncodingParameters:null,recvEncodingParameters:null,stream:null,associatedRemoteMediaStreams:[],wantReceive:!0};this.usingBundle&&c?(a.iceTransport=this.transceivers[0].iceTransport,a.dtlsTransport=this.transceivers[0].dtlsTransport):(c=this._createIceAndDtlsTransports(),a.iceTransport=c.iceTransport,a.dtlsTransport=c.dtlsTransport);
return b||this.transceivers.push(a),a};e.prototype.addTrack=function(a,b){if(this._isClosed)throw La("InvalidStateError","Attempted to call addTrack on a closed peerconnection.");var d;if(this.transceivers.find(function(b){return b.track===a}))throw La("InvalidAccessError","Track already exists.");for(var e=0;e<this.transceivers.length;e++)this.transceivers[e].track||this.transceivers[e].kind!==a.kind||(d=this.transceivers[e]);return d||(d=this._createTransceiver(a.kind)),this._maybeFireNegotiationNeeded(),
-1===this.localStreams.indexOf(b)&&this.localStreams.push(b),d.track=a,d.stream=b,d.rtpSender=new c.RTCRtpSender(a,d.dtlsTransport),d.rtpSender};e.prototype.addStream=function(b){var c=this;if(15025<=a)b.getTracks().forEach(function(a){c.addTrack(a,b)});else{var d=b.clone();b.getTracks().forEach(function(a,b){var c=d.getTracks()[b];a.addEventListener("enabled",function(a){c.enabled=a.enabled})});d.getTracks().forEach(function(a){c.addTrack(a,d)})}};e.prototype.removeTrack=function(a){if(this._isClosed)throw La("InvalidStateError",
"Attempted to call removeTrack on a closed peerconnection.");if(!(a instanceof c.RTCRtpSender))throw new TypeError("Argument 1 of RTCPeerConnection.removeTrack does not implement interface RTCRtpSender.");var b=this.transceivers.find(function(b){return b.rtpSender===a});if(!b)throw La("InvalidAccessError","Sender was not created by this connection.");var d=b.stream;b.rtpSender.stop();b.rtpSender=null;b.track=null;b.stream=null;-1===this.transceivers.map(function(a){return a.stream}).indexOf(d)&&-1<
this.localStreams.indexOf(d)&&this.localStreams.splice(this.localStreams.indexOf(d),1);this._maybeFireNegotiationNeeded()};e.prototype.removeStream=function(a){var b=this;a.getTracks().forEach(function(a){var c=b.getSenders().find(function(b){return b.track===a});c&&b.removeTrack(c)})};e.prototype.getSenders=function(){return this.transceivers.filter(function(a){return!!a.rtpSender}).map(function(a){return a.rtpSender})};e.prototype.getReceivers=function(){return this.transceivers.filter(function(a){return!!a.rtpReceiver}).map(function(a){return a.rtpReceiver})};
e.prototype._createIceGatherer=function(a,b){var d=this;if(b&&0<a)return this.transceivers[0].iceGatherer;if(this._iceGatherers.length)return this._iceGatherers.shift();var e=new c.RTCIceGatherer({iceServers:this._config.iceServers,gatherPolicy:this._config.iceTransportPolicy});return Object.defineProperty(e,"state",{value:"new",writable:!0}),this.transceivers[a].bufferedCandidateEvents=[],this.transceivers[a].bufferCandidates=function(b){var c=!b.candidate||0===Object.keys(b.candidate).length;e.state=
c?"completed":"gathering";null!==d.transceivers[a].bufferedCandidateEvents&&d.transceivers[a].bufferedCandidateEvents.push(b)},e.addEventListener("localcandidate",this.transceivers[a].bufferCandidates),e};e.prototype._gather=function(a,b){var d=this,e=this.transceivers[b].iceGatherer;if(!e.onlocalcandidate){var f=this.transceivers[b].bufferedCandidateEvents;this.transceivers[b].bufferedCandidateEvents=null;e.removeEventListener("localcandidate",this.transceivers[b].bufferCandidates);e.onlocalcandidate=
function(c){if(!(d.usingBundle&&0<b)){var f=new Event("icecandidate");f.candidate={sdpMid:a,sdpMLineIndex:b};var g=c.candidate;(c=!g||0===Object.keys(g).length)?"new"!==e.state&&"gathering"!==e.state||(e.state="completed"):("new"===e.state&&(e.state="gathering"),g.component=1,g.ufrag=e.getLocalParameters().usernameFragment,g=G.writeCandidate(g),f.candidate=Object.assign(f.candidate,G.parseCandidate(g)),f.candidate.candidate=g,f.candidate.toJSON=function(){return{candidate:f.candidate.candidate,sdpMid:f.candidate.sdpMid,
sdpMLineIndex:f.candidate.sdpMLineIndex,usernameFragment:f.candidate.usernameFragment}});g=G.getMediaSections(d._localDescription.sdp);g[f.candidate.sdpMLineIndex]+=c?"a=end-of-candidates\r\n":"a="+f.candidate.candidate+"\r\n";d._localDescription.sdp=G.getDescription(d._localDescription.sdp)+g.join("");g=d.transceivers.every(function(a){return a.iceGatherer&&"completed"===a.iceGatherer.state});"gathering"!==d.iceGatheringState&&(d.iceGatheringState="gathering",d._emitGatheringStateChange());c||d._dispatchEvent("icecandidate",
f);g&&(d._dispatchEvent("icecandidate",new Event("icecandidate")),d.iceGatheringState="complete",d._emitGatheringStateChange())}};c.setTimeout(function(){f.forEach(function(a){e.onlocalcandidate(a)})},0)}};e.prototype._createIceAndDtlsTransports=function(){var a=this,b=new c.RTCIceTransport(null);b.onicestatechange=function(){a._updateIceConnectionState();a._updateConnectionState()};var d=new c.RTCDtlsTransport(b);return d.ondtlsstatechange=function(){a._updateConnectionState()},d.onerror=function(){Object.defineProperty(d,
"state",{value:"failed",writable:!0});a._updateConnectionState()},{iceTransport:b,dtlsTransport:d}};e.prototype._disposeIceAndDtlsTransports=function(a){var b=this.transceivers[a].iceGatherer;b&&(delete b.onlocalcandidate,delete this.transceivers[a].iceGatherer);(b=this.transceivers[a].iceTransport)&&(delete b.onicestatechange,delete this.transceivers[a].iceTransport);(b=this.transceivers[a].dtlsTransport)&&(delete b.ondtlsstatechange,delete b.onerror,delete this.transceivers[a].dtlsTransport)};e.prototype._transceive=
function(b,c,d){var e=Gd(b.localCapabilities,b.remoteCapabilities);c&&b.rtpSender&&(e.encodings=b.sendEncodingParameters,e.rtcp={cname:G.localCName,compound:b.rtcpParameters.compound},b.recvEncodingParameters.length&&(e.rtcp.ssrc=b.recvEncodingParameters[0].ssrc),b.rtpSender.send(e));d&&b.rtpReceiver&&0<e.codecs.length&&("video"===b.kind&&b.recvEncodingParameters&&15019>a&&b.recvEncodingParameters.forEach(function(a){delete a.rtx}),b.recvEncodingParameters.length?e.encodings=b.recvEncodingParameters:
e.encodings=[{}],e.rtcp={compound:b.rtcpParameters.compound},b.rtcpParameters.cname&&(e.rtcp.cname=b.rtcpParameters.cname),b.sendEncodingParameters.length&&(e.rtcp.ssrc=b.sendEncodingParameters[0].ssrc),b.rtpReceiver.receive(e))};e.prototype.setLocalDescription=function(a){var b=this;if(-1===["offer","answer"].indexOf(a.type))return Promise.reject(La("TypeError",'Unsupported type "'+a.type+'"'));if(!Sg("setLocalDescription",a.type,b.signalingState)||b._isClosed)return Promise.reject(La("InvalidStateError",
"Can not set local "+a.type+" in state "+b.signalingState));if("offer"===a.type){var c=G.splitSections(a.sdp);var d=c.shift();c.forEach(function(a,c){a=G.parseRtpParameters(a);b.transceivers[c].localCapabilities=a});b.transceivers.forEach(function(a,c){b._gather(a.mid,c)})}else if("answer"===a.type){c=G.splitSections(b._remoteDescription.sdp);d=c.shift();var e=0<G.matchPrefix(d,"a=ice-lite").length;c.forEach(function(a,c){var f=b.transceivers[c],g=f.iceGatherer,k=f.iceTransport,q=f.dtlsTransport,
h=f.localCapabilities,w=f.remoteCapabilities;if(!(G.isRejected(a)&&0===G.matchPrefix(a,"a=bundle-only").length||f.rejected)){var l=G.getIceParameters(a,d);a=G.getDtlsParameters(a,d);e&&(a.role="server");b.usingBundle&&0!==c||(b._gather(f.mid,c),"new"===k.state&&k.start(g,l,e?"controlling":"controlled"),"new"===q.state&&q.start(a));c=Gd(h,w);b._transceive(f,0<c.codecs.length,!1)}})}return b._localDescription={type:a.type,sdp:a.sdp},"offer"===a.type?b._updateSignalingState("have-local-offer"):b._updateSignalingState("stable"),
Promise.resolve()};e.prototype.setRemoteDescription=function(e){var f=this;if(-1===["offer","answer"].indexOf(e.type))return Promise.reject(La("TypeError",'Unsupported type "'+e.type+'"'));if(!Sg("setRemoteDescription",e.type,f.signalingState)||f._isClosed)return Promise.reject(La("InvalidStateError","Can not set remote "+e.type+" in state "+f.signalingState));var g={};f.remoteStreams.forEach(function(a){g[a.id]=a});var h=[],l=G.splitSections(e.sdp),m=l.shift(),p=0<G.matchPrefix(m,"a=ice-lite").length,
n=0<G.matchPrefix(m,"a=group:BUNDLE ").length;f.usingBundle=n;var r=G.matchPrefix(m,"a=ice-options:")[0];return f.canTrickleIceCandidates=!!r&&0<=r.substr(14).split(" ").indexOf("trickle"),l.forEach(function(d,k){var q=G.splitLines(d),w=G.getKind(d),l=G.isRejected(d)&&0===G.matchPrefix(d,"a=bundle-only").length,E=q[0].substr(2).split(" ")[2];q=G.getDirection(d,m);var ia=G.parseMsid(d),F=G.getMid(d)||G.generateIdentifier();if(l||"application"===w&&("DTLS/SCTP"===E||"UDP/DTLS/SCTP"===E))f.transceivers[k]=
{mid:F,kind:w,protocol:E,rejected:!0};else{var r,za;!l&&f.transceivers[k]&&f.transceivers[k].rejected&&(f.transceivers[k]=f._createTransceiver(w,!0));var t,Gg,u=G.parseRtpParameters(d);l||(t=G.getIceParameters(d,m),(Gg=G.getDtlsParameters(d,m)).role="client");E=G.parseRtpEncodingParameters(d);var v=G.parseRtcpParameters(d),pa=0<G.matchPrefix(d,"a=end-of-candidates",m).length;d=G.matchPrefix(d,"a=candidate:").map(function(a){return G.parseCandidate(a)}).filter(function(a){return 1===a.component});
if(("offer"===e.type||"answer"===e.type)&&!l&&n&&0<k&&f.transceivers[k]&&(f._disposeIceAndDtlsTransports(k),f.transceivers[k].iceGatherer=f.transceivers[0].iceGatherer,f.transceivers[k].iceTransport=f.transceivers[0].iceTransport,f.transceivers[k].dtlsTransport=f.transceivers[0].dtlsTransport,f.transceivers[k].rtpSender&&f.transceivers[k].rtpSender.setTransport(f.transceivers[0].dtlsTransport),f.transceivers[k].rtpReceiver&&f.transceivers[k].rtpReceiver.setTransport(f.transceivers[0].dtlsTransport)),
"offer"!==e.type||l){if("answer"===e.type&&!l){w=(r=f.transceivers[k]).iceGatherer;var x=r.iceTransport;var z=r.dtlsTransport;var y=r.rtpReceiver;l=r.sendEncodingParameters;F=r.localCapabilities;f.transceivers[k].recvEncodingParameters=E;f.transceivers[k].remoteCapabilities=u;f.transceivers[k].rtcpParameters=v;d.length&&"new"===x.state&&(!p&&!pa||n&&0!==k?d.forEach(function(a){Ee(r.iceTransport,a)}):x.setRemoteCandidates(d));n&&0!==k||("new"===x.state&&x.start(w,t,"controlling"),"new"===z.state&&
z.start(Gg));!Gd(r.localCapabilities,r.remoteCapabilities).codecs.filter(function(a){return"rtx"===a.name.toLowerCase()}).length&&r.sendEncodingParameters[0].rtx&&delete r.sendEncodingParameters[0].rtx;f._transceive(r,"sendrecv"===q||"recvonly"===q,"sendrecv"===q||"sendonly"===q);!y||"sendrecv"!==q&&"sendonly"!==q?delete r.rtpReceiver:(za=y.track,ia?(g[ia.stream]||(g[ia.stream]=new c.MediaStream),b(za,g[ia.stream]),h.push([za,y,g[ia.stream]])):(g.default||(g.default=new c.MediaStream),b(za,g.default),
h.push([za,y,g.default])))}}else{(r=f.transceivers[k]||f._createTransceiver(w)).mid=F;r.iceGatherer||(r.iceGatherer=f._createIceGatherer(k,n));d.length&&"new"===r.iceTransport.state&&(!pa||n&&0!==k?d.forEach(function(a){Ee(r.iceTransport,a)}):r.iceTransport.setRemoteCandidates(d));F=c.RTCRtpReceiver.getCapabilities(w);15019>a&&(F.codecs=F.codecs.filter(function(a){return"rtx"!==a.name}));l=r.sendEncodingParameters||[{ssrc:1001*(2*k+2)}];t=!1;if("sendrecv"===q||"sendonly"===q){if(t=!r.rtpReceiver,
y=r.rtpReceiver||new c.RTCRtpReceiver(r.dtlsTransport,w),t)za=y.track,ia&&"-"===ia.stream||(ia?(g[ia.stream]||(g[ia.stream]=new c.MediaStream,Object.defineProperty(g[ia.stream],"id",{get:function(){return ia.stream}})),Object.defineProperty(za,"id",{get:function(){return ia.track}}),x=g[ia.stream]):(g.default||(g.default=new c.MediaStream),x=g.default)),x&&(b(za,x),r.associatedRemoteMediaStreams.push(x)),h.push([za,y,x])}else r.rtpReceiver&&r.rtpReceiver.track&&(r.associatedRemoteMediaStreams.forEach(function(a){var b=
a.getTracks().find(function(a){return a.id===r.rtpReceiver.track.id});b&&function(a,b){b.removeTrack(a);b.dispatchEvent(new c.MediaStreamTrackEvent("removetrack",{track:a}))}(b,a)}),r.associatedRemoteMediaStreams=[]);r.localCapabilities=F;r.remoteCapabilities=u;r.rtpReceiver=y;r.rtcpParameters=v;r.sendEncodingParameters=l;r.recvEncodingParameters=E;f._transceive(f.transceivers[k],!1,t)}}}),void 0===f._dtlsRole&&(f._dtlsRole="offer"===e.type?"active":"passive"),f._remoteDescription={type:e.type,sdp:e.sdp},
"offer"===e.type?f._updateSignalingState("have-remote-offer"):f._updateSignalingState("stable"),Object.keys(g).forEach(function(a){var b=g[a];if(b.getTracks().length){if(-1===f.remoteStreams.indexOf(b)){f.remoteStreams.push(b);var e=new Event("addstream");e.stream=b;c.setTimeout(function(){f._dispatchEvent("addstream",e)})}h.forEach(function(a){var c=a[0],e=a[1];b.id===a[2].id&&d(f,c,e,[b])})}}),h.forEach(function(a){a[2]||d(f,a[0],a[1],[])}),c.setTimeout(function(){f&&f.transceivers&&f.transceivers.forEach(function(a){a.iceTransport&&
"new"===a.iceTransport.state&&0<a.iceTransport.getRemoteCandidates().length&&(console.warn("Timeout for addRemoteCandidate. Consider sending an end-of-candidates notification"),a.iceTransport.addRemoteCandidate({}))})},4E3),Promise.resolve()};e.prototype.close=function(){this.transceivers.forEach(function(a){a.iceTransport&&a.iceTransport.stop();a.dtlsTransport&&a.dtlsTransport.stop();a.rtpSender&&a.rtpSender.stop();a.rtpReceiver&&a.rtpReceiver.stop()});this._isClosed=!0;this._updateSignalingState("closed")};
e.prototype._updateSignalingState=function(a){this.signalingState=a;a=new Event("signalingstatechange");this._dispatchEvent("signalingstatechange",a)};e.prototype._maybeFireNegotiationNeeded=function(){var a=this;"stable"===this.signalingState&&!0!==this.needNegotiation&&(this.needNegotiation=!0,c.setTimeout(function(){if(a.needNegotiation){a.needNegotiation=!1;var b=new Event("negotiationneeded");a._dispatchEvent("negotiationneeded",b)}},0))};e.prototype._updateIceConnectionState=function(){var a,
b={new:0,closed:0,checking:0,connected:0,completed:0,disconnected:0,failed:0};if(this.transceivers.forEach(function(a){a.iceTransport&&!a.rejected&&b[a.iceTransport.state]++}),a="new",0<b.failed?a="failed":0<b.checking?a="checking":0<b.disconnected?a="disconnected":0<b.new?a="new":0<b.connected?a="connected":0<b.completed&&(a="completed"),a!==this.iceConnectionState)this.iceConnectionState=a,a=new Event("iceconnectionstatechange"),this._dispatchEvent("iceconnectionstatechange",a)};e.prototype._updateConnectionState=
function(){var a,b={new:0,closed:0,connecting:0,connected:0,completed:0,disconnected:0,failed:0};if(this.transceivers.forEach(function(a){a.iceTransport&&a.dtlsTransport&&!a.rejected&&(b[a.iceTransport.state]++,b[a.dtlsTransport.state]++)}),b.connected+=b.completed,a="new",0<b.failed?a="failed":0<b.connecting?a="connecting":0<b.disconnected?a="disconnected":0<b.new?a="new":0<b.connected&&(a="connected"),a!==this.connectionState)this.connectionState=a,a=new Event("connectionstatechange"),this._dispatchEvent("connectionstatechange",
a)};e.prototype.createOffer=function(b){var d=this;if(d._isClosed)return Promise.reject(La("InvalidStateError","Can not call createOffer after close"));var e=d.transceivers.filter(function(a){return"audio"===a.kind}).length,f=d.transceivers.filter(function(a){return"video"===a.kind}).length;if(b){if(b.mandatory||b.optional)throw new TypeError("Legacy mandatory/optional constraints not supported.");void 0!==b.offerToReceiveAudio&&(e=!0===b.offerToReceiveAudio?1:!1===b.offerToReceiveAudio?0:b.offerToReceiveAudio);
void 0!==b.offerToReceiveVideo&&(f=!0===b.offerToReceiveVideo?1:!1===b.offerToReceiveVideo?0:b.offerToReceiveVideo)}for(d.transceivers.forEach(function(a){"audio"===a.kind?0>--e&&(a.wantReceive=!1):"video"===a.kind&&0>--f&&(a.wantReceive=!1)});0<e||0<f;)0<e&&(d._createTransceiver("audio"),e--),0<f&&(d._createTransceiver("video"),f--);var g=G.writeSessionBoilerplate(d._sdpSessionId,d._sdpSessionVersion++);d.transceivers.forEach(function(b,e){var f=b.track,g=b.kind,k=b.mid||G.generateIdentifier();b.mid=
k;b.iceGatherer||(b.iceGatherer=d._createIceGatherer(e,d.usingBundle));k=c.RTCRtpSender.getCapabilities(g);15019>a&&(k.codecs=k.codecs.filter(function(a){return"rtx"!==a.name}));k.codecs.forEach(function(a){"H264"===a.name&&void 0===a.parameters["level-asymmetry-allowed"]&&(a.parameters["level-asymmetry-allowed"]="1");b.remoteCapabilities&&b.remoteCapabilities.codecs&&b.remoteCapabilities.codecs.forEach(function(b){a.name.toLowerCase()===b.name.toLowerCase()&&a.clockRate===b.clockRate&&(a.preferredPayloadType=
b.payloadType)})});k.headerExtensions.forEach(function(a){(b.remoteCapabilities&&b.remoteCapabilities.headerExtensions||[]).forEach(function(b){a.uri===b.uri&&(a.id=b.id)})});e=b.sendEncodingParameters||[{ssrc:1001*(2*e+1)}];f&&15019<=a&&"video"===g&&!e[0].rtx&&(e[0].rtx={ssrc:e[0].ssrc+1});b.wantReceive&&(b.rtpReceiver=new c.RTCRtpReceiver(b.dtlsTransport,g));b.localCapabilities=k;b.sendEncodingParameters=e});"max-compat"!==d._config.bundlePolicy&&(g+="a=group:BUNDLE "+d.transceivers.map(function(a){return a.mid}).join(" ")+
"\r\n");g+="a=ice-options:trickle\r\n";d.transceivers.forEach(function(a,b){g+=Rg(a,a.localCapabilities,"offer",a.stream,d._dtlsRole);g+="a=rtcp-rsize\r\n";!a.iceGatherer||"new"===d.iceGatheringState||0!==b&&d.usingBundle||(a.iceGatherer.getLocalCandidates().forEach(function(a){a.component=1;g+="a="+G.writeCandidate(a)+"\r\n"}),"completed"===a.iceGatherer.state&&(g+="a=end-of-candidates\r\n"))});b=new c.RTCSessionDescription({type:"offer",sdp:g});return Promise.resolve(b)};e.prototype.createAnswer=
function(){var b=this;if(b._isClosed)return Promise.reject(La("InvalidStateError","Can not call createAnswer after close"));if("have-remote-offer"!==b.signalingState&&"have-local-pranswer"!==b.signalingState)return Promise.reject(La("InvalidStateError","Can not call createAnswer in signalingState "+b.signalingState));var d=G.writeSessionBoilerplate(b._sdpSessionId,b._sdpSessionVersion++);b.usingBundle&&(d+="a=group:BUNDLE "+b.transceivers.map(function(a){return a.mid}).join(" ")+"\r\n");d+="a=ice-options:trickle\r\n";
var e=G.getMediaSections(b._remoteDescription.sdp).length;b.transceivers.forEach(function(c,f){if(!(f+1>e)){if(c.rejected)return"application"===c.kind?"DTLS/SCTP"===c.protocol?d+="m=application 0 DTLS/SCTP 5000\r\n":d+="m=application 0 "+c.protocol+" webrtc-datachannel\r\n":"audio"===c.kind?d+="m=audio 0 UDP/TLS/RTP/SAVPF 0\r\na=rtpmap:0 PCMU/8000\r\n":"video"===c.kind&&(d+="m=video 0 UDP/TLS/RTP/SAVPF 120\r\na=rtpmap:120 VP8/90000\r\n"),void(d+="c=IN IP4 0.0.0.0\r\na=inactive\r\na=mid:"+c.mid+"\r\n");
var g;c.stream&&("audio"===c.kind?g=c.stream.getAudioTracks()[0]:"video"===c.kind&&(g=c.stream.getVideoTracks()[0]),g&&15019<=a&&"video"===c.kind&&!c.sendEncodingParameters[0].rtx&&(c.sendEncodingParameters[0].rtx={ssrc:c.sendEncodingParameters[0].ssrc+1}));f=Gd(c.localCapabilities,c.remoteCapabilities);!f.codecs.filter(function(a){return"rtx"===a.name.toLowerCase()}).length&&c.sendEncodingParameters[0].rtx&&delete c.sendEncodingParameters[0].rtx;d+=Rg(c,f,"answer",c.stream,b._dtlsRole);c.rtcpParameters&&
c.rtcpParameters.reducedSize&&(d+="a=rtcp-rsize\r\n")}});var f=new c.RTCSessionDescription({type:"answer",sdp:d});return Promise.resolve(f)};e.prototype.addIceCandidate=function(a){var b,c=this;return a&&void 0===a.sdpMLineIndex&&!a.sdpMid?Promise.reject(new TypeError("sdpMLineIndex or sdpMid required")):new Promise(function(d,e){if(!c._remoteDescription)return e(La("InvalidStateError","Can not add ICE candidate without a remote description"));if(a&&""!==a.candidate){var f=a.sdpMLineIndex;if(a.sdpMid)for(var g=
0;g<c.transceivers.length;g++)if(c.transceivers[g].mid===a.sdpMid){f=g;break}var k=c.transceivers[f];if(!k)return e(La("OperationError","Can not add ICE candidate"));if(k.rejected)return d();g=0<Object.keys(a.candidate).length?G.parseCandidate(a.candidate):{};if("tcp"===g.protocol&&(0===g.port||9===g.port)||g.component&&1!==g.component)return d();if((0===f||0<f&&k.iceTransport!==c.transceivers[0].iceTransport)&&!Ee(k.iceTransport,g))return e(La("OperationError","Can not add ICE candidate"));e=a.candidate.trim();
0===e.indexOf("a=")&&(e=e.substr(2));(b=G.getMediaSections(c._remoteDescription.sdp))[f]+="a="+(g.type?e:"end-of-candidates")+"\r\n";c._remoteDescription.sdp=G.getDescription(c._remoteDescription.sdp)+b.join("")}else for(f=0;f<c.transceivers.length&&(c.transceivers[f].rejected||(c.transceivers[f].iceTransport.addRemoteCandidate({}),(b=G.getMediaSections(c._remoteDescription.sdp))[f]+="a=end-of-candidates\r\n",c._remoteDescription.sdp=G.getDescription(c._remoteDescription.sdp)+b.join(""),!c.usingBundle));f++);
d()})};e.prototype.getStats=function(a){if(a&&a instanceof c.MediaStreamTrack){var b=null;if(this.transceivers.forEach(function(c){c.rtpSender&&c.rtpSender.track===a?b=c.rtpSender:c.rtpReceiver&&c.rtpReceiver.track===a&&(b=c.rtpReceiver)}),!b)throw La("InvalidAccessError","Invalid selector.");return b.getStats()}var d=[];return this.transceivers.forEach(function(a){["rtpSender","rtpReceiver","iceGatherer","iceTransport","dtlsTransport"].forEach(function(b){a[b]&&d.push(a[b].getStats())})}),Promise.all(d).then(function(a){var b=
new Map;return a.forEach(function(a){a.forEach(function(a){b.set(a.id,a)})}),b})};["RTCRtpSender","RTCRtpReceiver","RTCIceGatherer","RTCIceTransport","RTCDtlsTransport"].forEach(function(a){if((a=c[a])&&a.prototype&&a.prototype.getStats){var b=a.prototype.getStats;a.prototype.getStats=function(){return b.apply(this).then(function(a){var b=new Map;return Object.keys(a).forEach(function(c){var d=a[c];a[c].type={inboundrtp:"inbound-rtp",outboundrtp:"outbound-rtp",candidatepair:"candidate-pair",localcandidate:"local-candidate",
remotecandidate:"remote-candidate"}[d.type]||d.type;b.set(c,a[c])}),b})}}});var f=["createOffer","createAnswer"];return f.forEach(function(a){var b=e.prototype[a];e.prototype[a]=function(){var a=arguments;return"function"==typeof a[0]||"function"==typeof a[1]?b.apply(this,[arguments[2]]).then(function(b){"function"==typeof a[0]&&a[0].apply(null,[b])},function(b){"function"==typeof a[1]&&a[1].apply(null,[b])}):b.apply(this,arguments)}}),(f=["setLocalDescription","setRemoteDescription","addIceCandidate"]).forEach(function(a){var b=
e.prototype[a];e.prototype[a]=function(){var a=arguments;return"function"==typeof a[1]||"function"==typeof a[2]?b.apply(this,arguments).then(function(){"function"==typeof a[1]&&a[1].apply(null)},function(b){"function"==typeof a[2]&&a[2].apply(null,[b])}):b.apply(this,arguments)}}),["getStats"].forEach(function(a){var b=e.prototype[a];e.prototype[a]=function(){var a=arguments;return"function"==typeof a[1]?b.apply(this,arguments).then(function(){"function"==typeof a[1]&&a[1].apply(null)}):b.apply(this,
arguments)}}),e},ik=Object.freeze({__proto__:null,shimPeerConnection:Fe,shimReplaceTrack:Vg,shimGetUserMedia:Tg,shimGetDisplayMedia:Ug}),jk=Object.freeze({__proto__:null,shimOnTrack:Xg,shimPeerConnection:Ge,shimSenderGetStats:Yg,shimReceiverGetStats:Zg,shimRemoveStream:$g,shimRTCDataChannel:ah,shimGetUserMedia:Wg,shimGetDisplayMedia:function(c,a){c.navigator.mediaDevices&&"getDisplayMedia"in c.navigator.mediaDevices||c.navigator.mediaDevices&&(c.navigator.mediaDevices.getDisplayMedia=function(b){return b&&
b.video?(!0===b.video?b.video={mediaSource:a}:b.video.mediaSource=a,c.navigator.mediaDevices.getUserMedia(b)):(b=new DOMException("getDisplayMedia without video constraints is undefined"),b.name="NotFoundError",b.code=8,x.reject(b))})}}),kk=Object.freeze({__proto__:null,shimLocalStreamsAPI:bh,shimRemoteStreamsAPI:ch,shimCallbacksAPI:dh,shimGetUserMedia:eh,shimConstraints:fh,shimRTCIceServerUrls:gh,shimTrackEventTransceiver:hh,shimCreateOfferLegacy:ih}),Mo=Object.freeze({__proto__:null,shimRTCIceCandidate:Hd,
shimMaxMessageSize:Vc,shimSendThrowTypeError:Wc,shimConnectionState:He,removeAllowExtmapMixed:Ie});(function({window:c}={},a={shimChrome:!0,shimFirefox:!0,shimEdge:!0,shimSafari:!0}){let b=Nb(c),d={browserDetails:b,commonShim:Mo,extractVersion:Mb,disableLog:tl,disableWarnings:ul};switch(b.browser){case "chrome":if(!ek||!De||!a.shimChrome)return sb("Chrome shim is not included in this adapter release."),d;sb("adapter.js shimming chrome.");d.browserShim=ek;Fg(c);Jg(c);De(c);Kg(c);Pg(c);Lg(c);Mg(c);
Ng(c);Qg(c);Hd(c);He(c);Vc(c);Wc(c);Ie(c);break;case "firefox":if(!jk||!Ge||!a.shimFirefox)return sb("Firefox shim is not included in this adapter release."),d;sb("adapter.js shimming firefox.");d.browserShim=jk;Wg(c);Ge(c);Xg(c);$g(c);Yg(c);Zg(c);ah(c);Hd(c);He(c);Vc(c);Wc(c);break;case "edge":if(!ik||!Fe||!a.shimEdge)return sb("MS edge shim is not included in this adapter release."),d;sb("adapter.js shimming edge.");d.browserShim=ik;Tg(c);Ug(c);Fe(c);Vg(c);Vc(c);Wc(c);break;case "safari":if(!kk||
!a.shimSafari)return sb("Safari shim is not included in this adapter release."),d;sb("adapter.js shimming safari.");d.browserShim=kk;gh(c);ih(c);dh(c);bh(c);ch(c);hh(c);eh(c);Hd(c);Vc(c);Wc(c);Ie(c);break;default:sb("Unsupported browser!")}return d})({window});var X,ba;!function(c){c.WIN_10="Windows 10";c.WIN_81="Windows 8.1";c.WIN_8="Windows 8";c.WIN_7="Windows 7";c.WIN_VISTA="Windows Vista";c.WIN_SERVER_2003="Windows Server 2003";c.WIN_XP="Windows XP";c.WIN_2000="Windows 2000";c.ANDROID="Android";
c.OPEN_BSD="Open BSD";c.SUN_OS="Sun OS";c.LINUX="Linux";c.IOS="iOS";c.MAC_OS_X="Mac OS X";c.MAC_OS="Mac OS";c.QNX="QNX";c.UNIX="UNIX";c.BEOS="BeOS";c.OS_2="OS/2";c.SEARCH_BOT="Search Bot"}(X||(X={}));(function(c){c.CHROME="Chrome";c.SAFARI="Safari";c.EDGE="Edge";c.FIREFOX="Firefox";c.OPERA="OPR";c.QQ="QQBrowser";c.WECHAT="MicroMessenger"})(ba||(ba={}));let fb=function(c){if(c.match(/[0-9]+\.[0-9]+\.[0-9]+$/))return c;var a=c.match(/([0-9]+\.[0-9]+\.[0-9]+)\-alpha\.([0-9]+)/);if(a&&a[1]&&a[2]){var b,
d=a[2];return p(b="".concat(a[1],".")).call(b,d)}return(a=c.match(/([0-9]+\.[0-9]+\.[0-9]+)\-special\.([0-9]+)/))&&a[1]&&a[2]?(b=a[2],p(d="".concat(a[1],".")).call(d,100*(Number(b)+1))):"4.0.0.999"}("4.3.0");try{var lk=!0===JSON.parse("true")}catch(c){lk=!0}let ad=lk,gb={username:"test",password:"111111",turnServerURL:"",tcpport:3433,udpport:3478,forceturn:!1},yl={"90p":I(160,90),"90p_1":I(160,90),"120p":I(160,120,15,30,65),"120p_1":I(160,120,15,30,65),"120p_3":I(120,120,15,30,50),"120p_4":I(212,
120),"180p":I(320,180,15,30,140),"180p_1":I(320,180,15,30,140),"180p_3":I(180,180,15,30,100),"180p_4":I(240,180,15,30,120),"240p":I(320,240,15,40,200),"240p_1":I(320,240,15,40,200),"240p_3":I(240,240,15,40,140),"240p_4":I(424,240,15,40,220),"360p":I(640,360,15,80,400),"360p_1":I(640,360,15,80,400),"360p_3":I(360,360,15,80,260),"360p_4":I(640,360,30,80,600),"360p_6":I(360,360,30,80,400),"360p_7":I(480,360,15,80,320),"360p_8":I(480,360,30,80,490),"360p_9":I(640,360,15,80,800),"360p_10":I(640,360,24,
80,800),"360p_11":I(640,360,24,80,1E3),"480p":I(640,480,15,100,500),"480p_1":I(640,480,15,100,500),"480p_2":I(640,480,30,100,1E3),"480p_3":I(480,480,15,100,400),"480p_4":I(640,480,30,100,750),"480p_6":I(480,480,30,100,600),"480p_8":I(848,480,15,100,610),"480p_9":I(848,480,30,100,930),"480p_10":I(640,480,10,100,400),"720p":I(1280,720,15,120,1130),"720p_1":I(1280,720,15,120,1130),"720p_2":I(1280,720,30,120,2E3),"720p_3":I(1280,720,30,120,1710),"720p_5":I(960,720,15,120,910),"720p_6":I(960,720,30,120,
1380),"1080p":I(1920,1080,15,120,2080),"1080p_1":I(1920,1080,15,120,2080),"1080p_2":I(1920,1080,30,120,3E3),"1080p_3":I(1920,1080,30,120,3150),"1080p_5":I(1920,1080,60,120,4780),"1440p":I(2560,1440,30,120,4850),"1440p_1":I(2560,1440,30,120,4850),"1440p_2":I(2560,1440,60,120,7350),"4k":I(3840,2160,30,120,8910),"4k_1":I(3840,2160,30,120,8910),"4k_3":I(3840,2160,60,120,13500)},zl={"480p":Ob(640,480,5),"480p_1":Ob(640,480,5),"480p_2":Ob(640,480,30),"720p":Ob(1280,720,5),"720p_1":Ob(1280,720,5),"720p_2":Ob(1280,
720,30),"1080p":Ob(1920,1080,5),"1080p_1":Ob(1920,1080,5),"1080p_2":Ob(1920,1080,30)},Al={speech_low_quality:yc(16E3,!1),speech_standard:yc(32E3,!1,18),music_standard:yc(48E3,!1),standard_stereo:yc(48E3,!0,56),high_quality:yc(48E3,!1,128),high_quality_stereo:yc(48E3,!0,192)},u={PROCESS_ID:"",ENCRYPT_AES:!0,AREAS:["CHINA","GLOBAL"],WEBCS_DOMAIN:["webrtc2-ap-web-1.agora.io","webrtc2-ap-web-2.agoraio.cn"],WEBCS_DOMAIN_BACKUP_LIST:["webrtc2-ap-web-3.agora.io","webrtc2-ap-web-4.agoraio.cn"],PROXY_CS:["ap-proxy-1.agora.io",
"ap-proxy-2.agora.io"],CDS_AP:["cds-ap-web-1.agora.io","cds-ap-web-2.agoraio.cn","cds-ap-web-3.agora.io","cds-ap-web-4.agoraio.cn"],ACCOUNT_REGISTER:["sua-ap-web-1.agora.io","sua-ap-web-2.agoraio.cn","sua-ap-web-3.agora.io","sua-ap-web-4.agoraio.cn"],UAP_AP:["uap-ap-web-1.agora.io","uap-ap-web-2.agoraio.cn","uap-ap-web-3.agora.io","uap-ap-web-4.agoraio.cn"],LOG_UPLOAD_SERVER:"logservice.agora.io",EVENT_REPORT_DOMAIN:"statscollector-1.agora.io",EVENT_REPORT_BACKUP_DOMAIN:"statscollector-2.agoraio.cn",
GATEWAY_ADDRESS:[],GATEWAY_WSS_ADDRESS:"",LIVE_STREAMING_ADDRESS:"",ACCOUNT_REGISTER_RETRY_TIMEOUT:1,ACCOUNT_REGISTER_RETRY_RATIO:2,ACCOUNT_REGISTER_RETRY_TIMEOUT_MAX:6E4,ACCOUNT_REGISTER_RETRY_COUNT_MAX:1E5,AUDIO_CONTEXT:null,WEBCS_BACKUP_CONNECT_TIMEOUT:6E3,HTTP_CONNECT_TIMEOUT:5E3,PLAYER_STATE_DEFER:2E3,SIGNAL_REQUEST_TIMEOUT:1E4,SIGNAL_REQUEST_WATCH_INTERVAL:1E3,REPORT_STATS:!0,UPLOAD_LOG:!1,NOT_REPORT_EVENT:[],FILEPATH_LENMAX:255,SUBSCRIBE_TCC:!0,PING_PONG_TIME_OUT:10,DUALSTREAM_OPERATION_CHECK:!0,
WEBSOCKET_TIMEOUT_MIN:1E4,EVENT_REPORT_SEND_INTERVAL:3E3,MEDIA_ELEMENT_EXISTS_DEPTH:3,CANDIDATE_TIMEOUT:5E3,SHIM_CANDIDATE:!1,LEAVE_MSG_TIMEOUT:2E3,SHOW_REPORT_INVOKER_LOG:!1,STATS_FILTER:{transportId:!0,googTrackId:!0},JOIN_EXTEND:"",PUB_EXTEND:"",SUB_EXTEND:"",FORCE_TURN:!1,TURN_ENABLE_TCP:!0,TURN_ENABLE_UDP:!0,MAX_UPLOAD_CACHE:50,UPLOAD_CACHE_INTERVAL:2E3,CHROME_FORCE_PLAN_B:!1,AUDIO_SOURCE_VOLUME_UPDATE_INTERVAL:400,AUDIO_SOURCE_AVG_VOLUME_DURATION:3E3,AUDIO_VOLUME_INDICATION_INTERVAL:2E3,NORMAL_EVENT_QUEUE_CAPACITY:100,
CUSTOM_REPORT:!0,CUSTOM_REPORT_LIMIT:20,PROXY_SERVER_TYPE2:"webnginx-proxy.agora.io",PROXY_SERVER_TYPE3:"webrtc-cloud-proxy.sd-rtn.com",CUSTOM_PUB_ANSWER_MODIFIER:null,CUSTOM_SUB_ANSWER_MODIFIER:null,CUSTOM_PUB_OFFER_MODIFIER:null,CUSTOM_SUB_OFFER_MODIFIER:null};ad||(u.WEBCS_DOMAIN=["ap-web-1-oversea.agora.io","ap-web-1-north-america.agora.io"],u.WEBCS_DOMAIN_BACKUP_LIST=["ap-web-2-oversea.agora.io","ap-web-2-north-america.agora.io"],u.PROXY_CS=["proxy-ap-web-oversea.agora.io","proxy-ap-web-america.agora.io"],
u.CDS_AP=["cds-ap-web-oversea.agora.io","cds-ap-web-america.agora.io","cds-ap-web-america2.agora.io"],u.ACCOUNT_REGISTER=["sua-ap-web-oversea.agora.io","sua-ap-web-america.agora.io","sua-ap-web-america2.agora.io"],u.UAP_AP=["uap-ap-web-oversea.agora.io","uap-ap-web-america.agora.io","uap-ap-web-america2.agora.io"],u.LOG_UPLOAD_SERVER="logservice-oversea.agora.io",u.EVENT_REPORT_DOMAIN="statscollector-1-oversea.agora.io",u.EVENT_REPORT_BACKUP_DOMAIN="statscollector-2-oversea.agora.io",u.PROXY_SERVER_TYPE3=
"webrtc-cloud-proxy.agora.io",u.AREAS=["NORTH_AMERICA","OVERSEA"]);let No=[[0,1,2,3,4,5,5],[0,2,2,3,4,5,5],[0,3,3,3,4,5,5],[0,4,4,4,4,5,5],[0,5,5,5,5,5,5]],mk=[];var dg=[],nk=dg.sort,Oo=ta(function(){dg.sort(void 0)}),Po=ta(function(){dg.sort(null)}),Qo=nd("sort");M({target:"Array",proto:!0,forced:Oo||!Po||Qo},{sort:function(c){return void 0===c?nk.call(xb(this)):nk.call(xb(this),ub(c))}});var Ro=Fa("Array").sort,ok=Array.prototype,vd=function(c){var a=c.sort;return c===ok||c instanceof Array&&a===
ok.sort?Ro:a};M({target:"Array",stat:!0},{isArray:nc});var hc=ha.Array.isArray,m;!function(c){c.UNEXPECTED_ERROR="UNEXPECTED_ERROR";c.UNEXPECTED_RESPONSE="UNEXPECTED_RESPONSE";c.TIMEOUT="TIMEOUT";c.INVALID_PARAMS="INVALID_PARAMS";c.NOT_SUPPORTED="NOT_SUPPORTED";c.INVALID_OPERATION="INVALID_OPERATION";c.OPERATION_ABORTED="OPERATION_ABORTED";c.WEB_SECURITY_RESTRICT="WEB_SECURITY_RESTRICT";c.NETWORK_ERROR="NETWORK_ERROR";c.NETWORK_TIMEOUT="NETWORK_TIMEOUT";c.NETWORK_RESPONSE_ERROR="NETWORK_RESPONSE_ERROR";
c.API_INVOKE_TIMEOUT="API_INVOKE_TIMEOUT";c.ENUMERATE_DEVICES_FAILED="ENUMERATE_DEVICES_FAILED";c.DEVICE_NOT_FOUND="DEVICE_NOT_FOUND";c.ELECTRON_IS_NULL="ELECTRON_IS_NULL";c.ELECTRON_DESKTOP_CAPTURER_GET_SOURCES_ERROR="ELECTRON_DESKTOP_CAPTURER_GET_SOURCES_ERROR";c.CHROME_PLUGIN_NO_RESPONSE="CHROME_PLUGIN_NO_RESPONSE";c.CHROME_PLUGIN_NOT_INSTALL="CHROME_PLUGIN_NOT_INSTALL";c.MEDIA_OPTION_INVALID="MEDIA_OPTION_INVALID";c.PERMISSION_DENIED="PERMISSION_DENIED";c.CONSTRAINT_NOT_SATISFIED="CONSTRAINT_NOT_SATISFIED";
c.TRACK_IS_DISABLED="TRACK_IS_DISABLED";c.SHARE_AUDIO_NOT_ALLOWED="SHARE_AUDIO_NOT_ALLOWED";c.LOW_STREAM_ENCODING_ERROR="LOW_STREAM_ENCODING_ERROR";c.INVALID_UINT_UID_FROM_STRING_UID="INVALID_UINT_UID_FROM_STRING_UID";c.CAN_NOT_GET_PROXY_SERVER="CAN_NOT_GET_PROXY_SERVER";c.CAN_NOT_GET_GATEWAY_SERVER="CAN_NOT_GET_GATEWAY_SERVER";c.VOID_GATEWAY_ADDRESS="VOID_GATEWAY_ADDRESS";c.UID_CONFLICT="UID_CONFLICT";c.INVALID_LOCAL_TRACK="INVALID_LOCAL_TRACK";c.INVALID_TRACK="INVALID_TRACK";c.SENDER_NOT_FOUND=
"SENDER_NOT_FOUND";c.CREATE_OFFER_FAILED="CREATE_OFFER_FAILED";c.SET_ANSWER_FAILED="SET_ANSWER_FAILED";c.ICE_FAILED="ICE_FAILED";c.PC_CLOSED="PC_CLOSED";c.SENDER_REPLACE_FAILED="SENDER_REPLACE_FAILED";c.GATEWAY_P2P_LOST="GATEWAY_P2P_LOST";c.NO_ICE_CANDIDATE="NO_ICE_CANDIDATE";c.CAN_NOT_PUBLISH_MULTIPLE_VIDEO_TRACKS="CAN_NOT_PUBLISH_MULTIPLE_VIDEO_TRACKS";c.EXIST_DISABLED_VIDEO_TRACK="EXIST_DISABLED_VIDEO_TRACK";c.INVALID_REMOTE_USER="INVALID_REMOTE_USER";c.REMOTE_USER_IS_NOT_PUBLISHED="REMOTE_USER_IS_NOT_PUBLISHED";
c.CUSTOM_REPORT_SEND_FAILED="CUSTOM_REPORT_SEND_FAILED";c.CUSTOM_REPORT_FREQUENCY_TOO_HIGH="CUSTOM_REPORT_FREQUENCY_TOO_HIGH";c.FETCH_AUDIO_FILE_FAILED="FETCH_AUDIO_FILE_FAILED";c.READ_LOCAL_AUDIO_FILE_ERROR="READ_LOCAL_AUDIO_FILE_ERROR";c.DECODE_AUDIO_FILE_FAILED="DECODE_AUDIO_FILE_FAILED";c.WS_ABORT="WS_ABORT";c.WS_DISCONNECT="WS_DISCONNECT";c.WS_ERR="WS_ERR";c.LIVE_STREAMING_TASK_CONFLICT="LIVE_STREAMING_TASK_CONFLICT";c.LIVE_STREAMING_INVALID_ARGUMENT="LIVE_STREAMING_INVALID_ARGUMENT";c.LIVE_STREAMING_INTERNAL_SERVER_ERROR=
"LIVE_STREAMING_INTERNAL_SERVER_ERROR";c.LIVE_STREAMING_PUBLISH_STREAM_NOT_AUTHORIZED="LIVE_STREAMING_PUBLISH_STREAM_NOT_AUTHORIZED";c.LIVE_STREAMING_TRANSCODING_NOT_SUPPORTED="LIVE_STREAMING_TRANSCODING_NOT_SUPPORTED";c.LIVE_STREAMING_CDN_ERROR="LIVE_STREAMING_CDN_ERROR";c.LIVE_STREAMING_INVALID_RAW_STREAM="LIVE_STREAMING_INVALID_RAW_STREAM";c.LIVE_STREAMING_WARN_STREAM_NUM_REACH_LIMIT="LIVE_STREAMING_WARN_STREAM_NUM_REACH_LIMIT";c.LIVE_STREAMING_WARN_FAILED_LOAD_IMAGE="LIVE_STREAMING_WARN_FAILED_LOAD_IMAGE";
c.LIVE_STREAMING_WARN_FREQUENT_REQUEST="LIVE_STREAMING_WARN_FREQUENT_REQUEST";c.WEBGL_INTERNAL_ERROR="WEBGL_INTERNAL_ERROR";c.BEAUTY_PROCESSOR_INTERNAL_ERROR="BEAUTY_PROCESSOR_INTERNAL_ERROR";c.CROSS_CHANNEL_WAIT_STATUS_ERROR="CROSS_CHANNEL_WAIT_STATUS_ERROR";c.CROSS_CHANNEL_FAILED_JOIN_SRC="CROSS_CHANNEL_FAILED_JOIN_SEC";c.CROSS_CHANNEL_FAILED_JOIN_DEST="CROSS_CHANNEL_FAILED_JOIN_DEST";c.CROSS_CHANNEL_FAILED_PACKET_SENT_TO_DEST="CROSS_CHANNEL_FAILED_PACKET_SENT_TO_DEST";c.CROSS_CHANNEL_SERVER_ERROR_RESPONSE=
"CROSS_CHANNEL_SERVER_ERROR_RESPONSE";c.METADATA_OUT_OF_RANGE="METADATA_OUT_OF_RANGE"}(m||(m={}));var sh=function(c,a){return function(){for(var b=Array(arguments.length),d=0;d<b.length;d++)b[d]=arguments[d];return c.apply(a,b)}},zc=Object.prototype.toString,J={isArray:jh,isArrayBuffer:function(c){return"[object ArrayBuffer]"===zc.call(c)},isBuffer:function(c){return null!=c&&null!=c.constructor&&"function"==typeof c.constructor.isBuffer&&c.constructor.isBuffer(c)},isFormData:function(c){return"undefined"!=
typeof FormData&&c instanceof FormData},isArrayBufferView:function(c){return"undefined"!=typeof ArrayBuffer&&ArrayBuffer.isView?ArrayBuffer.isView(c):c&&c.buffer&&c.buffer instanceof ArrayBuffer},isString:function(c){return"string"==typeof c},isNumber:function(c){return"number"==typeof c},isObject:kh,isUndefined:function(c){return void 0===c},isDate:function(c){return"[object Date]"===zc.call(c)},isFile:function(c){return"[object File]"===zc.call(c)},isBlob:function(c){return"[object Blob]"===zc.call(c)},
isFunction:lh,isStream:function(c){return kh(c)&&lh(c.pipe)},isURLSearchParams:function(c){return"undefined"!=typeof URLSearchParams&&c instanceof URLSearchParams},isStandardBrowserEnv:function(){return("undefined"==typeof navigator||"ReactNative"!==navigator.product&&"NativeScript"!==navigator.product&&"NS"!==navigator.product)&&"undefined"!=typeof window&&"undefined"!=typeof document},forEach:Jd,merge:mh,deepMerge:Ke,extend:function(c,a,b){return Jd(a,function(a,e){c[e]=b&&"function"==typeof a?
sh(a,b):a}),c},trim:function(c){return c.replace(/^\s*/,"").replace(/\s*$/,"")}},pk=function(c,a,b){if(!a)return c;if(b)a=b(a);else if(J.isURLSearchParams(a))a=a.toString();else{var d=[];J.forEach(a,function(a,b){null!=a&&(J.isArray(a)?b+="[]":a=[a],J.forEach(a,function(a){J.isDate(a)?a=a.toISOString():J.isObject(a)&&(a=JSON.stringify(a));d.push(nh(b)+"="+nh(a))}))});a=d.join("&")}a&&(b=c.indexOf("#"),-1!==b&&(c=c.slice(0,b)),c+=(-1===c.indexOf("?")?"?":"&")+a);return c};Kd.prototype.use=function(c,
a){return this.handlers.push({fulfilled:c,rejected:a}),this.handlers.length-1};Kd.prototype.eject=function(c){this.handlers[c]&&(this.handlers[c]=null)};Kd.prototype.forEach=function(c){J.forEach(this.handlers,function(a){null!==a&&c(a)})};var ph=Kd,eg=function(c,a,b){return J.forEach(b,function(b){c=b(c,a)}),c},qk=function(c){return!(!c||!c.__CANCEL__)},rk=function(c,a){J.forEach(c,function(b,d){d!==a&&d.toUpperCase()===a.toUpperCase()&&(c[a]=b,delete c[d])})},te=function(c,a,b,d,e){return c.config=
a,b&&(c.code=b),c.request=d,c.response=e,c.isAxiosError=!0,c.toJSON=function(){return{message:this.message,name:this.name,description:this.description,number:this.number,fileName:this.fileName,lineNumber:this.lineNumber,columnNumber:this.columnNumber,stack:this.stack,config:this.config,code:this.code}},c},So="age authorization content-length content-type etag expires from host if-modified-since if-unmodified-since last-modified location max-forwards proxy-authorization referer retry-after user-agent".split(" "),
To=function(c){var a,b,d,e={};return c?(J.forEach(c.split("\n"),function(c){(d=c.indexOf(":"),a=J.trim(c.substr(0,d)).toLowerCase(),b=J.trim(c.substr(d+1)),!a)||e[a]&&0<=So.indexOf(a)||(e[a]="set-cookie"===a?(e[a]?e[a]:[]).concat([b]):e[a]?e[a]+", "+b:b)}),e):e},Uo=J.isStandardBrowserEnv()?function(){function c(a){return b&&(d.setAttribute("href",a),a=d.href),d.setAttribute("href",a),{href:d.href,protocol:d.protocol?d.protocol.replace(/:$/,""):"",host:d.host,search:d.search?d.search.replace(/^\?/,
""):"",hash:d.hash?d.hash.replace(/^#/,""):"",hostname:d.hostname,port:d.port,pathname:"/"===d.pathname.charAt(0)?d.pathname:"/"+d.pathname}}var a,b=/(msie|trident)/i.test(navigator.userAgent),d=document.createElement("a");return a=c(window.location.href),function(b){b=J.isString(b)?c(b):b;return b.protocol===a.protocol&&b.host===a.host}}():function(){return!0},Vo=J.isStandardBrowserEnv()?{write:function(c,a,b,d,e,f){var g=[];g.push(c+"="+encodeURIComponent(a));J.isNumber(b)&&g.push("expires="+(new Date(b)).toGMTString());
J.isString(d)&&g.push("path="+d);J.isString(e)&&g.push("domain="+e);!0===f&&g.push("secure");document.cookie=g.join("; ")},read:function(c){return(c=document.cookie.match(new RegExp("(^|;\\s*)("+c+")=([^;]*)")))?decodeURIComponent(c[3]):null},remove:function(c){this.write(c,"",Date.now()-864E5)}}:{write:function(){},read:function(){return null},remove:function(){}},Wo=function(c){return new Promise(function(a,b){var d=c.data,e=c.headers;J.isFormData(d)&&delete e["Content-Type"];var f=new XMLHttpRequest;
c.auth&&(e.Authorization="Basic "+btoa((c.auth.username||"")+":"+(c.auth.password||"")));if(f.open(c.method.toUpperCase(),pk(c.url,c.params,c.paramsSerializer),!0),f.timeout=c.timeout,f.onreadystatechange=function(){if(f&&4===f.readyState&&(0!==f.status||f.responseURL&&0===f.responseURL.indexOf("file:"))){var d="getAllResponseHeaders"in f?To(f.getAllResponseHeaders()):null;d={data:c.responseType&&"text"!==c.responseType?f.response:f.responseText,status:f.status,statusText:f.statusText,headers:d,config:c,
request:f};var e=d.config.validateStatus;!e||e(d.status)?a(d):b(te(Error("Request failed with status code "+d.status),d.config,null,d.request,d));f=null}},f.onabort=function(){f&&(b(te(Error("Request aborted"),c,"ECONNABORTED",f,void 0)),f=null)},f.onerror=function(){b(te(Error("Network Error"),c,null,f,void 0));f=null},f.ontimeout=function(){b(te(Error("timeout of "+c.timeout+"ms exceeded"),c,"ECONNABORTED",f,void 0));f=null},J.isStandardBrowserEnv()){var g=(c.withCredentials||Uo(c.url))&&c.xsrfCookieName?
Vo.read(c.xsrfCookieName):void 0;g&&(e[c.xsrfHeaderName]=g)}if("setRequestHeader"in f&&J.forEach(e,function(a,b){void 0===d&&"content-type"===b.toLowerCase()?delete e[b]:f.setRequestHeader(b,a)}),c.withCredentials&&(f.withCredentials=!0),c.responseType)try{f.responseType=c.responseType}catch(k){if("json"!==c.responseType)throw k;}"function"==typeof c.onDownloadProgress&&f.addEventListener("progress",c.onDownloadProgress);"function"==typeof c.onUploadProgress&&f.upload&&f.upload.addEventListener("progress",
c.onUploadProgress);c.cancelToken&&c.cancelToken.promise.then(function(a){f&&(f.abort(),b(a),f=null)});void 0===d&&(d=null);f.send(d)})},Xo={"Content-Type":"application/x-www-form-urlencoded"},ue={adapter:function(){var c;return("undefined"!=typeof process&&"[object process]"===Object.prototype.toString.call(process)||"undefined"!=typeof XMLHttpRequest)&&(c=Wo),c}(),transformRequest:[function(c,a){return rk(a,"Accept"),rk(a,"Content-Type"),J.isFormData(c)||J.isArrayBuffer(c)||J.isBuffer(c)||J.isStream(c)||
J.isFile(c)||J.isBlob(c)?c:J.isArrayBufferView(c)?c.buffer:J.isURLSearchParams(c)?(oh(a,"application/x-www-form-urlencoded;charset=utf-8"),c.toString()):J.isObject(c)?(oh(a,"application/json;charset=utf-8"),JSON.stringify(c)):c}],transformResponse:[function(c){if("string"==typeof c)try{c=JSON.parse(c)}catch(a){}return c}],timeout:0,xsrfCookieName:"XSRF-TOKEN",xsrfHeaderName:"X-XSRF-TOKEN",maxContentLength:-1,validateStatus:function(c){return 200<=c&&300>c},headers:{common:{Accept:"application/json, text/plain, */*"}}};
J.forEach(["delete","get","head"],function(c){ue.headers[c]={}});J.forEach(["post","put","patch"],function(c){ue.headers[c]=J.merge(Xo)});var Yo=function(c,a){return a?c.replace(/\/+$/,"")+"/"+a.replace(/^\/+/,""):c},Zo=function(c){c.cancelToken&&c.cancelToken.throwIfRequested();return c.baseURL&&!/^([a-z][a-z\d\+\-\.]*:)?\/\//i.test(c.url)&&(c.url=Yo(c.baseURL,c.url)),c.headers=c.headers||{},c.data=eg(c.data,c.headers,c.transformRequest),c.headers=J.merge(c.headers.common||{},c.headers[c.method]||
{},c.headers||{}),J.forEach("delete get head post put patch common".split(" "),function(a){delete c.headers[a]}),(c.adapter||ue.adapter)(c).then(function(a){c.cancelToken&&c.cancelToken.throwIfRequested();return a.data=eg(a.data,a.headers,c.transformResponse),a},function(a){qk(a)||(c.cancelToken&&c.cancelToken.throwIfRequested(),a&&a.response&&(a.response.data=eg(a.response.data,a.response.headers,c.transformResponse)));return Promise.reject(a)})},fg=function(c,a){a=a||{};var b={};return J.forEach(["url",
"method","params","data"],function(c){void 0!==a[c]&&(b[c]=a[c])}),J.forEach(["headers","auth","proxy"],function(d){J.isObject(a[d])?b[d]=J.deepMerge(c[d],a[d]):void 0!==a[d]?b[d]=a[d]:J.isObject(c[d])?b[d]=J.deepMerge(c[d]):void 0!==c[d]&&(b[d]=c[d])}),J.forEach("baseURL transformRequest transformResponse paramsSerializer timeout withCredentials adapter responseType xsrfCookieName xsrfHeaderName onUploadProgress onDownloadProgress maxContentLength validateStatus maxRedirects httpAgent httpsAgent cancelToken socketPath".split(" "),
function(d){void 0!==a[d]?b[d]=a[d]:void 0!==c[d]&&(b[d]=c[d])}),b};Xc.prototype.request=function(c,a){"string"==typeof c?(c=a||{}).url=c:c=c||{};(c=fg(this.defaults,c)).method=c.method?c.method.toLowerCase():"get";var b=[Zo,void 0];c=Promise.resolve(c);this.interceptors.request.forEach(function(a){b.unshift(a.fulfilled,a.rejected)});for(this.interceptors.response.forEach(function(a){b.push(a.fulfilled,a.rejected)});b.length;)c=c.then(b.shift(),b.shift());return c};Xc.prototype.getUri=function(c){return c=
fg(this.defaults,c),pk(c.url,c.params,c.paramsSerializer).replace(/^\?/,"")};J.forEach(["delete","get","head","options"],function(c){Xc.prototype[c]=function(a,b){return this.request(J.merge(b||{},{method:c,url:a}))}});J.forEach(["post","put","patch"],function(c){Xc.prototype[c]=function(a,b,d){return this.request(J.merge(d||{},{method:c,url:a,data:b}))}});var Md=Xc;Le.prototype.toString=function(){return"Cancel"+(this.message?": "+this.message:"")};Le.prototype.__CANCEL__=!0;var qh=Le;Ld.prototype.throwIfRequested=
function(){if(this.reason)throw this.reason;};Ld.source=function(){var c;return{token:new Ld(function(a){c=a}),cancel:c}};var Lb=rh(ue);Lb.Axios=Md;Lb.create=function(c){return rh(fg(Lb.defaults,c))};Lb.Cancel=qh;Lb.CancelToken=Ld;Lb.isCancel=qk;Lb.all=function(c){return Promise.all(c)};Lb.spread=function(c){return function(a){return c.apply(null,a)}};var Ib=Lb.default=Lb;let yb={DEBUG:0,INFO:1,WARNING:2,ERROR:3,NONE:4},sk=c=>{for(const a in yb)if(yb[a]===c)return a;return"DEFAULT"};class $o{constructor(){this.logLevel=
yb.DEBUG;this.uploadLogWaitingList=[];this.uploadLogUploadingList=[];this.currentLogID=this.uploadErrorCount=0}debug(...c){var a;c=p(a=[yb.DEBUG]).call(a,c);this.log.apply(this,c)}info(...c){var a;c=p(a=[yb.INFO]).call(a,c);this.log.apply(this,c)}warning(...c){var a;c=p(a=[yb.WARNING]).call(a,c);this.log.apply(this,c)}error(...c){var a;c=p(a=[yb.ERROR]).call(a,c);this.log.apply(this,c)}setLogLevel(c){this.logLevel=c=Math.min(Math.max(0,c),4)}enableLogUpload(){Zb("UPLOAD_LOG",!0)}disableLogUpload(){Zb("UPLOAD_LOG",
!1);this.uploadLogUploadingList=[];this.uploadLogWaitingList=[]}setProxyServer(c){this.proxyServerURL=c}log(...c){var a,b,d,e;let f=Math.max(0,Math.min(4,c[0]));if(!(c[0]=th()+" Agora-SDK [".concat(sk(f),"]:"),this.appendLogToWaitingList(f,c),f<this.logLevel)){var g=th()+" %cAgora-SDK [".concat(sk(f),"]:");switch(f){case yb.DEBUG:c=p(a=[g,"color: #64B5F6;"]).call(a,Db(c).call(c,1));console.log.apply(console,c);break;case yb.INFO:c=p(b=[g,"color: #1E88E5; font-weight: bold;"]).call(b,Db(c).call(c,
1));console.log.apply(console,c);break;case yb.WARNING:c=p(d=[g,"color: #FB8C00; font-weight: bold;"]).call(d,Db(c).call(c,1));console.warn.apply(console,c);break;case yb.ERROR:c=p(e=[g,"color: #B00020; font-weight: bold;"]).call(e,Db(c).call(c,1)),console.error.apply(console,c)}}}appendLogToWaitingList(c,...a){if(u.UPLOAD_LOG){var b="";r(a).call(a,a=>{"object"==typeof a&&(a=z(a));b+="".concat(a," ")});this.uploadLogWaitingList.push({payload_str:b,log_level:c,log_item_id:this.currentLogID++});0===
this.uploadLogUploadingList.length&&this.uploadLogInterval()}}async uploadLogs(){var c,a;let b={sdk_version:fb,process_id:u.PROCESS_ID,payload:z(this.uploadLogUploadingList)};console.log(this.url||(this.proxyServerURL?p(c="https://".concat(this.proxyServerURL,"/ls/?h=")).call(c,u.LOG_UPLOAD_SERVER,"&p=443&d=upload/v1"):"https://".concat(u.LOG_UPLOAD_SERVER,"/upload/v1")));c=await Ib.post(this.url||(this.proxyServerURL?p(a="https://".concat(this.proxyServerURL,"/ls/?h=")).call(a,u.LOG_UPLOAD_SERVER,
"&p=443&d=upload/v1"):"https://".concat(u.LOG_UPLOAD_SERVER,"/upload/v1")),b,{responseType:"text"});if("OK"!==c.data)throw Error("unexpected upload log response: "+c.data);this.uploadLogUploadingList=[]}uploadLogInterval(){if(0!==this.uploadLogUploadingList.length||0!==this.uploadLogWaitingList.length){var c;0===this.uploadLogUploadingList.length&&(this.uploadLogUploadingList=Ka(c=this.uploadLogWaitingList).call(c,0,10));this.uploadLogs().then(()=>{this.uploadErrorCount=0;0<this.uploadLogWaitingList.length&&
window.setTimeout(()=>this.uploadLogInterval(),3E3)}).catch(a=>{this.uploadErrorCount+=1;2>this.uploadErrorCount?window.setTimeout(()=>this.uploadLogInterval(),200):window.setTimeout(()=>this.uploadLogInterval(),1E3)})}}}let h=new $o;class n{constructor(c,a="",b){var d;this.name="AgoraRTCException";this.code=c;this.message=p(d="AgoraRTCError ".concat(this.code,": ")).call(d,a);this.data=b}toString(){var c;return this.data?p(c="".concat(this.message," data: ")).call(c,z(this.data)):this.message}throw(){throw h.error(this.toString()),
this;}}var tk,Oa;!function(c){c.FREE="free";c.UPLOADING="uploading"}(tk||(tk={}));(function(c){c.NONE="none";c.INIT="init";c.CANPLAY="canplay";c.PLAYING="playing";c.PAUSED="paused";c.SUSPEND="suspend";c.STALLED="stalled";c.WAITING="waiting";c.ERROR="error";c.DESTROYED="destroyed";c.ABORT="abort";c.ENDED="ended";c.EMPTIED="emptied"})(Oa||(Oa={}));M({target:"Number",stat:!0},{MAX_SAFE_INTEGER:9007199254740991});M({target:"Number",stat:!0},{MIN_SAFE_INTEGER:-9007199254740991});var ap=function(c,a){for(var b=
Array(arguments.length-1),d=0,e=2,f=!0;e<arguments.length;)b[d++]=arguments[e++];return new Promise(function(e,k){b[d]=function(a){if(f)if(f=!1,a)k(a);else{for(var b=Array(arguments.length-1),c=0;c<b.length;)b[c++]=arguments[c];e.apply(null,b)}};try{c.apply(a||null,b)}catch(q){f&&(f=!1,k(q))}})},bp=Pa(function(c,a){a.length=function(a){var b=a.length;if(!b)return 0;for(var c=0;1<--b%4&&"="===a.charAt(b);)++c;return Math.ceil(3*a.length)/4-c};var b=Array(64),d=Array(123);for(c=0;64>c;)d[b[c]=26>c?
c+65:52>c?c+71:62>c?c-4:c-59|43]=c++;a.encode=function(a,c,d){for(var e,f=null,g=[],h=0,l=0;c<d;){var m=a[c++];switch(l){case 0:g[h++]=b[m>>2];e=(3&m)<<4;l=1;break;case 1:g[h++]=b[e|m>>4];e=(15&m)<<2;l=2;break;case 2:g[h++]=b[e|m>>6],g[h++]=b[63&m],l=0}8191<h&&((f||(f=[])).push(String.fromCharCode.apply(String,g)),h=0)}return l&&(g[h++]=b[e],g[h++]=61,1===l&&(g[h++]=61)),f?(h&&f.push(String.fromCharCode.apply(String,g.slice(0,h))),f.join("")):String.fromCharCode.apply(String,g.slice(0,h))};a.decode=
function(a,b,c){for(var e,f=c,g=0,h=0;h<a.length;){var l=a.charCodeAt(h++);if(61===l&&1<g)break;if(void 0===(l=d[l]))throw Error("invalid encoding");switch(g){case 0:e=l;g=1;break;case 1:b[c++]=e<<2|(48&l)>>4;e=l;g=2;break;case 2:b[c++]=(15&e)<<4|(60&l)>>2;e=l;g=3;break;case 3:b[c++]=(3&e)<<6|l,g=0}}if(1===g)throw Error("invalid encoding");return c-f};a.test=function(a){return/^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$/.test(a)}});Nd.prototype.on=function(c,a,b){return(this._listeners[c]||
(this._listeners[c]=[])).push({fn:a,ctx:b||this}),this};Nd.prototype.off=function(c,a){if(void 0===c)this._listeners={};else if(void 0===a)this._listeners[c]=[];else{c=this._listeners[c];for(var b=0;b<c.length;)c[b].fn===a?c.splice(b,1):++b}return this};Nd.prototype.emit=function(c){var a=this._listeners[c];if(a){for(var b=[],d=1;d<arguments.length;)b.push(arguments[d++]);for(d=0;d<a.length;)a[d].fn.apply(a[d++].ctx,b)}return this};var cp=xh(xh),dp=function(c){try{var a=eval("quire".replace(/^/,"re"))(c);
if(a&&(a.length||Object.keys(a).length))return a}catch(b){}return null},ep=Pa(function(c,a){a.length=function(a){for(var b=0,c=0,f=0;f<a.length;++f)128>(c=a.charCodeAt(f))?b+=1:2048>c?b+=2:55296==(64512&c)&&56320==(64512&a.charCodeAt(f+1))?(++f,b+=4):b+=3;return b};a.read=function(a,c,e){if(1>e-c)return"";for(var b,d=null,k=[],q=0;c<e;)128>(b=a[c++])?k[q++]=b:191<b&&224>b?k[q++]=(31&b)<<6|63&a[c++]:239<b&&365>b?(b=((7&b)<<18|(63&a[c++])<<12|(63&a[c++])<<6|63&a[c++])-65536,k[q++]=55296+(b>>10),k[q++]=
56320+(1023&b)):k[q++]=(15&b)<<12|(63&a[c++])<<6|63&a[c++],8191<q&&((d||(d=[])).push(String.fromCharCode.apply(String,k)),q=0);return d?(q&&d.push(String.fromCharCode.apply(String,k.slice(0,q))),d.join("")):String.fromCharCode.apply(String,k.slice(0,q))};a.write=function(a,c,e){for(var b,d,k=e,q=0;q<a.length;++q)128>(b=a.charCodeAt(q))?c[e++]=b:2048>b?(c[e++]=b>>6|192,c[e++]=63&b|128):55296==(64512&b)&&56320==(64512&(d=a.charCodeAt(q+1)))?(b=65536+((1023&b)<<10)+(1023&d),++q,c[e++]=b>>18|240,c[e++]=
b>>12&63|128,c[e++]=b>>6&63|128,c[e++]=63&b|128):(c[e++]=b>>12|224,c[e++]=b>>6&63|128,c[e++]=63&b|128);return e-k}}),fp=function(c,a,b){var d=b||8192,e=d>>>1,f=null,g=d;return function(b){if(1>b||b>e)return c(b);g+b>d&&(f=c(d),g=0);b=a.call(f,g,g+=b);return 7&g&&(g=1+(7|g)),b}},sc=Ea.zero=new Ea(0,0);sc.toNumber=function(){return 0};sc.zzEncode=sc.zzDecode=function(){return this};sc.length=function(){return 1};var gp=Ea.zeroHash="\x00\x00\x00\x00\x00\x00\x00\x00";Ea.fromNumber=function(c){if(0===
c)return sc;var a=0>c;a&&(c=-c);var b=c>>>0;c=(c-b)/4294967296>>>0;return a&&(c=~c>>>0,b=~b>>>0,4294967295<++b&&(b=0,4294967295<++c&&(c=0))),new Ea(b,c)};Ea.from=function(c){if("number"==typeof c)return Ea.fromNumber(c);if(R.isString(c)){if(!R.Long)return Ea.fromNumber(parseInt(c,10));c=R.Long.fromString(c)}return c.low||c.high?new Ea(c.low>>>0,c.high>>>0):sc};Ea.prototype.toNumber=function(c){if(!c&&this.hi>>>31){c=1+~this.lo>>>0;var a=~this.hi>>>0;return c||(a=a+1>>>0),-(c+4294967296*a)}return this.lo+
4294967296*this.hi};Ea.prototype.toLong=function(c){return R.Long?new R.Long(0|this.lo,0|this.hi,!!c):{low:0|this.lo,high:0|this.hi,unsigned:!!c}};var cc=String.prototype.charCodeAt;Ea.fromHash=function(c){return c===gp?sc:new Ea((cc.call(c,0)|cc.call(c,1)<<8|cc.call(c,2)<<16|cc.call(c,3)<<24)>>>0,(cc.call(c,4)|cc.call(c,5)<<8|cc.call(c,6)<<16|cc.call(c,7)<<24)>>>0)};Ea.prototype.toHash=function(){return String.fromCharCode(255&this.lo,this.lo>>>8&255,this.lo>>>16&255,this.lo>>>24,255&this.hi,this.hi>>>
8&255,this.hi>>>16&255,this.hi>>>24)};Ea.prototype.zzEncode=function(){var c=this.hi>>31;return this.hi=((this.hi<<1|this.lo>>>31)^c)>>>0,this.lo=(this.lo<<1^c)>>>0,this};Ea.prototype.zzDecode=function(){var c=-(1&this.lo);return this.lo=((this.lo>>>1|this.hi<<31)^c)>>>0,this.hi=(this.hi>>>1^c)>>>0,this};Ea.prototype.length=function(){var c=this.lo,a=(this.lo>>>28|this.hi<<4)>>>0,b=this.hi>>>24;return 0===b?0===a?16384>c?128>c?1:2:2097152>c?3:4:16384>a?128>a?5:6:2097152>a?7:8:128>b?9:10};var R=Pa(function(c,
a){function b(a,b,c){for(var d=Object.keys(b),e=0;e<d.length;++e)void 0!==a[d[e]]&&c||(a[d[e]]=b[d[e]]);return a}function d(a){function c(a,d){if(!(this instanceof c))return new c(a,d);Object.defineProperty(this,"message",{get:function(){return a}});Error.captureStackTrace?Error.captureStackTrace(this,c):Object.defineProperty(this,"stack",{value:Error().stack||""});d&&b(this,d)}return(c.prototype=Object.create(Error.prototype)).constructor=c,Object.defineProperty(c.prototype,"name",{get:function(){return a}}),
c.prototype.toString=function(){return this.name+": "+this.message},c}a.asPromise=ap;a.base64=bp;a.EventEmitter=Nd;a.float=cp;a.inquire=dp;a.utf8=ep;a.pool=fp;a.LongBits=Ea;a.isNode=!!(void 0!==Rb&&Rb&&Rb.process&&Rb.process.versions&&Rb.process.versions.node);a.global=a.isNode&&Rb||"undefined"!=typeof window&&window||"undefined"!=typeof self&&self||Rb;a.emptyArray=Object.freeze?Object.freeze([]):[];a.emptyObject=Object.freeze?Object.freeze({}):{};a.isInteger=Number.isInteger||function(a){return"number"==
typeof a&&isFinite(a)&&Math.floor(a)===a};a.isString=function(a){return"string"==typeof a||a instanceof String};a.isObject=function(a){return a&&"object"==typeof a};a.isset=a.isSet=function(a,b){var c=a[b];return!(null==c||!a.hasOwnProperty(b))&&("object"!=typeof c||0<(Array.isArray(c)?c.length:Object.keys(c).length))};a.Buffer=function(){try{var b=a.inquire("buffer").Buffer;return b.prototype.utf8Write?b:null}catch(f){return null}}();a._Buffer_from=null;a._Buffer_allocUnsafe=null;a.newBuffer=function(b){return"number"==
typeof b?a.Buffer?a._Buffer_allocUnsafe(b):new a.Array(b):a.Buffer?a._Buffer_from(b):"undefined"==typeof Uint8Array?b:new Uint8Array(b)};a.Array="undefined"!=typeof Uint8Array?Uint8Array:Array;a.Long=a.global.dcodeIO&&a.global.dcodeIO.Long||a.global.Long||a.inquire("long");a.key2Re=/^true|false|0|1$/;a.key32Re=/^-?(?:0|[1-9][0-9]*)$/;a.key64Re=/^(?:[\\x00-\\xff]{8}|-?(?:0|[1-9][0-9]*))$/;a.longToHash=function(b){return b?a.LongBits.from(b).toHash():a.LongBits.zeroHash};a.longFromHash=function(b,c){b=
a.LongBits.fromHash(b);return a.Long?a.Long.fromBits(b.lo,b.hi,c):b.toNumber(!!c)};a.merge=b;a.lcFirst=function(a){return a.charAt(0).toLowerCase()+a.substring(1)};a.newError=d;a.ProtocolError=d("ProtocolError");a.oneOfGetter=function(a){for(var b={},c=0;c<a.length;++c)b[a[c]]=1;return function(){for(var a=Object.keys(this),c=a.length-1;-1<c;--c)if(1===b[a[c]]&&void 0!==this[a[c]]&&null!==this[a[c]])return a[c]}};a.oneOfSetter=function(a){return function(b){for(var c=0;c<a.length;++c)a[c]!==b&&delete this[a[c]]}};
a.toJSONOptions={longs:String,enums:String,bytes:String,json:!0};a._configure=function(){var b=a.Buffer;b?(a._Buffer_from=b.from!==Uint8Array.from&&b.from||function(a,c){return new b(a,c)},a._Buffer_allocUnsafe=b.allocUnsafe||function(a){return new b(a)}):a._Buffer_from=a._Buffer_allocUnsafe=null}}),Te=aa,gg,ve=R.LongBits,uk=R.base64,vk=R.utf8,wk=function(){return R.Buffer?function(){return(aa.create=function(){return new gg})()}:function(){return new aa}};aa.create=wk();aa.alloc=function(c){return new R.Array(c)};
R.Array!==Array&&(aa.alloc=R.pool(aa.alloc,R.Array.prototype.subarray));aa.prototype._push=function(c,a,b){return this.tail=this.tail.next=new Yc(c,a,b),this.len+=a,this};Qe.prototype=Object.create(Yc.prototype);Qe.prototype.fn=function(c,a,b){for(;127<c;)a[b++]=127&c|128,c>>>=7;a[b]=c};aa.prototype.uint32=function(c){return this.len+=(this.tail=this.tail.next=new Qe(128>(c>>>=0)?1:16384>c?2:2097152>c?3:268435456>c?4:5,c)).len,this};aa.prototype.int32=function(c){return 0>c?this._push(Re,10,ve.fromNumber(c)):
this.uint32(c)};aa.prototype.sint32=function(c){return this.uint32((c<<1^c>>31)>>>0)};aa.prototype.uint64=function(c){c=ve.from(c);return this._push(Re,c.length(),c)};aa.prototype.int64=aa.prototype.uint64;aa.prototype.sint64=function(c){c=ve.from(c).zzEncode();return this._push(Re,c.length(),c)};aa.prototype.bool=function(c){return this._push(Pe,1,c?1:0)};aa.prototype.fixed32=function(c){return this._push(Se,4,c>>>0)};aa.prototype.sfixed32=aa.prototype.fixed32;aa.prototype.fixed64=function(c){c=
ve.from(c);return this._push(Se,4,c.lo)._push(Se,4,c.hi)};aa.prototype.sfixed64=aa.prototype.fixed64;aa.prototype.float=function(c){return this._push(R.float.writeFloatLE,4,c)};aa.prototype.double=function(c){return this._push(R.float.writeDoubleLE,8,c)};var hp=R.Array.prototype.set?function(c,a,b){a.set(c,b)}:function(c,a,b){for(var d=0;d<c.length;++d)a[b+d]=c[d]};aa.prototype.bytes=function(c){var a=c.length>>>0;if(!a)return this._push(Pe,1,0);if(R.isString(c)){var b=aa.alloc(a=uk.length(c));uk.decode(c,
b,0);c=b}return this.uint32(a)._push(hp,a,c)};aa.prototype.string=function(c){var a=vk.length(c);return a?this.uint32(a)._push(vk.write,a,c):this._push(Pe,1,0)};aa.prototype.fork=function(){return this.states=new Bl(this),this.head=this.tail=new Yc(Oe,0,0),this.len=0,this};aa.prototype.reset=function(){return this.states?(this.head=this.states.head,this.tail=this.states.tail,this.len=this.states.len,this.states=this.states.next):(this.head=this.tail=new Yc(Oe,0,0),this.len=0),this};aa.prototype.ldelim=
function(){var c=this.head,a=this.tail,b=this.len;return this.reset().uint32(b),b&&(this.tail.next=c.next,this.tail=a,this.len+=b),this};aa.prototype.finish=function(){for(var c=this.head.next,a=this.constructor.alloc(this.len),b=0;c;)c.fn(c.val,a,b),b+=c.len,c=c.next;return a};aa._configure=function(c){gg=c;aa.create=wk();gg._configure()};(Eb.prototype=Object.create(Te.prototype)).constructor=Eb;Eb._configure=function(){Eb.alloc=R._Buffer_allocUnsafe;Eb.writeBytesBuffer=R.Buffer&&R.Buffer.prototype instanceof
Uint8Array&&"set"===R.Buffer.prototype.set.name?function(c,a,b){a.set(c,b)}:function(c,a,b){if(c.copy)c.copy(a,b,0,c.length);else for(var d=0;d<c.length;)a[b++]=c[d++]}};Eb.prototype.bytes=function(c){R.isString(c)&&(c=R._Buffer_from(c,"base64"));var a=c.length>>>0;return this.uint32(a),a&&this._push(Eb.writeBytesBuffer,a,c),this};Eb.prototype.string=function(c){var a=R.Buffer.byteLength(c);return this.uint32(a),a&&this._push(Cl,a,c),this};Eb._configure();var Ve=wa,hg,Ch=R.LongBits,ip=R.utf8,xk="undefined"!=
typeof Uint8Array?function(c){if(c instanceof Uint8Array||Array.isArray(c))return new wa(c);throw Error("illegal buffer");}:function(c){if(Array.isArray(c))return new wa(c);throw Error("illegal buffer");},yk=function(){return R.Buffer?function(c){return(wa.create=function(a){return R.Buffer.isBuffer(a)?new hg(a):xk(a)})(c)}:xk},nb;wa.create=yk();wa.prototype._slice=R.Array.prototype.subarray||R.Array.prototype.slice;wa.prototype.uint32=(nb=4294967295,function(){if((nb=(127&this.buf[this.pos])>>>0,
128>this.buf[this.pos++])||(nb=(nb|(127&this.buf[this.pos])<<7)>>>0,128>this.buf[this.pos++])||(nb=(nb|(127&this.buf[this.pos])<<14)>>>0,128>this.buf[this.pos++])||(nb=(nb|(127&this.buf[this.pos])<<21)>>>0,128>this.buf[this.pos++])||(nb=(nb|(15&this.buf[this.pos])<<28)>>>0,128>this.buf[this.pos++]))return nb;if((this.pos+=5)>this.len)throw this.pos=this.len,tb(this,10);return nb});wa.prototype.int32=function(){return 0|this.uint32()};wa.prototype.sint32=function(){var c=this.uint32();return c>>>1^
-(1&c)|0};wa.prototype.bool=function(){return 0!==this.uint32()};wa.prototype.fixed32=function(){if(this.pos+4>this.len)throw tb(this,4);return Od(this.buf,this.pos+=4)};wa.prototype.sfixed32=function(){if(this.pos+4>this.len)throw tb(this,4);return 0|Od(this.buf,this.pos+=4)};wa.prototype.float=function(){if(this.pos+4>this.len)throw tb(this,4);var c=R.float.readFloatLE(this.buf,this.pos);return this.pos+=4,c};wa.prototype.double=function(){if(this.pos+8>this.len)throw tb(this,4);var c=R.float.readDoubleLE(this.buf,
this.pos);return this.pos+=8,c};wa.prototype.bytes=function(){var c=this.uint32(),a=this.pos,b=this.pos+c;if(b>this.len)throw tb(this,c);return this.pos+=c,Array.isArray(this.buf)?this.buf.slice(a,b):a===b?new this.buf.constructor(0):this._slice.call(this.buf,a,b)};wa.prototype.string=function(){var c=this.bytes();return ip.read(c,0,c.length)};wa.prototype.skip=function(c){if("number"==typeof c){if(this.pos+c>this.len)throw tb(this,c);this.pos+=c}else{do if(this.pos>=this.len)throw tb(this);while(128&
this.buf[this.pos++])}return this};wa.prototype.skipType=function(c){switch(c){case 0:this.skip();break;case 1:this.skip(8);break;case 2:this.skip(this.uint32());break;case 3:for(;4!=(c=7&this.uint32());)this.skipType(c);break;case 5:this.skip(4);break;default:throw Error("invalid wire type "+c+" at offset "+this.pos);}return this};wa._configure=function(c){hg=c;wa.create=yk();hg._configure();var a=R.Long?"toLong":"toNumber";R.merge(wa.prototype,{int64:function(){return Ue.call(this)[a](!1)},uint64:function(){return Ue.call(this)[a](!0)},
sint64:function(){return Ue.call(this).zzDecode()[a](!1)},fixed64:function(){return Dh.call(this)[a](!0)},sfixed64:function(){return Dh.call(this)[a](!1)}})};(ic.prototype=Object.create(Ve.prototype)).constructor=ic;ic._configure=function(){R.Buffer&&(ic.prototype._slice=R.Buffer.prototype.slice)};ic.prototype.string=function(){var c=this.uint32();return this.buf.utf8Slice?this.buf.utf8Slice(this.pos,this.pos=Math.min(this.pos+c,this.len)):this.buf.toString("utf-8",this.pos,this.pos=Math.min(this.pos+
c,this.len))};ic._configure();(Zc.prototype=Object.create(R.EventEmitter.prototype)).constructor=Zc;Zc.prototype.rpcCall=function g(a,b,d,e,f){if(!e)throw TypeError("request must be specified");var k=this;if(!f)return R.asPromise(g,k,a,b,d,e);if(k.rpcImpl)try{return k.rpcImpl(a,b[k.requestDelimited?"encodeDelimited":"encode"](e).finish(),function(b,e){if(b)return k.emit("error",b,a),f(b);if(null!==e){if(!(e instanceof d))try{e=d[k.responseDelimited?"decodeDelimited":"decode"](e)}catch(E){return k.emit("error",
E,a),f(E)}return k.emit("data",e,a),f(null,e)}k.end(!0)})}catch(q){return k.emit("error",q,a),void setTimeout(function(){f(q)},0)}else setTimeout(function(){f(Error("already ended"))},0)};Zc.prototype.end=function(a){return this.rpcImpl&&(a||this.rpcImpl(null,null,null),this.rpcImpl=null,this.emit("end").off()),this};var jp=Pa(function(a,b){b.Service=Zc}),kp={},zb=Pa(function(a,b){function d(){e.util._configure();e.Writer._configure(e.BufferWriter);e.Reader._configure(e.BufferReader)}var e=b;e.build=
"minimal";e.Writer=Te;e.BufferWriter=Eb;e.Reader=Ve;e.BufferReader=ic;e.util=R;e.rpc=jp;e.roots=kp;e.configure=d;d()}),ra=zb.Reader,Sc=zb.Writer,l=zb.util,ma=zb.roots.default||(zb.roots.default={}),dc;ma.Events=(dc={},dc.Message=function(){function a(a){if(a)for(var b=S(a),e=0;e<b.length;++e)null!=a[b[e]]&&(this[b[e]]=a[b[e]])}return a.prototype.id=l.Long?l.Long.fromBits(0,0,!1):0,a.prototype.msg=l.newBuffer([]),a.create=function(b){return new a(b)},a.encode=function(a,d){return d||(d=Sc.create()),
null!=a.id&&Object.hasOwnProperty.call(a,"id")&&d.uint32(8).int64(a.id),null!=a.msg&&Object.hasOwnProperty.call(a,"msg")&&d.uint32(18).bytes(a.msg),d},a.encodeDelimited=function(a,d){return this.encode(a,d).ldelim()},a.decode=function(a,d){a instanceof ra||(a=ra.create(a));d=void 0===d?a.len:a.pos+d;for(var b=new ma.Events.Message;a.pos<d;){var f=a.uint32();switch(f>>>3){case 1:b.id=a.int64();break;case 2:b.msg=a.bytes();break;default:a.skipType(7&f)}}return b},a.decodeDelimited=function(a){return a instanceof
ra||(a=new ra(a)),this.decode(a,a.uint32())},a.verify=function(a){return"object"!=typeof a||null===a?"object expected":null==a.id||!a.hasOwnProperty("id")||l.isInteger(a.id)||a.id&&l.isInteger(a.id.low)&&l.isInteger(a.id.high)?null==a.msg||!a.hasOwnProperty("msg")||a.msg&&"number"==typeof a.msg.length||l.isString(a.msg)?null:"msg: buffer expected":"id: integer|Long expected"},a.fromObject=function(a){if(a instanceof ma.Events.Message)return a;var b=new ma.Events.Message;return null!=a.id&&(l.Long?
(b.id=l.Long.fromValue(a.id)).unsigned=!1:"string"==typeof a.id?b.id=N(a.id,10):"number"==typeof a.id?b.id=a.id:"object"==typeof a.id&&(b.id=(new l.LongBits(a.id.low>>>0,a.id.high>>>0)).toNumber())),null!=a.msg&&("string"==typeof a.msg?l.base64.decode(a.msg,b.msg=l.newBuffer(l.base64.length(a.msg)),0):a.msg.length&&(b.msg=a.msg)),b},a.toObject=function(a,d){d||(d={});var b={};if(d.defaults){if(l.Long){var f=new l.Long(0,0,!1);b.id=d.longs===String?f.toString():d.longs===Number?f.toNumber():f}else b.id=
d.longs===String?"0":0;d.bytes===String?b.msg="":(b.msg=[],d.bytes!==Array&&(b.msg=l.newBuffer(b.msg)))}return null!=a.id&&a.hasOwnProperty("id")&&("number"==typeof a.id?b.id=d.longs===String?String(a.id):a.id:b.id=d.longs===String?l.Long.prototype.toString.call(a.id):d.longs===Number?(new l.LongBits(a.id.low>>>0,a.id.high>>>0)).toNumber():a.id),null!=a.msg&&a.hasOwnProperty("msg")&&(b.msg=d.bytes===String?l.base64.encode(a.msg,0,a.msg.length):d.bytes===Array?Db(Array.prototype).call(a.msg):a.msg),
b},a.prototype.toJSON=function(){return this.constructor.toObject(this,zb.util.toJSONOptions)},a}(),dc.ProtoRaws=function(){function a(a){if(this.payloads=[],a)for(var b=S(a),e=0;e<b.length;++e)null!=a[b[e]]&&(this[b[e]]=a[b[e]])}return a.prototype.sendTs=l.Long?l.Long.fromBits(0,0,!1):0,a.prototype.payloads=l.emptyArray,a.create=function(b){return new a(b)},a.encode=function(a,d){if(d||(d=Sc.create()),null!=a.sendTs&&Object.hasOwnProperty.call(a,"sendTs")&&d.uint32(8).int64(a.sendTs),null!=a.payloads&&
a.payloads.length)for(var b=0;b<a.payloads.length;++b)ma.Events.Message.encode(a.payloads[b],d.uint32(18).fork()).ldelim();return d},a.encodeDelimited=function(a,d){return this.encode(a,d).ldelim()},a.decode=function(a,d){a instanceof ra||(a=ra.create(a));d=void 0===d?a.len:a.pos+d;for(var b=new ma.Events.ProtoRaws;a.pos<d;){var f=a.uint32();switch(f>>>3){case 1:b.sendTs=a.int64();break;case 2:b.payloads&&b.payloads.length||(b.payloads=[]);b.payloads.push(ma.Events.Message.decode(a,a.uint32()));break;
default:a.skipType(7&f)}}return b},a.decodeDelimited=function(a){return a instanceof ra||(a=new ra(a)),this.decode(a,a.uint32())},a.verify=function(a){if("object"!=typeof a||null===a)return"object expected";if(null!=a.sendTs&&a.hasOwnProperty("sendTs")&&!(l.isInteger(a.sendTs)||a.sendTs&&l.isInteger(a.sendTs.low)&&l.isInteger(a.sendTs.high)))return"sendTs: integer|Long expected";if(null!=a.payloads&&a.hasOwnProperty("payloads")){if(!hc(a.payloads))return"payloads: array expected";for(var b=0;b<a.payloads.length;++b){var e=
ma.Events.Message.verify(a.payloads[b]);if(e)return"payloads."+e}}return null},a.fromObject=function(a){if(a instanceof ma.Events.ProtoRaws)return a;var b=new ma.Events.ProtoRaws;if(null!=a.sendTs&&(l.Long?(b.sendTs=l.Long.fromValue(a.sendTs)).unsigned=!1:"string"==typeof a.sendTs?b.sendTs=N(a.sendTs,10):"number"==typeof a.sendTs?b.sendTs=a.sendTs:"object"==typeof a.sendTs&&(b.sendTs=(new l.LongBits(a.sendTs.low>>>0,a.sendTs.high>>>0)).toNumber())),a.payloads){if(!hc(a.payloads))throw TypeError(".Events.ProtoRaws.payloads: array expected");
b.payloads=[];for(var e=0;e<a.payloads.length;++e){if("object"!=typeof a.payloads[e])throw TypeError(".Events.ProtoRaws.payloads: object expected");b.payloads[e]=ma.Events.Message.fromObject(a.payloads[e])}}return b},a.toObject=function(a,d){d||(d={});var b={};if((d.arrays||d.defaults)&&(b.payloads=[]),d.defaults)if(l.Long){var f=new l.Long(0,0,!1);b.sendTs=d.longs===String?f.toString():d.longs===Number?f.toNumber():f}else b.sendTs=d.longs===String?"0":0;if(null!=a.sendTs&&a.hasOwnProperty("sendTs")&&
("number"==typeof a.sendTs?b.sendTs=d.longs===String?String(a.sendTs):a.sendTs:b.sendTs=d.longs===String?l.Long.prototype.toString.call(a.sendTs):d.longs===Number?(new l.LongBits(a.sendTs.low>>>0,a.sendTs.high>>>0)).toNumber():a.sendTs),a.payloads&&a.payloads.length)for(b.payloads=[],f=0;f<a.payloads.length;++f)b.payloads[f]=ma.Events.Message.toObject(a.payloads[f],d);return b},a.prototype.toJSON=function(){return this.constructor.toObject(this,zb.util.toJSONOptions)},a}(),dc.APWorkerEvent=function(){function a(a){if(a)for(var b=
S(a),e=0;e<b.length;++e)null!=a[b[e]]&&(this[b[e]]=a[b[e]])}return a.prototype.sid="",a.prototype.cname="",a.prototype.cid=l.Long?l.Long.fromBits(0,0,!1):0,a.prototype.lts=l.Long?l.Long.fromBits(0,0,!1):0,a.prototype.ip="",a.prototype.uid=l.Long?l.Long.fromBits(0,0,!1):0,a.prototype.success=!1,a.prototype.elapse=l.Long?l.Long.fromBits(0,0,!1):0,a.prototype.peer=l.Long?l.Long.fromBits(0,0,!1):0,a.prototype.ec=0,a.prototype.sc=0,a.prototype.serverIp="",a.prototype.firstSuccess=!1,a.prototype.responseTime=
0,a.prototype.serviceName="",a.prototype.responseDetail="",a.create=function(b){return new a(b)},a.encode=function(a,d){return d||(d=Sc.create()),null!=a.sid&&Object.hasOwnProperty.call(a,"sid")&&d.uint32(10).string(a.sid),null!=a.cname&&Object.hasOwnProperty.call(a,"cname")&&d.uint32(18).string(a.cname),null!=a.cid&&Object.hasOwnProperty.call(a,"cid")&&d.uint32(24).int64(a.cid),null!=a.lts&&Object.hasOwnProperty.call(a,"lts")&&d.uint32(32).int64(a.lts),null!=a.ip&&Object.hasOwnProperty.call(a,"ip")&&
d.uint32(42).string(a.ip),null!=a.uid&&Object.hasOwnProperty.call(a,"uid")&&d.uint32(48).int64(a.uid),null!=a.success&&Object.hasOwnProperty.call(a,"success")&&d.uint32(56).bool(a.success),null!=a.elapse&&Object.hasOwnProperty.call(a,"elapse")&&d.uint32(64).int64(a.elapse),null!=a.peer&&Object.hasOwnProperty.call(a,"peer")&&d.uint32(72).int64(a.peer),null!=a.ec&&Object.hasOwnProperty.call(a,"ec")&&d.uint32(80).int32(a.ec),null!=a.sc&&Object.hasOwnProperty.call(a,"sc")&&d.uint32(88).int32(a.sc),null!=
a.serverIp&&Object.hasOwnProperty.call(a,"serverIp")&&d.uint32(98).string(a.serverIp),null!=a.firstSuccess&&Object.hasOwnProperty.call(a,"firstSuccess")&&d.uint32(104).bool(a.firstSuccess),null!=a.responseTime&&Object.hasOwnProperty.call(a,"responseTime")&&d.uint32(112).int32(a.responseTime),null!=a.serviceName&&Object.hasOwnProperty.call(a,"serviceName")&&d.uint32(122).string(a.serviceName),null!=a.responseDetail&&Object.hasOwnProperty.call(a,"responseDetail")&&d.uint32(130).string(a.responseDetail),
d},a.encodeDelimited=function(a,d){return this.encode(a,d).ldelim()},a.decode=function(a,d){a instanceof ra||(a=ra.create(a));d=void 0===d?a.len:a.pos+d;for(var b=new ma.Events.APWorkerEvent;a.pos<d;){var f=a.uint32();switch(f>>>3){case 1:b.sid=a.string();break;case 2:b.cname=a.string();break;case 3:b.cid=a.int64();break;case 4:b.lts=a.int64();break;case 5:b.ip=a.string();break;case 6:b.uid=a.int64();break;case 7:b.success=a.bool();break;case 8:b.elapse=a.int64();break;case 9:b.peer=a.int64();break;
case 10:b.ec=a.int32();break;case 11:b.sc=a.int32();break;case 12:b.serverIp=a.string();break;case 13:b.firstSuccess=a.bool();break;case 14:b.responseTime=a.int32();break;case 15:b.serviceName=a.string();break;case 16:b.responseDetail=a.string();break;default:a.skipType(7&f)}}return b},a.decodeDelimited=function(a){return a instanceof ra||(a=new ra(a)),this.decode(a,a.uint32())},a.verify=function(a){return"object"!=typeof a||null===a?"object expected":null!=a.sid&&a.hasOwnProperty("sid")&&!l.isString(a.sid)?
"sid: string expected":null!=a.cname&&a.hasOwnProperty("cname")&&!l.isString(a.cname)?"cname: string expected":null==a.cid||!a.hasOwnProperty("cid")||l.isInteger(a.cid)||a.cid&&l.isInteger(a.cid.low)&&l.isInteger(a.cid.high)?null==a.lts||!a.hasOwnProperty("lts")||l.isInteger(a.lts)||a.lts&&l.isInteger(a.lts.low)&&l.isInteger(a.lts.high)?null!=a.ip&&a.hasOwnProperty("ip")&&!l.isString(a.ip)?"ip: string expected":null==a.uid||!a.hasOwnProperty("uid")||l.isInteger(a.uid)||a.uid&&l.isInteger(a.uid.low)&&
l.isInteger(a.uid.high)?null!=a.success&&a.hasOwnProperty("success")&&"boolean"!=typeof a.success?"success: boolean expected":null==a.elapse||!a.hasOwnProperty("elapse")||l.isInteger(a.elapse)||a.elapse&&l.isInteger(a.elapse.low)&&l.isInteger(a.elapse.high)?null==a.peer||!a.hasOwnProperty("peer")||l.isInteger(a.peer)||a.peer&&l.isInteger(a.peer.low)&&l.isInteger(a.peer.high)?null!=a.ec&&a.hasOwnProperty("ec")&&!l.isInteger(a.ec)?"ec: integer expected":null!=a.sc&&a.hasOwnProperty("sc")&&!l.isInteger(a.sc)?
"sc: integer expected":null!=a.serverIp&&a.hasOwnProperty("serverIp")&&!l.isString(a.serverIp)?"serverIp: string expected":null!=a.firstSuccess&&a.hasOwnProperty("firstSuccess")&&"boolean"!=typeof a.firstSuccess?"firstSuccess: boolean expected":null!=a.responseTime&&a.hasOwnProperty("responseTime")&&!l.isInteger(a.responseTime)?"responseTime: integer expected":null!=a.serviceName&&a.hasOwnProperty("serviceName")&&!l.isString(a.serviceName)?"serviceName: string expected":null!=a.responseDetail&&a.hasOwnProperty("responseDetail")&&
!l.isString(a.responseDetail)?"responseDetail: string expected":null:"peer: integer|Long expected":"elapse: integer|Long expected":"uid: integer|Long expected":"lts: integer|Long expected":"cid: integer|Long expected"},a.fromObject=function(a){if(a instanceof ma.Events.APWorkerEvent)return a;var b=new ma.Events.APWorkerEvent;return null!=a.sid&&(b.sid=String(a.sid)),null!=a.cname&&(b.cname=String(a.cname)),null!=a.cid&&(l.Long?(b.cid=l.Long.fromValue(a.cid)).unsigned=!1:"string"==typeof a.cid?b.cid=
N(a.cid,10):"number"==typeof a.cid?b.cid=a.cid:"object"==typeof a.cid&&(b.cid=(new l.LongBits(a.cid.low>>>0,a.cid.high>>>0)).toNumber())),null!=a.lts&&(l.Long?(b.lts=l.Long.fromValue(a.lts)).unsigned=!1:"string"==typeof a.lts?b.lts=N(a.lts,10):"number"==typeof a.lts?b.lts=a.lts:"object"==typeof a.lts&&(b.lts=(new l.LongBits(a.lts.low>>>0,a.lts.high>>>0)).toNumber())),null!=a.ip&&(b.ip=String(a.ip)),null!=a.uid&&(l.Long?(b.uid=l.Long.fromValue(a.uid)).unsigned=!1:"string"==typeof a.uid?b.uid=N(a.uid,
10):"number"==typeof a.uid?b.uid=a.uid:"object"==typeof a.uid&&(b.uid=(new l.LongBits(a.uid.low>>>0,a.uid.high>>>0)).toNumber())),null!=a.success&&(b.success=!!a.success),null!=a.elapse&&(l.Long?(b.elapse=l.Long.fromValue(a.elapse)).unsigned=!1:"string"==typeof a.elapse?b.elapse=N(a.elapse,10):"number"==typeof a.elapse?b.elapse=a.elapse:"object"==typeof a.elapse&&(b.elapse=(new l.LongBits(a.elapse.low>>>0,a.elapse.high>>>0)).toNumber())),null!=a.peer&&(l.Long?(b.peer=l.Long.fromValue(a.peer)).unsigned=
!1:"string"==typeof a.peer?b.peer=N(a.peer,10):"number"==typeof a.peer?b.peer=a.peer:"object"==typeof a.peer&&(b.peer=(new l.LongBits(a.peer.low>>>0,a.peer.high>>>0)).toNumber())),null!=a.ec&&(b.ec=0|a.ec),null!=a.sc&&(b.sc=0|a.sc),null!=a.serverIp&&(b.serverIp=String(a.serverIp)),null!=a.firstSuccess&&(b.firstSuccess=!!a.firstSuccess),null!=a.responseTime&&(b.responseTime=0|a.responseTime),null!=a.serviceName&&(b.serviceName=String(a.serviceName)),null!=a.responseDetail&&(b.responseDetail=String(a.responseDetail)),
b},a.toObject=function(a,d){d||(d={});var b={};if(d.defaults){if(b.sid="",b.cname="",l.Long){var f=new l.Long(0,0,!1);b.cid=d.longs===String?f.toString():d.longs===Number?f.toNumber():f}else b.cid=d.longs===String?"0":0;l.Long?(f=new l.Long(0,0,!1),b.lts=d.longs===String?f.toString():d.longs===Number?f.toNumber():f):b.lts=d.longs===String?"0":0;b.ip="";l.Long?(f=new l.Long(0,0,!1),b.uid=d.longs===String?f.toString():d.longs===Number?f.toNumber():f):b.uid=d.longs===String?"0":0;b.success=!1;l.Long?
(f=new l.Long(0,0,!1),b.elapse=d.longs===String?f.toString():d.longs===Number?f.toNumber():f):b.elapse=d.longs===String?"0":0;l.Long?(f=new l.Long(0,0,!1),b.peer=d.longs===String?f.toString():d.longs===Number?f.toNumber():f):b.peer=d.longs===String?"0":0;b.ec=0;b.sc=0;b.serverIp="";b.firstSuccess=!1;b.responseTime=0;b.serviceName="";b.responseDetail=""}return null!=a.sid&&a.hasOwnProperty("sid")&&(b.sid=a.sid),null!=a.cname&&a.hasOwnProperty("cname")&&(b.cname=a.cname),null!=a.cid&&a.hasOwnProperty("cid")&&
("number"==typeof a.cid?b.cid=d.longs===String?String(a.cid):a.cid:b.cid=d.longs===String?l.Long.prototype.toString.call(a.cid):d.longs===Number?(new l.LongBits(a.cid.low>>>0,a.cid.high>>>0)).toNumber():a.cid),null!=a.lts&&a.hasOwnProperty("lts")&&("number"==typeof a.lts?b.lts=d.longs===String?String(a.lts):a.lts:b.lts=d.longs===String?l.Long.prototype.toString.call(a.lts):d.longs===Number?(new l.LongBits(a.lts.low>>>0,a.lts.high>>>0)).toNumber():a.lts),null!=a.ip&&a.hasOwnProperty("ip")&&(b.ip=a.ip),
null!=a.uid&&a.hasOwnProperty("uid")&&("number"==typeof a.uid?b.uid=d.longs===String?String(a.uid):a.uid:b.uid=d.longs===String?l.Long.prototype.toString.call(a.uid):d.longs===Number?(new l.LongBits(a.uid.low>>>0,a.uid.high>>>0)).toNumber():a.uid),null!=a.success&&a.hasOwnProperty("success")&&(b.success=a.success),null!=a.elapse&&a.hasOwnProperty("elapse")&&("number"==typeof a.elapse?b.elapse=d.longs===String?String(a.elapse):a.elapse:b.elapse=d.longs===String?l.Long.prototype.toString.call(a.elapse):
d.longs===Number?(new l.LongBits(a.elapse.low>>>0,a.elapse.high>>>0)).toNumber():a.elapse),null!=a.peer&&a.hasOwnProperty("peer")&&("number"==typeof a.peer?b.peer=d.longs===String?String(a.peer):a.peer:b.peer=d.longs===String?l.Long.prototype.toString.call(a.peer):d.longs===Number?(new l.LongBits(a.peer.low>>>0,a.peer.high>>>0)).toNumber():a.peer),null!=a.ec&&a.hasOwnProperty("ec")&&(b.ec=a.ec),null!=a.sc&&a.hasOwnProperty("sc")&&(b.sc=a.sc),null!=a.serverIp&&a.hasOwnProperty("serverIp")&&(b.serverIp=
a.serverIp),null!=a.firstSuccess&&a.hasOwnProperty("firstSuccess")&&(b.firstSuccess=a.firstSuccess),null!=a.responseTime&&a.hasOwnProperty("responseTime")&&(b.responseTime=a.responseTime),null!=a.serviceName&&a.hasOwnProperty("serviceName")&&(b.serviceName=a.serviceName),null!=a.responseDetail&&a.hasOwnProperty("responseDetail")&&(b.responseDetail=a.responseDetail),b},a.prototype.toJSON=function(){return this.constructor.toObject(this,zb.util.toJSONOptions)},a}(),dc.WorkerEvent=function(){function a(a){if(a)for(var b=
S(a),e=0;e<b.length;++e)null!=a[b[e]]&&(this[b[e]]=a[b[e]])}return a.prototype.sid="",a.prototype.cname="",a.prototype.cid=l.Long?l.Long.fromBits(0,0,!1):0,a.prototype.lts=l.Long?l.Long.fromBits(0,0,!1):0,a.prototype.ip="",a.prototype.uid=l.Long?l.Long.fromBits(0,0,!1):0,a.prototype.success=!1,a.prototype.elapse=l.Long?l.Long.fromBits(0,0,!1):0,a.prototype.peer=l.Long?l.Long.fromBits(0,0,!1):0,a.prototype.command="",a.prototype.actionType="",a.prototype.url="",a.prototype.payload="",a.prototype.serverCode=
0,a.prototype.code=0,a.prototype.traceId="",a.prototype.workerType=0,a.prototype.responseTime=0,a.prototype.requestId=l.Long?l.Long.fromBits(0,0,!1):0,a.prototype.packIndex=0,a.prototype.requestByUser=!1,a.prototype.tid="",a.prototype.productType="",a.create=function(b){return new a(b)},a.encode=function(a,d){return d||(d=Sc.create()),null!=a.sid&&Object.hasOwnProperty.call(a,"sid")&&d.uint32(10).string(a.sid),null!=a.cname&&Object.hasOwnProperty.call(a,"cname")&&d.uint32(18).string(a.cname),null!=
a.cid&&Object.hasOwnProperty.call(a,"cid")&&d.uint32(24).int64(a.cid),null!=a.lts&&Object.hasOwnProperty.call(a,"lts")&&d.uint32(32).int64(a.lts),null!=a.ip&&Object.hasOwnProperty.call(a,"ip")&&d.uint32(42).string(a.ip),null!=a.uid&&Object.hasOwnProperty.call(a,"uid")&&d.uint32(48).int64(a.uid),null!=a.success&&Object.hasOwnProperty.call(a,"success")&&d.uint32(56).bool(a.success),null!=a.elapse&&Object.hasOwnProperty.call(a,"elapse")&&d.uint32(64).int64(a.elapse),null!=a.peer&&Object.hasOwnProperty.call(a,
"peer")&&d.uint32(72).int64(a.peer),null!=a.command&&Object.hasOwnProperty.call(a,"command")&&d.uint32(82).string(a.command),null!=a.actionType&&Object.hasOwnProperty.call(a,"actionType")&&d.uint32(90).string(a.actionType),null!=a.url&&Object.hasOwnProperty.call(a,"url")&&d.uint32(98).string(a.url),null!=a.payload&&Object.hasOwnProperty.call(a,"payload")&&d.uint32(106).string(a.payload),null!=a.serverCode&&Object.hasOwnProperty.call(a,"serverCode")&&d.uint32(112).int32(a.serverCode),null!=a.code&&
Object.hasOwnProperty.call(a,"code")&&d.uint32(120).int32(a.code),null!=a.traceId&&Object.hasOwnProperty.call(a,"traceId")&&d.uint32(130).string(a.traceId),null!=a.workerType&&Object.hasOwnProperty.call(a,"workerType")&&d.uint32(136).int32(a.workerType),null!=a.responseTime&&Object.hasOwnProperty.call(a,"responseTime")&&d.uint32(144).int32(a.responseTime),null!=a.requestId&&Object.hasOwnProperty.call(a,"requestId")&&d.uint32(152).int64(a.requestId),null!=a.packIndex&&Object.hasOwnProperty.call(a,
"packIndex")&&d.uint32(160).int32(a.packIndex),null!=a.requestByUser&&Object.hasOwnProperty.call(a,"requestByUser")&&d.uint32(168).bool(a.requestByUser),null!=a.tid&&Object.hasOwnProperty.call(a,"tid")&&d.uint32(178).string(a.tid),null!=a.productType&&Object.hasOwnProperty.call(a,"productType")&&d.uint32(186).string(a.productType),d},a.encodeDelimited=function(a,d){return this.encode(a,d).ldelim()},a.decode=function(a,d){a instanceof ra||(a=ra.create(a));d=void 0===d?a.len:a.pos+d;for(var b=new ma.Events.WorkerEvent;a.pos<
d;){var f=a.uint32();switch(f>>>3){case 1:b.sid=a.string();break;case 2:b.cname=a.string();break;case 3:b.cid=a.int64();break;case 4:b.lts=a.int64();break;case 5:b.ip=a.string();break;case 6:b.uid=a.int64();break;case 7:b.success=a.bool();break;case 8:b.elapse=a.int64();break;case 9:b.peer=a.int64();break;case 10:b.command=a.string();break;case 11:b.actionType=a.string();break;case 12:b.url=a.string();break;case 13:b.payload=a.string();break;case 14:b.serverCode=a.int32();break;case 15:b.code=a.int32();
break;case 16:b.traceId=a.string();break;case 17:b.workerType=a.int32();break;case 18:b.responseTime=a.int32();break;case 19:b.requestId=a.int64();break;case 20:b.packIndex=a.int32();break;case 21:b.requestByUser=a.bool();break;case 22:b.tid=a.string();break;case 23:b.productType=a.string();break;default:a.skipType(7&f)}}return b},a.decodeDelimited=function(a){return a instanceof ra||(a=new ra(a)),this.decode(a,a.uint32())},a.verify=function(a){return"object"!=typeof a||null===a?"object expected":
null!=a.sid&&a.hasOwnProperty("sid")&&!l.isString(a.sid)?"sid: string expected":null!=a.cname&&a.hasOwnProperty("cname")&&!l.isString(a.cname)?"cname: string expected":null==a.cid||!a.hasOwnProperty("cid")||l.isInteger(a.cid)||a.cid&&l.isInteger(a.cid.low)&&l.isInteger(a.cid.high)?null==a.lts||!a.hasOwnProperty("lts")||l.isInteger(a.lts)||a.lts&&l.isInteger(a.lts.low)&&l.isInteger(a.lts.high)?null!=a.ip&&a.hasOwnProperty("ip")&&!l.isString(a.ip)?"ip: string expected":null==a.uid||!a.hasOwnProperty("uid")||
l.isInteger(a.uid)||a.uid&&l.isInteger(a.uid.low)&&l.isInteger(a.uid.high)?null!=a.success&&a.hasOwnProperty("success")&&"boolean"!=typeof a.success?"success: boolean expected":null==a.elapse||!a.hasOwnProperty("elapse")||l.isInteger(a.elapse)||a.elapse&&l.isInteger(a.elapse.low)&&l.isInteger(a.elapse.high)?null==a.peer||!a.hasOwnProperty("peer")||l.isInteger(a.peer)||a.peer&&l.isInteger(a.peer.low)&&l.isInteger(a.peer.high)?null!=a.command&&a.hasOwnProperty("command")&&!l.isString(a.command)?"command: string expected":
null!=a.actionType&&a.hasOwnProperty("actionType")&&!l.isString(a.actionType)?"actionType: string expected":null!=a.url&&a.hasOwnProperty("url")&&!l.isString(a.url)?"url: string expected":null!=a.payload&&a.hasOwnProperty("payload")&&!l.isString(a.payload)?"payload: string expected":null!=a.serverCode&&a.hasOwnProperty("serverCode")&&!l.isInteger(a.serverCode)?"serverCode: integer expected":null!=a.code&&a.hasOwnProperty("code")&&!l.isInteger(a.code)?"code: integer expected":null!=a.traceId&&a.hasOwnProperty("traceId")&&
!l.isString(a.traceId)?"traceId: string expected":null!=a.workerType&&a.hasOwnProperty("workerType")&&!l.isInteger(a.workerType)?"workerType: integer expected":null!=a.responseTime&&a.hasOwnProperty("responseTime")&&!l.isInteger(a.responseTime)?"responseTime: integer expected":null==a.requestId||!a.hasOwnProperty("requestId")||l.isInteger(a.requestId)||a.requestId&&l.isInteger(a.requestId.low)&&l.isInteger(a.requestId.high)?null!=a.packIndex&&a.hasOwnProperty("packIndex")&&!l.isInteger(a.packIndex)?
"packIndex: integer expected":null!=a.requestByUser&&a.hasOwnProperty("requestByUser")&&"boolean"!=typeof a.requestByUser?"requestByUser: boolean expected":null!=a.tid&&a.hasOwnProperty("tid")&&!l.isString(a.tid)?"tid: string expected":null!=a.productType&&a.hasOwnProperty("productType")&&!l.isString(a.productType)?"productType: string expected":null:"requestId: integer|Long expected":"peer: integer|Long expected":"elapse: integer|Long expected":"uid: integer|Long expected":"lts: integer|Long expected":
"cid: integer|Long expected"},a.fromObject=function(a){if(a instanceof ma.Events.WorkerEvent)return a;var b=new ma.Events.WorkerEvent;return null!=a.sid&&(b.sid=String(a.sid)),null!=a.cname&&(b.cname=String(a.cname)),null!=a.cid&&(l.Long?(b.cid=l.Long.fromValue(a.cid)).unsigned=!1:"string"==typeof a.cid?b.cid=N(a.cid,10):"number"==typeof a.cid?b.cid=a.cid:"object"==typeof a.cid&&(b.cid=(new l.LongBits(a.cid.low>>>0,a.cid.high>>>0)).toNumber())),null!=a.lts&&(l.Long?(b.lts=l.Long.fromValue(a.lts)).unsigned=
!1:"string"==typeof a.lts?b.lts=N(a.lts,10):"number"==typeof a.lts?b.lts=a.lts:"object"==typeof a.lts&&(b.lts=(new l.LongBits(a.lts.low>>>0,a.lts.high>>>0)).toNumber())),null!=a.ip&&(b.ip=String(a.ip)),null!=a.uid&&(l.Long?(b.uid=l.Long.fromValue(a.uid)).unsigned=!1:"string"==typeof a.uid?b.uid=N(a.uid,10):"number"==typeof a.uid?b.uid=a.uid:"object"==typeof a.uid&&(b.uid=(new l.LongBits(a.uid.low>>>0,a.uid.high>>>0)).toNumber())),null!=a.success&&(b.success=!!a.success),null!=a.elapse&&(l.Long?(b.elapse=
l.Long.fromValue(a.elapse)).unsigned=!1:"string"==typeof a.elapse?b.elapse=N(a.elapse,10):"number"==typeof a.elapse?b.elapse=a.elapse:"object"==typeof a.elapse&&(b.elapse=(new l.LongBits(a.elapse.low>>>0,a.elapse.high>>>0)).toNumber())),null!=a.peer&&(l.Long?(b.peer=l.Long.fromValue(a.peer)).unsigned=!1:"string"==typeof a.peer?b.peer=N(a.peer,10):"number"==typeof a.peer?b.peer=a.peer:"object"==typeof a.peer&&(b.peer=(new l.LongBits(a.peer.low>>>0,a.peer.high>>>0)).toNumber())),null!=a.command&&(b.command=
String(a.command)),null!=a.actionType&&(b.actionType=String(a.actionType)),null!=a.url&&(b.url=String(a.url)),null!=a.payload&&(b.payload=String(a.payload)),null!=a.serverCode&&(b.serverCode=0|a.serverCode),null!=a.code&&(b.code=0|a.code),null!=a.traceId&&(b.traceId=String(a.traceId)),null!=a.workerType&&(b.workerType=0|a.workerType),null!=a.responseTime&&(b.responseTime=0|a.responseTime),null!=a.requestId&&(l.Long?(b.requestId=l.Long.fromValue(a.requestId)).unsigned=!1:"string"==typeof a.requestId?
b.requestId=N(a.requestId,10):"number"==typeof a.requestId?b.requestId=a.requestId:"object"==typeof a.requestId&&(b.requestId=(new l.LongBits(a.requestId.low>>>0,a.requestId.high>>>0)).toNumber())),null!=a.packIndex&&(b.packIndex=0|a.packIndex),null!=a.requestByUser&&(b.requestByUser=!!a.requestByUser),null!=a.tid&&(b.tid=String(a.tid)),null!=a.productType&&(b.productType=String(a.productType)),b},a.toObject=function(a,d){d||(d={});var b={};if(d.defaults){if(b.sid="",b.cname="",l.Long){var f=new l.Long(0,
0,!1);b.cid=d.longs===String?f.toString():d.longs===Number?f.toNumber():f}else b.cid=d.longs===String?"0":0;l.Long?(f=new l.Long(0,0,!1),b.lts=d.longs===String?f.toString():d.longs===Number?f.toNumber():f):b.lts=d.longs===String?"0":0;b.ip="";l.Long?(f=new l.Long(0,0,!1),b.uid=d.longs===String?f.toString():d.longs===Number?f.toNumber():f):b.uid=d.longs===String?"0":0;b.success=!1;l.Long?(f=new l.Long(0,0,!1),b.elapse=d.longs===String?f.toString():d.longs===Number?f.toNumber():f):b.elapse=d.longs===
String?"0":0;l.Long?(f=new l.Long(0,0,!1),b.peer=d.longs===String?f.toString():d.longs===Number?f.toNumber():f):b.peer=d.longs===String?"0":0;b.command="";b.actionType="";b.url="";b.payload="";b.serverCode=0;b.code=0;b.traceId="";b.workerType=0;b.responseTime=0;l.Long?(f=new l.Long(0,0,!1),b.requestId=d.longs===String?f.toString():d.longs===Number?f.toNumber():f):b.requestId=d.longs===String?"0":0;b.packIndex=0;b.requestByUser=!1;b.tid="";b.productType=""}return null!=a.sid&&a.hasOwnProperty("sid")&&
(b.sid=a.sid),null!=a.cname&&a.hasOwnProperty("cname")&&(b.cname=a.cname),null!=a.cid&&a.hasOwnProperty("cid")&&("number"==typeof a.cid?b.cid=d.longs===String?String(a.cid):a.cid:b.cid=d.longs===String?l.Long.prototype.toString.call(a.cid):d.longs===Number?(new l.LongBits(a.cid.low>>>0,a.cid.high>>>0)).toNumber():a.cid),null!=a.lts&&a.hasOwnProperty("lts")&&("number"==typeof a.lts?b.lts=d.longs===String?String(a.lts):a.lts:b.lts=d.longs===String?l.Long.prototype.toString.call(a.lts):d.longs===Number?
(new l.LongBits(a.lts.low>>>0,a.lts.high>>>0)).toNumber():a.lts),null!=a.ip&&a.hasOwnProperty("ip")&&(b.ip=a.ip),null!=a.uid&&a.hasOwnProperty("uid")&&("number"==typeof a.uid?b.uid=d.longs===String?String(a.uid):a.uid:b.uid=d.longs===String?l.Long.prototype.toString.call(a.uid):d.longs===Number?(new l.LongBits(a.uid.low>>>0,a.uid.high>>>0)).toNumber():a.uid),null!=a.success&&a.hasOwnProperty("success")&&(b.success=a.success),null!=a.elapse&&a.hasOwnProperty("elapse")&&("number"==typeof a.elapse?b.elapse=
d.longs===String?String(a.elapse):a.elapse:b.elapse=d.longs===String?l.Long.prototype.toString.call(a.elapse):d.longs===Number?(new l.LongBits(a.elapse.low>>>0,a.elapse.high>>>0)).toNumber():a.elapse),null!=a.peer&&a.hasOwnProperty("peer")&&("number"==typeof a.peer?b.peer=d.longs===String?String(a.peer):a.peer:b.peer=d.longs===String?l.Long.prototype.toString.call(a.peer):d.longs===Number?(new l.LongBits(a.peer.low>>>0,a.peer.high>>>0)).toNumber():a.peer),null!=a.command&&a.hasOwnProperty("command")&&
(b.command=a.command),null!=a.actionType&&a.hasOwnProperty("actionType")&&(b.actionType=a.actionType),null!=a.url&&a.hasOwnProperty("url")&&(b.url=a.url),null!=a.payload&&a.hasOwnProperty("payload")&&(b.payload=a.payload),null!=a.serverCode&&a.hasOwnProperty("serverCode")&&(b.serverCode=a.serverCode),null!=a.code&&a.hasOwnProperty("code")&&(b.code=a.code),null!=a.traceId&&a.hasOwnProperty("traceId")&&(b.traceId=a.traceId),null!=a.workerType&&a.hasOwnProperty("workerType")&&(b.workerType=a.workerType),
null!=a.responseTime&&a.hasOwnProperty("responseTime")&&(b.responseTime=a.responseTime),null!=a.requestId&&a.hasOwnProperty("requestId")&&("number"==typeof a.requestId?b.requestId=d.longs===String?String(a.requestId):a.requestId:b.requestId=d.longs===String?l.Long.prototype.toString.call(a.requestId):d.longs===Number?(new l.LongBits(a.requestId.low>>>0,a.requestId.high>>>0)).toNumber():a.requestId),null!=a.packIndex&&a.hasOwnProperty("packIndex")&&(b.packIndex=a.packIndex),null!=a.requestByUser&&
a.hasOwnProperty("requestByUser")&&(b.requestByUser=a.requestByUser),null!=a.tid&&a.hasOwnProperty("tid")&&(b.tid=a.tid),null!=a.productType&&a.hasOwnProperty("productType")&&(b.productType=a.productType),b},a.prototype.toJSON=function(){return this.constructor.toObject(this,zb.util.toJSONOptions)},a}(),dc.JoinWebProxyAP=function(){function a(a){if(a)for(var b=S(a),e=0;e<b.length;++e)null!=a[b[e]]&&(this[b[e]]=a[b[e]])}return a.prototype.lts=l.Long?l.Long.fromBits(0,0,!1):0,a.prototype.sid="",a.prototype.cname=
"",a.prototype.cid=l.Long?l.Long.fromBits(0,0,!1):0,a.prototype.ip="",a.prototype.uid=l.Long?l.Long.fromBits(0,0,!1):0,a.prototype.sucess=0,a.prototype.elapse=l.Long?l.Long.fromBits(0,0,!1):0,a.prototype.eventType="",a.prototype.apServerAddr="",a.prototype.turnServerAddrList="",a.prototype.errorCode="",a.create=function(b){return new a(b)},a.encode=function(a,d){return d||(d=Sc.create()),null!=a.lts&&Object.hasOwnProperty.call(a,"lts")&&d.uint32(8).int64(a.lts),null!=a.sid&&Object.hasOwnProperty.call(a,
"sid")&&d.uint32(18).string(a.sid),null!=a.cname&&Object.hasOwnProperty.call(a,"cname")&&d.uint32(26).string(a.cname),null!=a.cid&&Object.hasOwnProperty.call(a,"cid")&&d.uint32(32).int64(a.cid),null!=a.ip&&Object.hasOwnProperty.call(a,"ip")&&d.uint32(42).string(a.ip),null!=a.uid&&Object.hasOwnProperty.call(a,"uid")&&d.uint32(48).int64(a.uid),null!=a.sucess&&Object.hasOwnProperty.call(a,"sucess")&&d.uint32(56).int32(a.sucess),null!=a.elapse&&Object.hasOwnProperty.call(a,"elapse")&&d.uint32(64).int64(a.elapse),
null!=a.eventType&&Object.hasOwnProperty.call(a,"eventType")&&d.uint32(74).string(a.eventType),null!=a.apServerAddr&&Object.hasOwnProperty.call(a,"apServerAddr")&&d.uint32(82).string(a.apServerAddr),null!=a.turnServerAddrList&&Object.hasOwnProperty.call(a,"turnServerAddrList")&&d.uint32(90).string(a.turnServerAddrList),null!=a.errorCode&&Object.hasOwnProperty.call(a,"errorCode")&&d.uint32(98).string(a.errorCode),d},a.encodeDelimited=function(a,d){return this.encode(a,d).ldelim()},a.decode=function(a,
d){a instanceof ra||(a=ra.create(a));d=void 0===d?a.len:a.pos+d;for(var b=new ma.Events.JoinWebProxyAP;a.pos<d;){var f=a.uint32();switch(f>>>3){case 1:b.lts=a.int64();break;case 2:b.sid=a.string();break;case 3:b.cname=a.string();break;case 4:b.cid=a.int64();break;case 5:b.ip=a.string();break;case 6:b.uid=a.int64();break;case 7:b.sucess=a.int32();break;case 8:b.elapse=a.int64();break;case 9:b.eventType=a.string();break;case 10:b.apServerAddr=a.string();break;case 11:b.turnServerAddrList=a.string();
break;case 12:b.errorCode=a.string();break;default:a.skipType(7&f)}}return b},a.decodeDelimited=function(a){return a instanceof ra||(a=new ra(a)),this.decode(a,a.uint32())},a.verify=function(a){return"object"!=typeof a||null===a?"object expected":null==a.lts||!a.hasOwnProperty("lts")||l.isInteger(a.lts)||a.lts&&l.isInteger(a.lts.low)&&l.isInteger(a.lts.high)?null!=a.sid&&a.hasOwnProperty("sid")&&!l.isString(a.sid)?"sid: string expected":null!=a.cname&&a.hasOwnProperty("cname")&&!l.isString(a.cname)?
"cname: string expected":null==a.cid||!a.hasOwnProperty("cid")||l.isInteger(a.cid)||a.cid&&l.isInteger(a.cid.low)&&l.isInteger(a.cid.high)?null!=a.ip&&a.hasOwnProperty("ip")&&!l.isString(a.ip)?"ip: string expected":null==a.uid||!a.hasOwnProperty("uid")||l.isInteger(a.uid)||a.uid&&l.isInteger(a.uid.low)&&l.isInteger(a.uid.high)?null!=a.sucess&&a.hasOwnProperty("sucess")&&!l.isInteger(a.sucess)?"sucess: integer expected":null==a.elapse||!a.hasOwnProperty("elapse")||l.isInteger(a.elapse)||a.elapse&&
l.isInteger(a.elapse.low)&&l.isInteger(a.elapse.high)?null!=a.eventType&&a.hasOwnProperty("eventType")&&!l.isString(a.eventType)?"eventType: string expected":null!=a.apServerAddr&&a.hasOwnProperty("apServerAddr")&&!l.isString(a.apServerAddr)?"apServerAddr: string expected":null!=a.turnServerAddrList&&a.hasOwnProperty("turnServerAddrList")&&!l.isString(a.turnServerAddrList)?"turnServerAddrList: string expected":null!=a.errorCode&&a.hasOwnProperty("errorCode")&&!l.isString(a.errorCode)?"errorCode: string expected":
null:"elapse: integer|Long expected":"uid: integer|Long expected":"cid: integer|Long expected":"lts: integer|Long expected"},a.fromObject=function(a){if(a instanceof ma.Events.JoinWebProxyAP)return a;var b=new ma.Events.JoinWebProxyAP;return null!=a.lts&&(l.Long?(b.lts=l.Long.fromValue(a.lts)).unsigned=!1:"string"==typeof a.lts?b.lts=N(a.lts,10):"number"==typeof a.lts?b.lts=a.lts:"object"==typeof a.lts&&(b.lts=(new l.LongBits(a.lts.low>>>0,a.lts.high>>>0)).toNumber())),null!=a.sid&&(b.sid=String(a.sid)),
null!=a.cname&&(b.cname=String(a.cname)),null!=a.cid&&(l.Long?(b.cid=l.Long.fromValue(a.cid)).unsigned=!1:"string"==typeof a.cid?b.cid=N(a.cid,10):"number"==typeof a.cid?b.cid=a.cid:"object"==typeof a.cid&&(b.cid=(new l.LongBits(a.cid.low>>>0,a.cid.high>>>0)).toNumber())),null!=a.ip&&(b.ip=String(a.ip)),null!=a.uid&&(l.Long?(b.uid=l.Long.fromValue(a.uid)).unsigned=!1:"string"==typeof a.uid?b.uid=N(a.uid,10):"number"==typeof a.uid?b.uid=a.uid:"object"==typeof a.uid&&(b.uid=(new l.LongBits(a.uid.low>>>
0,a.uid.high>>>0)).toNumber())),null!=a.sucess&&(b.sucess=0|a.sucess),null!=a.elapse&&(l.Long?(b.elapse=l.Long.fromValue(a.elapse)).unsigned=!1:"string"==typeof a.elapse?b.elapse=N(a.elapse,10):"number"==typeof a.elapse?b.elapse=a.elapse:"object"==typeof a.elapse&&(b.elapse=(new l.LongBits(a.elapse.low>>>0,a.elapse.high>>>0)).toNumber())),null!=a.eventType&&(b.eventType=String(a.eventType)),null!=a.apServerAddr&&(b.apServerAddr=String(a.apServerAddr)),null!=a.turnServerAddrList&&(b.turnServerAddrList=
String(a.turnServerAddrList)),null!=a.errorCode&&(b.errorCode=String(a.errorCode)),b},a.toObject=function(a,d){d||(d={});var b={};if(d.defaults){if(l.Long){var f=new l.Long(0,0,!1);b.lts=d.longs===String?f.toString():d.longs===Number?f.toNumber():f}else b.lts=d.longs===String?"0":0;b.sid="";b.cname="";l.Long?(f=new l.Long(0,0,!1),b.cid=d.longs===String?f.toString():d.longs===Number?f.toNumber():f):b.cid=d.longs===String?"0":0;b.ip="";l.Long?(f=new l.Long(0,0,!1),b.uid=d.longs===String?f.toString():
d.longs===Number?f.toNumber():f):b.uid=d.longs===String?"0":0;b.sucess=0;l.Long?(f=new l.Long(0,0,!1),b.elapse=d.longs===String?f.toString():d.longs===Number?f.toNumber():f):b.elapse=d.longs===String?"0":0;b.eventType="";b.apServerAddr="";b.turnServerAddrList="";b.errorCode=""}return null!=a.lts&&a.hasOwnProperty("lts")&&("number"==typeof a.lts?b.lts=d.longs===String?String(a.lts):a.lts:b.lts=d.longs===String?l.Long.prototype.toString.call(a.lts):d.longs===Number?(new l.LongBits(a.lts.low>>>0,a.lts.high>>>
0)).toNumber():a.lts),null!=a.sid&&a.hasOwnProperty("sid")&&(b.sid=a.sid),null!=a.cname&&a.hasOwnProperty("cname")&&(b.cname=a.cname),null!=a.cid&&a.hasOwnProperty("cid")&&("number"==typeof a.cid?b.cid=d.longs===String?String(a.cid):a.cid:b.cid=d.longs===String?l.Long.prototype.toString.call(a.cid):d.longs===Number?(new l.LongBits(a.cid.low>>>0,a.cid.high>>>0)).toNumber():a.cid),null!=a.ip&&a.hasOwnProperty("ip")&&(b.ip=a.ip),null!=a.uid&&a.hasOwnProperty("uid")&&("number"==typeof a.uid?b.uid=d.longs===
String?String(a.uid):a.uid:b.uid=d.longs===String?l.Long.prototype.toString.call(a.uid):d.longs===Number?(new l.LongBits(a.uid.low>>>0,a.uid.high>>>0)).toNumber():a.uid),null!=a.sucess&&a.hasOwnProperty("sucess")&&(b.sucess=a.sucess),null!=a.elapse&&a.hasOwnProperty("elapse")&&("number"==typeof a.elapse?b.elapse=d.longs===String?String(a.elapse):a.elapse:b.elapse=d.longs===String?l.Long.prototype.toString.call(a.elapse):d.longs===Number?(new l.LongBits(a.elapse.low>>>0,a.elapse.high>>>0)).toNumber():
a.elapse),null!=a.eventType&&a.hasOwnProperty("eventType")&&(b.eventType=a.eventType),null!=a.apServerAddr&&a.hasOwnProperty("apServerAddr")&&(b.apServerAddr=a.apServerAddr),null!=a.turnServerAddrList&&a.hasOwnProperty("turnServerAddrList")&&(b.turnServerAddrList=a.turnServerAddrList),null!=a.errorCode&&a.hasOwnProperty("errorCode")&&(b.errorCode=a.errorCode),b},a.prototype.toJSON=function(){return this.constructor.toObject(this,zb.util.toJSONOptions)},a}(),dc.WebSocketQuit=function(){function a(a){if(a)for(var b=
S(a),e=0;e<b.length;++e)null!=a[b[e]]&&(this[b[e]]=a[b[e]])}return a.prototype.lts=l.Long?l.Long.fromBits(0,0,!1):0,a.prototype.sid="",a.prototype.cname="",a.prototype.cid=l.Long?l.Long.fromBits(0,0,!1):0,a.prototype.uid=l.Long?l.Long.fromBits(0,0,!1):0,a.prototype.elapse=l.Long?l.Long.fromBits(0,0,!1):0,a.prototype.succ=0,a.prototype.errorCode="",a.prototype.ip="",a.create=function(b){return new a(b)},a.encode=function(a,d){return d||(d=Sc.create()),null!=a.lts&&Object.hasOwnProperty.call(a,"lts")&&
d.uint32(8).int64(a.lts),null!=a.sid&&Object.hasOwnProperty.call(a,"sid")&&d.uint32(18).string(a.sid),null!=a.cname&&Object.hasOwnProperty.call(a,"cname")&&d.uint32(26).string(a.cname),null!=a.cid&&Object.hasOwnProperty.call(a,"cid")&&d.uint32(32).int64(a.cid),null!=a.uid&&Object.hasOwnProperty.call(a,"uid")&&d.uint32(40).int64(a.uid),null!=a.elapse&&Object.hasOwnProperty.call(a,"elapse")&&d.uint32(48).int64(a.elapse),null!=a.succ&&Object.hasOwnProperty.call(a,"succ")&&d.uint32(56).int32(a.succ),
null!=a.errorCode&&Object.hasOwnProperty.call(a,"errorCode")&&d.uint32(66).string(a.errorCode),null!=a.ip&&Object.hasOwnProperty.call(a,"ip")&&d.uint32(74).string(a.ip),d},a.encodeDelimited=function(a,d){return this.encode(a,d).ldelim()},a.decode=function(a,d){a instanceof ra||(a=ra.create(a));d=void 0===d?a.len:a.pos+d;for(var b=new ma.Events.WebSocketQuit;a.pos<d;){var f=a.uint32();switch(f>>>3){case 1:b.lts=a.int64();break;case 2:b.sid=a.string();break;case 3:b.cname=a.string();break;case 4:b.cid=
a.int64();break;case 5:b.uid=a.int64();break;case 6:b.elapse=a.int64();break;case 7:b.succ=a.int32();break;case 8:b.errorCode=a.string();break;case 9:b.ip=a.string();break;default:a.skipType(7&f)}}return b},a.decodeDelimited=function(a){return a instanceof ra||(a=new ra(a)),this.decode(a,a.uint32())},a.verify=function(a){return"object"!=typeof a||null===a?"object expected":null==a.lts||!a.hasOwnProperty("lts")||l.isInteger(a.lts)||a.lts&&l.isInteger(a.lts.low)&&l.isInteger(a.lts.high)?null!=a.sid&&
a.hasOwnProperty("sid")&&!l.isString(a.sid)?"sid: string expected":null!=a.cname&&a.hasOwnProperty("cname")&&!l.isString(a.cname)?"cname: string expected":null==a.cid||!a.hasOwnProperty("cid")||l.isInteger(a.cid)||a.cid&&l.isInteger(a.cid.low)&&l.isInteger(a.cid.high)?null==a.uid||!a.hasOwnProperty("uid")||l.isInteger(a.uid)||a.uid&&l.isInteger(a.uid.low)&&l.isInteger(a.uid.high)?null==a.elapse||!a.hasOwnProperty("elapse")||l.isInteger(a.elapse)||a.elapse&&l.isInteger(a.elapse.low)&&l.isInteger(a.elapse.high)?
null!=a.succ&&a.hasOwnProperty("succ")&&!l.isInteger(a.succ)?"succ: integer expected":null!=a.errorCode&&a.hasOwnProperty("errorCode")&&!l.isString(a.errorCode)?"errorCode: string expected":null!=a.ip&&a.hasOwnProperty("ip")&&!l.isString(a.ip)?"ip: string expected":null:"elapse: integer|Long expected":"uid: integer|Long expected":"cid: integer|Long expected":"lts: integer|Long expected"},a.fromObject=function(a){if(a instanceof ma.Events.WebSocketQuit)return a;var b=new ma.Events.WebSocketQuit;return null!=
a.lts&&(l.Long?(b.lts=l.Long.fromValue(a.lts)).unsigned=!1:"string"==typeof a.lts?b.lts=N(a.lts,10):"number"==typeof a.lts?b.lts=a.lts:"object"==typeof a.lts&&(b.lts=(new l.LongBits(a.lts.low>>>0,a.lts.high>>>0)).toNumber())),null!=a.sid&&(b.sid=String(a.sid)),null!=a.cname&&(b.cname=String(a.cname)),null!=a.cid&&(l.Long?(b.cid=l.Long.fromValue(a.cid)).unsigned=!1:"string"==typeof a.cid?b.cid=N(a.cid,10):"number"==typeof a.cid?b.cid=a.cid:"object"==typeof a.cid&&(b.cid=(new l.LongBits(a.cid.low>>>
0,a.cid.high>>>0)).toNumber())),null!=a.uid&&(l.Long?(b.uid=l.Long.fromValue(a.uid)).unsigned=!1:"string"==typeof a.uid?b.uid=N(a.uid,10):"number"==typeof a.uid?b.uid=a.uid:"object"==typeof a.uid&&(b.uid=(new l.LongBits(a.uid.low>>>0,a.uid.high>>>0)).toNumber())),null!=a.elapse&&(l.Long?(b.elapse=l.Long.fromValue(a.elapse)).unsigned=!1:"string"==typeof a.elapse?b.elapse=N(a.elapse,10):"number"==typeof a.elapse?b.elapse=a.elapse:"object"==typeof a.elapse&&(b.elapse=(new l.LongBits(a.elapse.low>>>0,
a.elapse.high>>>0)).toNumber())),null!=a.succ&&(b.succ=0|a.succ),null!=a.errorCode&&(b.errorCode=String(a.errorCode)),null!=a.ip&&(b.ip=String(a.ip)),b},a.toObject=function(a,d){d||(d={});var b={};if(d.defaults){if(l.Long){var f=new l.Long(0,0,!1);b.lts=d.longs===String?f.toString():d.longs===Number?f.toNumber():f}else b.lts=d.longs===String?"0":0;b.sid="";b.cname="";l.Long?(f=new l.Long(0,0,!1),b.cid=d.longs===String?f.toString():d.longs===Number?f.toNumber():f):b.cid=d.longs===String?"0":0;l.Long?
(f=new l.Long(0,0,!1),b.uid=d.longs===String?f.toString():d.longs===Number?f.toNumber():f):b.uid=d.longs===String?"0":0;l.Long?(f=new l.Long(0,0,!1),b.elapse=d.longs===String?f.toString():d.longs===Number?f.toNumber():f):b.elapse=d.longs===String?"0":0;b.succ=0;b.errorCode="";b.ip=""}return null!=a.lts&&a.hasOwnProperty("lts")&&("number"==typeof a.lts?b.lts=d.longs===String?String(a.lts):a.lts:b.lts=d.longs===String?l.Long.prototype.toString.call(a.lts):d.longs===Number?(new l.LongBits(a.lts.low>>>
0,a.lts.high>>>0)).toNumber():a.lts),null!=a.sid&&a.hasOwnProperty("sid")&&(b.sid=a.sid),null!=a.cname&&a.hasOwnProperty("cname")&&(b.cname=a.cname),null!=a.cid&&a.hasOwnProperty("cid")&&("number"==typeof a.cid?b.cid=d.longs===String?String(a.cid):a.cid:b.cid=d.longs===String?l.Long.prototype.toString.call(a.cid):d.longs===Number?(new l.LongBits(a.cid.low>>>0,a.cid.high>>>0)).toNumber():a.cid),null!=a.uid&&a.hasOwnProperty("uid")&&("number"==typeof a.uid?b.uid=d.longs===String?String(a.uid):a.uid:
b.uid=d.longs===String?l.Long.prototype.toString.call(a.uid):d.longs===Number?(new l.LongBits(a.uid.low>>>0,a.uid.high>>>0)).toNumber():a.uid),null!=a.elapse&&a.hasOwnProperty("elapse")&&("number"==typeof a.elapse?b.elapse=d.longs===String?String(a.elapse):a.elapse:b.elapse=d.longs===String?l.Long.prototype.toString.call(a.elapse):d.longs===Number?(new l.LongBits(a.elapse.low>>>0,a.elapse.high>>>0)).toNumber():a.elapse),null!=a.succ&&a.hasOwnProperty("succ")&&(b.succ=a.succ),null!=a.errorCode&&a.hasOwnProperty("errorCode")&&
(b.errorCode=a.errorCode),null!=a.ip&&a.hasOwnProperty("ip")&&(b.ip=a.ip),b},a.prototype.toJSON=function(){return this.constructor.toObject(this,zb.util.toJSONOptions)},a}(),dc);let lp={sid:"",lts:0,success:null,cname:null,uid:null,peer:null,cid:null,elapse:null,extend:null,vid:0};var Ga,ua,zk;!function(a){a.PUBLISH="publish";a.SUBSCRIBE="subscribe";a.SESSION_INIT="session_init";a.JOIN_CHOOSE_SERVER="join_choose_server";a.REQ_USER_ACCOUNT="req_user_account";a.JOIN_GATEWAY="join_gateway";a.STREAM_SWITCH=
"stream_switch";a.REQUEST_PROXY_WORKER_MANAGER="request_proxy_worker_manager";a.REQUEST_PROXY_APPCENTER="request_proxy_appcenter";a.FIRST_VIDEO_RECEIVED="first_video_received";a.FIRST_AUDIO_RECEIVED="first_audio_received";a.FIRST_VIDEO_DECODE="first_video_decode";a.FIRST_AUDIO_DECODE="first_audio_decode";a.ON_ADD_AUDIO_STREAM="on_add_audio_stream";a.ON_ADD_VIDEO_STREAM="on_add_video_stream";a.ON_UPDATE_STREAM="on_update_stream";a.ON_REMOVE_STREAM="on_remove_stream";a.USER_ANALYTICS="req_user_analytics"}(Ga||
(Ga={}));(function(a){a.SESSION="io.agora.pb.Wrtc.Session";a.JOIN_CHOOSE_SERVER="io.agora.pb.Wrtc.JoinChooseServer";a.REQ_USER_ACCOUNT="io.agora.pb.Wrtc.ReqUserAccount";a.JOIN_GATEWAT="io.agora.pb.Wrtc.JoinGateway";a.PUBLISH="io.agora.pb.Wrtc.Publish";a.SUBSCRIBE="io.agora.pb.Wrtc.Subscribe";a.STREAM_SWITCH="io.agora.pb.Wrtc.StreamSwitch";a.AUDIO_SENDING_STOPPED="io.agora.pb.Wrtc.AudioSendingStopped";a.VIDEO_SENDING_STOPPED="io.agora.pb.Wrtc.VideoSendingStopped";a.REQUEST_PROXY_APPCENTER="io.agora.pb.Wrtc.RequestProxyAppCenter";
a.REQUEST_PROXY_WORKER_MANAGER="io.agora.pb.Wrtc.RequestProxyWorkerManager";a.API_INVOKE="io.agora.pb.Wrtc.ApiInvoke";a.FIRST_VIDEO_RECEIVED="io.agora.pb.Wrtc.FirstVideoReceived";a.FIRST_AUDIO_RECEIVED="io.agora.pb.Wrtc.FirstAudioReceived";a.FIRST_VIDEO_DECODE="io.agora.pb.Wrtc.FirstVideoDecode";a.FIRST_AUDIO_DECODE="io.agora.pb.Wrtc.FirstAudioDecode";a.ON_ADD_AUDIO_STREAM="io.agora.pb.Wrtc.OnAddAudioStream";a.ON_ADD_VIDEO_STREAM="io.agora.pb.Wrtc.OnAddVideoStream";a.ON_UPDATE_STREAM="io.agora.pb.Wrtc.OnUpdateStream";
a.ON_REMOVE_STREAM="io.agora.pb.Wrtc.OnRemoveStream";a.JOIN_CHANNEL_TIMEOUT="io.agora.pb.Wrtc.JoinChannelTimeout";a.PEER_PUBLISH_STATUS="io.agora.pb.Wrtc.PeerPublishStatus";a.USER_ANALYTICS="io.agora.pb.Wrtc.UserAnalytics"})(ua||(ua={}));(function(a){a[a.WORKER_EVENT=156]="WORKER_EVENT";a[a.AP_WORKER_EVENT=160]="AP_WORKER_EVENT"})(zk||(zk={}));let mp=a=>{const b=S(ma.Events);return!!Ja(b).call(b,a.type)};var A,C,tc,Wb,Cc,wd,Za,Ha,B,Q,$a,va,O,ea,Ab,Y,H,ob;!function(a){a.CREATE_CLIENT="createClient";
a.CHECK_SYSTEM_REQUIREMENTS="checkSystemRequirements";a.CHECK_VIDEO_TRACK_IS_ACTIVE="checkVideoTrackIsActive";a.CHECK_AUDIO_TRACK_IS_ACTIVE="checkAudioTrackIsActive";a.CREATE_MIC_AUDIO_TRACK="createMicrophoneAudioTrack";a.CREATE_CUSTOM_AUDIO_TRACK="createCustomAudioTrack";a.CREATE_BUFFER_AUDIO_TRACK="createBufferSourceAudioTrack";a.CREATE_CAM_VIDEO_TRACK="createCameraVideoTrack";a.CREATE_CUSTOM_VIDEO_TRACK="createCustomVideoTrack";a.CREATE_MIC_AND_CAM_TRACKS="createMicrophoneAndCameraTracks";a.CREATE_SCREEN_VIDEO_TRACK=
"createScreenVideoTrack";a.SET_ENCRYPTION_CONFIG="Client.setEncryptionConfig";a.START_PROXY_SERVER="Client.startProxyServer";a.STOP_PROXY_SERVER="Client.stopProxyServer";a.SET_PROXY_SERVER="Client.setProxyServer";a.SET_TURN_SERVER="Client.setTurnServer";a.SET_CLIENT_ROLE="Client.setClientRole";a.SET_LOW_STREAM_PARAMETER="Client.setLowStreamParameter";a.ENABLE_DUAL_STREAM="Client.enableDualStream";a.DISABLE_DUAL_STREAM="Client.disableDualStream";a.JOIN="Client.join";a.LEAVE="Client.leave";a.PUBLISH=
"Client.publish";a.UNPUBLISH="Client.unpublish";a.SUBSCRIBE="Client.subscribe";a.UNSUBSCRIBE="Client.unsubscribe";a.RENEW_TOKEN="Client.renewToken";a.SET_REMOTE_VIDEO_STREAM_TYPE="Client.setRemoteVideoStreamType";a.SET_STREAM_FALLBACK_OPTION="Client.setStreamFallbackOption";a.ENABLE_AUDIO_VOLUME_INDICATOR="Client.enableAudioVolumeIndicator";a.SEND_CUSTOM_REPORT_MESSAGE="Client.sendCustomReportMessage";a.ON_LIVE_STREAM_WARNING="Client.onLiveStreamWarning";a.ON_LIVE_STREAM_ERROR="Client.onLiveStreamingError";
a.START_LIVE_STREAMING="Client.startLiveStreaming";a.SET_LIVE_TRANSCODING="Client.setLiveTranscoding";a.STOP_LIVE_STREAMING="Client.stopLiveStreaming";a.ADD_INJECT_STREAM_URL="Client.addInjectStreamUrl";a.REMOVE_INJECT_STREAM_URL="Client.removeInjectStreamUrl";a.START_CHANNEL_MEDIA_RELAY="Client.startChannelMediaRelay";a.UPDATE_CHANNEL_MEDIA_RELAY="Client.updateChannelMediaRelay";a.STOP_CHANNEL_MEDIA_RELAY="Client.stopChannelMediaRelay";a.REQUEST_CONFIG_DISTRIBUTE="_config-distribute-request";a.SET_CONFIG_DISTRIBUTE=
"_configDistribute";a.LOCAL_TRACK_SET_MUTED="LocalTrack.setMute";a.LOCAL_AUDIO_TRACK_PLAY="LocalAudioTrack.play";a.LOCAL_AUDIO_TRACK_PLAY_IN_ELEMENT="LocalAudioTrack.playInElement";a.LOCAL_AUDIO_TRACK_STOP="LocalAudioTrack.stop";a.LOCAL_AUDIO_TRACK_SET_VOLUME="LocalAudioTrack.setVolume";a.MIC_AUDIO_TRACK_SET_DEVICE="MicrophoneAudioTrack.setDevice";a.BUFFER_AUDIO_TRACK_START="BufferSourceAudioTrack.startProcessAudioBuffer";a.BUFFER_AUDIO_TRACK_STOP="BufferSourceAudioTrack.stopProcessAudioBuffer";a.BUFFER_AUDIO_TRACK_PAUSE=
"BufferSourceAudioTrack.pauseProcessAudioBuffer";a.BUFFER_AUDIO_TRACK_RESUME="BufferSourceAudioTrack.resumeProcessAudioBuffer";a.BUFFER_AUDIO_TRACK_SEEK="BufferSourceAudioTrack.seekAudioBuffer";a.LOCAL_VIDEO_TRACK_PLAY="LocalVideoTrack.play";a.LOCAL_VIDEO_TRACK_STOP="LocalVideoTrack.stop";a.LOCAL_VIDEO_TRACK_BEAUTY="LocalVideoTrack.setBeautyEffect";a.CAM_VIDEO_TRACK_SET_DEVICE="CameraVideoTrack.setDevice";a.CAM_VIDEO_TRACK_SET_ENCODER_CONFIG="CameraVideoTrack.setEncoderConfiguration";a.REMOTE_VIDEO_TRACK_PLAY=
"RemoteVideoTrack.play";a.REMOTE_VIDEO_TRACK_STOP="RemoteVideoTrack.stop";a.REMOTE_AUDIO_TRACK_PLAY="RemoteAudioTrack.play";a.REMOTE_AUDIO_TRACK_STOP="RemoteAudioTrack.stop";a.REMOTE_AUDIO_SET_VOLUME="RemoteAudioTrack.setVolume";a.REMOTE_AUDIO_SET_OUTPUT_DEVICE="RemoteAudioTrack.setOutputDevice";a.STREAM_TYPE_CHANGE="streamTypeChange"}(A||(A={}));(C||(C={})).TRACER="tracer";(function(a){a.IDLE="IDLE";a.INITING="INITING";a.INITEND="INITEND"})(tc||(tc={}));(function(a){a.STATE_CHANGE="state_change";
a.RECORDING_DEVICE_CHANGED="recordingDeviceChanged";a.PLAYOUT_DEVICE_CHANGED="playoutDeviceChanged";a.CAMERA_DEVICE_CHANGED="cameraDeviceChanged"})(Wb||(Wb={}));(function(a){a[a.ACCESS_POINT=101]="ACCESS_POINT";a[a.UNILBS=201]="UNILBS";a[a.STRING_UID_ALLOCATOR=901]="STRING_UID_ALLOCATOR"})(Cc||(Cc={}));(function(a){a[a.IIIEGAL_APPID=1]="IIIEGAL_APPID";a[a.IIIEGAL_UID=2]="IIIEGAL_UID";a[a.INTERNAL_ERROR=3]="INTERNAL_ERROR"})(wd||(wd={}));(function(a){a[a.INVALID_VENDOR_KEY=5]="INVALID_VENDOR_KEY";
a[a.INVALID_CHANNEL_NAME=7]="INVALID_CHANNEL_NAME";a[a.INTERNAL_ERROR=8]="INTERNAL_ERROR";a[a.NO_AUTHORIZED=9]="NO_AUTHORIZED";a[a.DYNAMIC_KEY_TIMEOUT=10]="DYNAMIC_KEY_TIMEOUT";a[a.NO_ACTIVE_STATUS=11]="NO_ACTIVE_STATUS";a[a.DYNAMIC_KEY_EXPIRED=13]="DYNAMIC_KEY_EXPIRED";a[a.STATIC_USE_DYNAMIC_KEY=14]="STATIC_USE_DYNAMIC_KEY";a[a.DYNAMIC_USE_STATIC_KEY=15]="DYNAMIC_USE_STATIC_KEY";a[a.USER_OVERLOAD=16]="USER_OVERLOAD";a[a.FORBIDDEN_REGION=18]="FORBIDDEN_REGION";a[a.CANNOT_MEET_AREA_DEMAND=19]="CANNOT_MEET_AREA_DEMAND"})(Za||
(Za={}));(function(a){a[a.NO_FLAG_SET=100]="NO_FLAG_SET";a[a.FLAG_SET_BUT_EMPTY=101]="FLAG_SET_BUT_EMPTY";a[a.INVALID_FALG_SET=102]="INVALID_FALG_SET";a[a.NO_SERVICE_AVAILABLE=200]="NO_SERVICE_AVAILABLE";a[a.NO_SERVICE_AVAILABLE_P2P=201]="NO_SERVICE_AVAILABLE_P2P";a[a.NO_SERVICE_AVAILABLE_VOICE=202]="NO_SERVICE_AVAILABLE_VOICE";a[a.NO_SERVICE_AVAILABLE_WEBRTC=203]="NO_SERVICE_AVAILABLE_WEBRTC";a[a.NO_SERVICE_AVAILABLE_CDS=204]="NO_SERVICE_AVAILABLE_CDS";a[a.NO_SERVICE_AVAILABLE_CDN=205]="NO_SERVICE_AVAILABLE_CDN";
a[a.NO_SERVICE_AVAILABLE_TDS=206]="NO_SERVICE_AVAILABLE_TDS";a[a.NO_SERVICE_AVAILABLE_REPORT=207]="NO_SERVICE_AVAILABLE_REPORT";a[a.NO_SERVICE_AVAILABLE_APP_CENTER=208]="NO_SERVICE_AVAILABLE_APP_CENTER";a[a.NO_SERVICE_AVAILABLE_ENV0=209]="NO_SERVICE_AVAILABLE_ENV0";a[a.NO_SERVICE_AVAILABLE_VOET=210]="NO_SERVICE_AVAILABLE_VOET";a[a.NO_SERVICE_AVAILABLE_STRING_UID=211]="NO_SERVICE_AVAILABLE_STRING_UID";a[a.NO_SERVICE_AVAILABLE_WEBRTC_UNILBS=212]="NO_SERVICE_AVAILABLE_WEBRTC_UNILBS";a[a.NO_SERVICE_AVAILABLE_UNILBS_FLV=
213]="NO_SERVICE_AVAILABLE_UNILBS_FLV"})(Ha||(Ha={}));(function(a){a[a.K_TIMESTAMP_EXPIRED=2]="K_TIMESTAMP_EXPIRED";a[a.K_CHANNEL_PERMISSION_INVALID=3]="K_CHANNEL_PERMISSION_INVALID";a[a.K_CERTIFICATE_INVALID=4]="K_CERTIFICATE_INVALID";a[a.K_CHANNEL_NAME_EMPTY=5]="K_CHANNEL_NAME_EMPTY";a[a.K_CHANNEL_NOT_FOUND=6]="K_CHANNEL_NOT_FOUND";a[a.K_TICKET_INVALID=7]="K_TICKET_INVALID";a[a.K_CHANNEL_CONFLICTED=8]="K_CHANNEL_CONFLICTED";a[a.K_SERVICE_NOT_READY=9]="K_SERVICE_NOT_READY";a[a.K_SERVICE_TOO_HEAVY=
10]="K_SERVICE_TOO_HEAVY";a[a.K_UID_BANNED=14]="K_UID_BANNED";a[a.K_IP_BANNED=15]="K_IP_BANNED";a[a.K_CHANNEL_BANNED=16]="K_CHANNEL_BANNED";a[a.WARN_NO_AVAILABLE_CHANNEL=103]="WARN_NO_AVAILABLE_CHANNEL";a[a.WARN_LOOKUP_CHANNEL_TIMEOUT=104]="WARN_LOOKUP_CHANNEL_TIMEOUT";a[a.WARN_LOOKUP_CHANNEL_REJECTED=105]="WARN_LOOKUP_CHANNEL_REJECTED";a[a.WARN_OPEN_CHANNEL_TIMEOUT=106]="WARN_OPEN_CHANNEL_TIMEOUT";a[a.WARN_OPEN_CHANNEL_REJECTED=107]="WARN_OPEN_CHANNEL_REJECTED";a[a.WARN_REQUEST_DEFERRED=108]="WARN_REQUEST_DEFERRED";
a[a.ERR_DYNAMIC_KEY_TIMEOUT=109]="ERR_DYNAMIC_KEY_TIMEOUT";a[a.ERR_NO_AUTHORIZED=110]="ERR_NO_AUTHORIZED";a[a.ERR_VOM_SERVICE_UNAVAILABLE=111]="ERR_VOM_SERVICE_UNAVAILABLE";a[a.ERR_NO_CHANNEL_AVAILABLE_CODE=112]="ERR_NO_CHANNEL_AVAILABLE_CODE";a[a.ERR_MASTER_VOCS_UNAVAILABLE=114]="ERR_MASTER_VOCS_UNAVAILABLE";a[a.ERR_INTERNAL_ERROR=115]="ERR_INTERNAL_ERROR";a[a.ERR_NO_ACTIVE_STATUS=116]="ERR_NO_ACTIVE_STATUS";a[a.ERR_INVALID_UID=117]="ERR_INVALID_UID";a[a.ERR_DYNAMIC_KEY_EXPIRED=118]="ERR_DYNAMIC_KEY_EXPIRED";
a[a.ERR_STATIC_USE_DYANMIC_KE=119]="ERR_STATIC_USE_DYANMIC_KE";a[a.ERR_DYNAMIC_USE_STATIC_KE=120]="ERR_DYNAMIC_USE_STATIC_KE";a[a.ERR_NO_VOCS_AVAILABLE=2E3]="ERR_NO_VOCS_AVAILABLE";a[a.ERR_NO_VOS_AVAILABLE=2001]="ERR_NO_VOS_AVAILABLE";a[a.ERR_JOIN_CHANNEL_TIMEOUT=2002]="ERR_JOIN_CHANNEL_TIMEOUT";a[a.ERR_REPEAT_JOIN_CHANNEL=2003]="ERR_REPEAT_JOIN_CHANNEL";a[a.ERR_JOIN_BY_MULTI_IP=2004]="ERR_JOIN_BY_MULTI_IP";a[a.ERR_NOT_JOINED=2011]="ERR_NOT_JOINED";a[a.ERR_REPEAT_JOIN_REQUEST=2012]="ERR_REPEAT_JOIN_REQUEST";
a[a.ERR_INVALID_VENDOR_KEY=2013]="ERR_INVALID_VENDOR_KEY";a[a.ERR_INVALID_CHANNEL_NAME=2014]="ERR_INVALID_CHANNEL_NAME";a[a.ERR_INVALID_STRINGUID=2015]="ERR_INVALID_STRINGUID";a[a.ERR_TOO_MANY_USERS=2016]="ERR_TOO_MANY_USERS";a[a.ERR_SET_CLIENT_ROLE_TIMEOUT=2017]="ERR_SET_CLIENT_ROLE_TIMEOUT";a[a.ERR_SET_CLIENT_ROLE_NO_PERMISSION=2018]="ERR_SET_CLIENT_ROLE_NO_PERMISSION";a[a.ERR_SET_CLIENT_ROLE_ALREADY_IN_USE=2019]="ERR_SET_CLIENT_ROLE_ALREADY_IN_USE";a[a.ERR_PUBLISH_REQUEST_INVALID=2020]="ERR_PUBLISH_REQUEST_INVALID";
a[a.ERR_SUBSCRIBE_REQUEST_INVALID=2021]="ERR_SUBSCRIBE_REQUEST_INVALID";a[a.ERR_NOT_SUPPORTED_MESSAGE=2022]="ERR_NOT_SUPPORTED_MESSAGE";a[a.ERR_ILLEAGAL_PLUGIN=2023]="ERR_ILLEAGAL_PLUGIN";a[a.ERR_REJOIN_TOKEN_INVALID=2024]="ERR_REJOIN_TOKEN_INVALID";a[a.ERR_REJOIN_USER_NOT_JOINED=2025]="ERR_REJOIN_USER_NOT_JOINED";a[a.ERR_INVALID_OPTIONAL_INFO=2027]="ERR_INVALID_OPTIONAL_INFO";a[a.ILLEGAL_AES_PASSWORD=2028]="ILLEGAL_AES_PASSWORD";a[a.ILLEGAL_CLIENT_ROLE_LEVEL=2029]="ILLEGAL_CLIENT_ROLE_LEVEL";a[a.ERR_TEST_RECOVER=
9E3]="ERR_TEST_RECOVER";a[a.ERR_TEST_TRYNEXT=9001]="ERR_TEST_TRYNEXT";a[a.ERR_TEST_RETRY=9002]="ERR_TEST_RETRY"})(B||(B={}));(function(a){a.CONNECTION_STATE_CHANGE="connection-state-change";a.MEDIA_RECONNECT_START="media-reconnect-start";a.MEDIA_RECONNECT_END="media-reconnect-end";a.USER_JOINED="user-joined";a.USER_LEAVED="user-left";a.USER_PUBLISHED="user-published";a.USER_UNPUBLISHED="user-unpublished";a.USER_INFO_UPDATED="user-info-updated";a.CLIENT_BANNED="client-banned";a.CHANNEL_MEDIA_RELAY_STATE=
"channel-media-relay-state";a.CHANNEL_MEDIA_RELAY_EVENT="channel-media-relay-event";a.VOLUME_INDICATOR="volume-indicator";a.CRYPT_ERROR="crypt-error";a.ON_TOKEN_PRIVILEGE_WILL_EXPIRE="token-privilege-will-expire";a.ON_TOKEN_PRIVILEGE_DID_EXPIRE="token-privilege-did-expire";a.NETWORK_QUALITY="network-quality";a.STREAM_TYPE_CHANGED="stream-type-changed";a.STREAM_FALLBACK="stream-fallback";a.RECEIVE_METADATA="receive-metadata";a.STREAM_MESSAGE="stream-message";a.LIVE_STREAMING_ERROR="live-streaming-error";
a.LIVE_STREAMING_WARNING="live-streaming-warning";a.INJECT_STREAM_STATUS="stream-inject-status";a.EXCEPTION="exception";a.ERROR="error"})(Q||(Q={}));(function(a){a.NETWORK_ERROR="NETWORK_ERROR";a.SERVER_ERROR="SERVER_ERROR";a.MULTI_IP="MULTI_IP";a.TIMEOUT="TIMEOUT";a.OFFLINE="OFFLINE";a.LEAVE="LEAVE"})($a||($a={}));(function(a){a.CONNECTING="connecting";a.CONNECTED="connected";a.RECONNECTING="reconnecting";a.CLOSED="closed"})(va||(va={}));(function(a){a.WS_CONNECTED="ws_connected";a.WS_RECONNECTING=
"ws_reconnecting";a.WS_CLOSED="ws_closed";a.ON_BINARY_DATA="on_binary_data";a.REQUEST_RECOVER="request_recover";a.REQUEST_JOIN_INFO="request_join_info";a.REQUEST_REJOIN_INFO="req_rejoin_info";a.IS_P2P_DISCONNECTED="is_p2p_dis";a.DISCONNECT_P2P="dis_p2p";a.NEED_RENEW_SESSION="need-sid";a.REPORT_JOIN_GATEWAY="report_join_gateway";a.REQUEST_TIMEOUT="request_timeout";a.REQUEST_SUCCESS="request_success"})(O||(O={}));(function(a){a.PING="ping";a.PING_BACK="ping_back";a.JOIN="join_v2";a.REJOIN="rejoin";
a.LEAVE="leave";a.SET_CLIENT_ROLE="set_client_role";a.PUBLISH="publish";a.UNPUBLISH="unpublish";a.SUBSCRIBE="subscribe";a.UNSUBSCRIBE="unsubscribe";a.SUBSCRIBE_CHANGE="subscribe_change";a.TRAFFIC_STATS="traffic_stats";a.RENEW_TOKEN="renew_token";a.SWITCH_VIDEO_STREAM="switch_video_stream";a.SET_FALLBACK_OPTION="set_fallback_option";a.GATEWAY_INFO="gateway_info";a.CONTROL="control";a.SEND_METADATA="send_metadata";a.DATA_STREAM="data_stream"})(ea||(ea={}));(function(a){a.PUBLISH_STATS="publish_stats";
a.PUBLISH_RELATED_STATS="publish_related_stats";a.SUBSCRIBE_STATS="subscribe_stats";a.SUBSCRIBE_RELATED_STATS="subscribe_related_stats"})(Ab||(Ab={}));(function(a){a.ON_USER_ONLINE="on_user_online";a.ON_USER_OFFLINE="on_user_offline";a.ON_STREAM_FALLBACK_UPDATE="on_stream_fallback_update";a.ON_PUBLISH_STREAM="on_publish_stream";a.ON_UPLINK_STATS="on_uplink_stats";a.ON_P2P_LOST="on_p2p_lost";a.ON_REMOVE_STREAM="on_remove_stream";a.ON_ADD_AUDIO_STREAM="on_add_audio_stream";a.ON_ADD_VIDEO_STREAM="on_add_video_stream";
a.ON_TOKEN_PRIVILEGE_WILL_EXPIRE="on_token_privilege_will_expire";a.ON_TOKEN_PRIVILEGE_DID_EXPIRE="on_token_privilege_did_expire";a.ON_USER_BANNED="on_user_banned";a.ON_NOTIFICATION="on_notification";a.ON_CRYPT_ERROR="on_crypt_error";a.MUTE_AUDIO="mute_audio";a.MUTE_VIDEO="mute_video";a.UNMUTE_AUDIO="unmute_audio";a.UNMUTE_VIDEO="unmute_video";a.RECEIVE_METADATA="receive_metadata";a.ON_DATA_STREAM="on_data_stream";a.ENABLE_LOCAL_VIDEO="enable_local_video";a.DISABLE_LOCAL_VIDEO="disable_local_video";
a.ENABLE_LOCAL_AUDIO="enable_local_audio";a.DISABLE_LOCAL_AUDIO="disable_local_audio"})(Y||(Y={}));(function(a){a.CONNECTION_STATE_CHANGE="CONNECTION_STATE_CHANGE";a.NEED_ANSWER="NEED_ANSWER";a.NEED_RENEGOTIATE="NEED_RENEGOTIATE";a.P2P_LOST="P2P_LOST";a.GATEWAY_P2P_LOST="GATEWAY_P2P_LOST";a.NEED_UNPUB="NEED_UNPUB";a.NEED_UNSUB="NEED_UNSUB";a.NEED_UPLOAD="NEED_UPLOAD";a.START_RECONNECT="START_RECONNECT";a.END_RECONNECT="END_RECONNECT";a.NEED_SIGNAL_RTT="NEED_SIGNAL_RTT"})(H||(H={}));(function(a){a.AUDIO_SOURCE_STATE_CHANGE=
"audio_source_state_change";a.RECEIVE_TRACK_BUFFER="receive_track_buffer";a.ON_AUDIO_BUFFER="on_audio_buffer"})(ob||(ob={}));let we={sendVolumeLevel:0,sendBitrate:0,sendBytes:0,sendPackets:0,sendPacketsLost:0},xe={sendBytes:0,sendBitrate:0,sendPackets:0,sendPacketsLost:0,sendResolutionHeight:0,sendResolutionWidth:0,captureResolutionHeight:0,captureResolutionWidth:0,targetSendBitrate:0,totalDuration:0,totalFreezeTime:0},ig={transportDelay:0,end2EndDelay:0,receiveBitrate:0,receiveLevel:0,receiveBytes:0,
receiveDelay:0,receivePackets:0,receivePacketsLost:0,totalDuration:0,totalFreezeTime:0,freezeRate:0,packetLossRate:0,publishDuration:-1},Ak={uplinkNetworkQuality:0,downlinkNetworkQuality:0},jg={transportDelay:0,end2EndDelay:0,receiveBitrate:0,receiveBytes:0,receiveDelay:0,receivePackets:0,receivePacketsLost:0,receiveResolutionHeight:0,receiveResolutionWidth:0,totalDuration:0,totalFreezeTime:0,freezeRate:0,packetLossRate:0,publishDuration:-1};var T,oa;!function(a){a.CONNECTED="websocket:connected";
a.RECONNECTING="websocket:reconnecting";a.WILL_RECONNECT="websocket:will_reconnect";a.CLOSED="websocket:closed";a.FAILED="websocket:failed";a.ON_MESSAGE="websocket:on_message";a.REQUEST_NEW_URLS="websocket:request_new_urls"}(T||(T={}));(function(a){a.TRANSCODE="mix_streaming";a.RAW="raw_streaming";a.INJECT="inject_streaming"})(oa||(oa={}));let np={alpha:1,height:640,width:360,x:0,y:0,zOrder:0,audioChannel:0},kg={x:0,y:0,width:160,height:160,zOrder:255,alpha:1},op={audioBitrate:48,audioChannels:1,
audioSampleRate:48E3,backgroundColor:0,height:360,lowLatency:!1,videoBitrate:400,videoCodecProfile:100,videoCodecType:1,videoFrameRate:15,videoGop:30,width:640,images:[],userConfigs:[],userConfigExtraInfo:""},pp={audioBitrate:48,audioChannels:2,audioVolume:100,audioSampleRate:48E3,height:0,width:0,videoBitrate:400,videoFramerate:15,videoGop:30};var pb,Tc,la,Bk,Ia,Aa,L,qb,xd,ye;!function(a){a.WARNING="@live_uap-warning";a.ERROR="@line_uap-error";a.PUBLISH_STREAM_STATUS="@live_uap-publish-status";a.INJECT_STREAM_STATUS=
"@live_uap-inject-status";a.WORKER_STATUS="@live_uap-worker-status";a.REQUEST_NEW_ADDRESS="@live_uap-request-address"}(pb||(pb={}));(Tc||(Tc={})).REQUEST_WORKER_MANAGER_LIST="@live_req_worker_manager";(function(a){a[a.LIVE_STREAM_RESPONSE_SUCCEED=200]="LIVE_STREAM_RESPONSE_SUCCEED";a[a.LIVE_STREAM_RESPONSE_ALREADY_EXISTS_STREAM=454]="LIVE_STREAM_RESPONSE_ALREADY_EXISTS_STREAM";a[a.LIVE_STREAM_RESPONSE_TRANSCODING_PARAMETER_ERROR=450]="LIVE_STREAM_RESPONSE_TRANSCODING_PARAMETER_ERROR";a[a.LIVE_STREAM_RESPONSE_BAD_STREAM=
451]="LIVE_STREAM_RESPONSE_BAD_STREAM";a[a.LIVE_STREAM_RESPONSE_WM_PARAMETER_ERROR=400]="LIVE_STREAM_RESPONSE_WM_PARAMETER_ERROR";a[a.LIVE_STREAM_RESPONSE_WM_WORKER_NOT_EXIST=404]="LIVE_STREAM_RESPONSE_WM_WORKER_NOT_EXIST";a[a.LIVE_STREAM_RESPONSE_NOT_AUTHORIZED=456]="LIVE_STREAM_RESPONSE_NOT_AUTHORIZED";a[a.LIVE_STREAM_RESPONSE_FAILED_LOAD_IMAGE=457]="LIVE_STREAM_RESPONSE_FAILED_LOAD_IMAGE";a[a.LIVE_STREAM_RESPONSE_REQUEST_TOO_OFTEN=429]="LIVE_STREAM_RESPONSE_REQUEST_TOO_OFTEN";a[a.LIVE_STREAM_RESPONSE_NOT_FOUND_PUBLISH=
452]="LIVE_STREAM_RESPONSE_NOT_FOUND_PUBLISH";a[a.LIVE_STREAM_RESPONSE_NOT_SUPPORTED=453]="LIVE_STREAM_RESPONSE_NOT_SUPPORTED";a[a.LIVE_STREAM_RESPONSE_MAX_STREAM_NUM=455]="LIVE_STREAM_RESPONSE_MAX_STREAM_NUM";a[a.LIVE_STREAM_RESPONSE_INTERNAL_SERVER_ERROR=500]="LIVE_STREAM_RESPONSE_INTERNAL_SERVER_ERROR";a[a.LIVE_STREAM_RESPONSE_WORKER_LOST=501]="LIVE_STREAM_RESPONSE_WORKER_LOST";a[a.LIVE_STREAM_RESPONSE_RESOURCE_LIMIT=502]="LIVE_STREAM_RESPONSE_RESOURCE_LIMIT";a[a.LIVE_STREAM_RESPONSE_WORKER_QUIT=
503]="LIVE_STREAM_RESPONSE_WORKER_QUIT";a[a.ERROR_FAIL_SEND_MESSAGE=504]="ERROR_FAIL_SEND_MESSAGE";a[a.PUBLISH_STREAM_STATUS_ERROR_RTMP_HANDSHAKE=30]="PUBLISH_STREAM_STATUS_ERROR_RTMP_HANDSHAKE";a[a.PUBLISH_STREAM_STATUS_ERROR_RTMP_CONNECT=31]="PUBLISH_STREAM_STATUS_ERROR_RTMP_CONNECT";a[a.PUBLISH_STREAM_STATUS_ERROR_RTMP_PUBLISH=32]="PUBLISH_STREAM_STATUS_ERROR_RTMP_PUBLISH";a[a.PUBLISH_STREAM_STATUS_ERROR_PUBLISH_BROKEN=33]="PUBLISH_STREAM_STATUS_ERROR_PUBLISH_BROKEN"})(la||(la={}));(function(a){a.CONNECT_FAILED=
"connect failed";a.CONNECT_TIMEOUT="connect timeout";a.WS_DISCONNECTED="websocket disconnected";a.REQUEST_TIMEOUT="request timeout";a.REQUEST_FAILED="request failed";a.WAIT_STATUS_TIMEOUT="wait status timeout";a.WAIT_STATUS_ERROR="wait status error";a.BAD_STATE="bad state";a.WS_ABORT="ws abort";a.AP_REQUEST_TIMEOUT="AP request timeout";a.AP_JSON_PARSE_ERROR="AP json parse error";a.AP_REQUEST_ERROR="AP request error";a.AP_REQUEST_ABORT="AP request abort"})(Bk||(Bk={}));(function(a){a[a.SetSdkProfile=
0]="SetSdkProfile";a[a.SetSourceChannel=1]="SetSourceChannel";a[a.SetSourceUserId=2]="SetSourceUserId";a[a.SetDestChannel=3]="SetDestChannel";a[a.StartPacketTransfer=4]="StartPacketTransfer";a[a.StopPacketTransfer=5]="StopPacketTransfer";a[a.UpdateDestChannel=6]="UpdateDestChannel";a[a.Reconnect=7]="Reconnect";a[a.SetVideoProfile=8]="SetVideoProfile"})(Ia||(Ia={}));(function(a){a.DISCONNECT="disconnect";a.CONNECTION_STATE_CHANGE="connection-state-change";a.NETWORK_QUALITY="network-quality";a.STREAM_TYPE_CHANGE=
"stream-type-change";a.IS_P2P_DISCONNECTED="is-p2p-dis";a.DISCONNECT_P2P="dis-p2p";a.REQUEST_NEW_GATEWAY_LIST="req-gate-url";a.NEED_RENEW_SESSION="need-sid"})(Aa||(Aa={}));(function(a){a.NEED_RENEGOTIATE="@need_renegotiate";a.NEED_REPLACE_TRACK="@need_replace_track";a.NEED_CLOSE="@need_close";a.NEED_ADD_TRACK="@need_add_track";a.NEED_REMOVE_TRACK="@need_remove_track";a.NEED_SESSION_ID="@need_sid";a.SET_OPTIMIZATION_MODE="@set_optimization_mode";a.GET_STATS="@get_stats";a.GET_LOW_VIDEO_TRACK="@get_low_video_track"})(L||
(L={}));(function(a){a.SCREEN_TRACK="screen_track";a.LOW_STREAM="low_stream"})(qb||(qb={}));(function(a){a.SOURCE_STATE_CHANGE="source-state-change";a.TRACK_ENDED="track-ended";a.BEAUTY_EFFECT_OVERLOAD="beauty-effect-overload"})(xd||(xd={}));(ye||(ye={})).FIRST_FRAME_DECODED="first-frame-decoded";let Ck="AFRICA ASIA CHINA EUROPE GLOBAL INDIA JAPAN NORTH_AMERICA OCEANIA OVERSEA SOUTH_AMERICA".split(" ");var Ba;!function(a){a.CHINA="CN";a.ASIA="AS";a.NORTH_AMERICA="NA";a.EUROPE="EU";a.JAPAN="JP";a.INDIA=
"IN";a.OCEANIA="OC";a.SOUTH_AMERICA="SA";a.AFRICA="AF";a.OVERSEA="OVERSEA";a.GLOBAL="GLOBAL"}(Ba||(Ba={}));let Dk={CHINA:{},ASIA:{CODE:Ba.ASIA,WEBCS_DOMAIN:["ap-web-1-asia.agora.io"],WEBCS_DOMAIN_BACKUP_LIST:["ap-web-2-asia.agora.io"],PROXY_CS:["proxy-ap-web-asia.agora.io"],CDS_AP:["cds-ap-web-asia.agora.io","cds-ap-web-asia2.agora.io"],ACCOUNT_REGISTER:["sua-ap-web-asia.agora.io","sua-ap-web-asia2.agora.io"],UAP_AP:["uap-ap-web-asia.agora.io","uap-ap-web-asia2.agora.io"],EVENT_REPORT_DOMAIN:["statscollector-1-asia.agora.io"],
EVENT_REPORT_BACKUP_DOMAIN:["statscollector-2-asia.agora.io"],LOG_UPLOAD_SERVER:["logservice-asia.agora.io"],PROXY_SERVER_TYPE3:["southeast-asia.webrtc-cloud-proxy.sd-rtn.com"]},NORTH_AMERICA:{CODE:Ba.NORTH_AMERICA,WEBCS_DOMAIN:["ap-web-1-north-america.agora.io"],WEBCS_DOMAIN_BACKUP_LIST:["ap-web-2-north-america.agora.io"],PROXY_CS:["proxy-ap-web-america.agora.io"],CDS_AP:["cds-ap-web-america.agora.io","cds-ap-web-america2.agora.io"],ACCOUNT_REGISTER:["sua-ap-web-america.agora.io","sua-ap-web-america2.agora.io"],
UAP_AP:["uap-ap-web-america.agora.io","uap-ap-web-america2.agora.io"],EVENT_REPORT_DOMAIN:["statscollector-1-north-america.agora.io"],EVENT_REPORT_BACKUP_DOMAIN:["statscollector-2-north-america.agora.io"],LOG_UPLOAD_SERVER:["logservice-north-america.agora.io"],PROXY_SERVER_TYPE3:["east-usa.webrtc-cloud-proxy.sd-rtn.com"]},EUROPE:{CODE:Ba.EUROPE,WEBCS_DOMAIN:["ap-web-1-europe.agora.io"],WEBCS_DOMAIN_BACKUP_LIST:["ap-web-2-europe.agora.io"],PROXY_CS:["proxy-ap-web-europe.agora.io"],CDS_AP:["cds-ap-web-europe.agora.io",
"cds-ap-web-europe2.agora.io"],ACCOUNT_REGISTER:["sua-ap-web-europe.agora.io","sua-ap-web-europe.agora.io"],UAP_AP:["uap-ap-web-europe.agora.io","uap-ap-web-europe2.agora.io"],EVENT_REPORT_DOMAIN:["statscollector-1-europe.agora.io"],EVENT_REPORT_BACKUP_DOMAIN:["statscollector-2-europe.agora.io"],LOG_UPLOAD_SERVER:["logservice-europe.agora.io"],PROXY_SERVER_TYPE3:["europe.webrtc-cloud-proxy.sd-rtn.com"]},JAPAN:{CODE:Ba.JAPAN,WEBCS_DOMAIN:["ap-web-1-japan.agora.io"],WEBCS_DOMAIN_BACKUP_LIST:["ap-web-2-japan.agora.io"],
PROXY_CS:["proxy-ap-web-japan.agora.io"],CDS_AP:["cds-ap-web-japan.agora.io","cds-ap-web-japan2.agora.io"],ACCOUNT_REGISTER:["sua-ap-web-japan.agora.io","sua-ap-web-japan2.agora.io"],UAP_AP:["uap-ap-web-japan.agora.io","\tuap-ap-web-japan2.agora.io"],EVENT_REPORT_DOMAIN:["statscollector-1-japan.agora.io"],EVENT_REPORT_BACKUP_DOMAIN:["statscollector-2-japan.agora.io"],LOG_UPLOAD_SERVER:["logservice-japan.agora.io"],PROXY_SERVER_TYPE3:["japan.webrtc-cloud-proxy.sd-rtn.com"]},INDIA:{CODE:Ba.INDIA,WEBCS_DOMAIN:["ap-web-1-india.agora.io"],
WEBCS_DOMAIN_BACKUP_LIST:["ap-web-2-india.agora.io"],PROXY_CS:["proxy-ap-web-india.agora.io"],CDS_AP:["cds-ap-web-india.agora.io","cds-ap-web-india2.agora.io"],ACCOUNT_REGISTER:["sua-ap-web-india.agora.io","sua-ap-web-india2.agora.io"],UAP_AP:["uap-ap-web-india.agora.io","uap-ap-web-india2.agora.io"],EVENT_REPORT_DOMAIN:["statscollector-1-india.agora.io"],EVENT_REPORT_BACKUP_DOMAIN:["statscollector-2-india.agora.io"],LOG_UPLOAD_SERVER:["logservice-india.agora.io"],PROXY_SERVER_TYPE3:["india.webrtc-cloud-proxy.sd-rtn.com"]},
OVERSEA:{CODE:Ba.OVERSEA,WEBCS_DOMAIN:["ap-web-1-oversea.agora.io"],WEBCS_DOMAIN_BACKUP_LIST:["ap-web-2-oversea.agora.io"],PROXY_CS:["proxy-ap-web-oversea.agora.io"],CDS_AP:["cds-ap-web-oversea.agora.io"],ACCOUNT_REGISTER:["sua-ap-web-oversea.agora.io"],UAP_AP:["uap-ap-web-oversea.agora.io"],EVENT_REPORT_DOMAIN:["statscollector-1-oversea.agora.io"],EVENT_REPORT_BACKUP_DOMAIN:["statscollector-2-oversea.agora.io"],LOG_UPLOAD_SERVER:["logservice-oversea.agora.io"],PROXY_SERVER_TYPE3:["webrtc-cloud-proxy.agora.io"]},
GLOBAL:{CODE:Ba.GLOBAL,WEBCS_DOMAIN:["webrtc2-ap-web-1.agora.io"],WEBCS_DOMAIN_BACKUP_LIST:["webrtc2-ap-web-3.agora.io"],PROXY_CS:["ap-proxy-1.agora.io","ap-proxy-2.agora.io"],CDS_AP:["cds-ap-web-1.agora.io","cds-ap-web-3.agora.io"],ACCOUNT_REGISTER:["sua-ap-web-1.agora.io","sua-ap-web-3.agora.io"],UAP_AP:["uap-ap-web-1.agora.io","uap-ap-web-3.agora.io"],EVENT_REPORT_DOMAIN:["statscollector-1.agora.io"],EVENT_REPORT_BACKUP_DOMAIN:["statscollector-2.agora.io"],LOG_UPLOAD_SERVER:["logservice.agora.io"],
PROXY_SERVER_TYPE3:["webrtc-cloud-proxy.sd-rtn.com"]},OCEANIA:{CODE:Ba.OCEANIA,WEBCS_DOMAIN:["ap-web-1-oceania.agora.io"],WEBCS_DOMAIN_BACKUP_LIST:["ap-web-2-oceania.agora.io"],PROXY_CS:["proxy-ap-web-oceania.agora.io"],CDS_AP:["cds-ap-web-oceania.agora.io","cds-ap-web-oceania2.agora.io"],ACCOUNT_REGISTER:["sua-ap-web-oceania.agora.io","sua-ap-web-oceania2.agora.io"],UAP_AP:["uap-ap-web-oceania.agora.io","uap-ap-web-oceania2.agora.io"],EVENT_REPORT_DOMAIN:["statscollector-1-oceania.agora.io"],EVENT_REPORT_BACKUP_DOMAIN:["statscollector-2-oceania.agora.io"],
LOG_UPLOAD_SERVER:["logservice-oceania.agora.io"],PROXY_SERVER_TYPE3:["oceania.webrtc-cloud-proxy.sd-rtn.com"]},SOUTH_AMERICA:{CODE:Ba.SOUTH_AMERICA,WEBCS_DOMAIN:["ap-web-1-south-america.agora.io"],WEBCS_DOMAIN_BACKUP_LIST:["ap-web-2-south-america.agora.io"],PROXY_CS:["proxy-ap-web-south-america.agora.io"],CDS_AP:["cds-ap-web-south-america.agora.io","cds-ap-web-south-america2.agora.io"],ACCOUNT_REGISTER:["sua-ap-web-south-america.agora.io","sua-ap-web-south-america2.agora.io"],UAP_AP:["uap-ap-web-south-america.agora.io",
"uap-ap-web-south-america2.agora.io"],EVENT_REPORT_DOMAIN:["statscollector-1-south-america.agora.io"],EVENT_REPORT_BACKUP_DOMAIN:["statscollector-2-south-america.agora.io"],LOG_UPLOAD_SERVER:["logservice-south-america.agora.io"],PROXY_SERVER_TYPE3:["south-america.webrtc-cloud-proxy.sd-rtn.com"]},AFRICA:{CODE:Ba.AFRICA,WEBCS_DOMAIN:["ap-web-1-africa.agora.io"],WEBCS_DOMAIN_BACKUP_LIST:["ap-web-2-africa.agora.io"],PROXY_CS:["proxy-ap-web-africa.agora.io"],CDS_AP:["cds-ap-web-africa.agora.io","cds-ap-web-africa2.agora.io"],
ACCOUNT_REGISTER:["sua-ap-web-africa.agora.io","sua-ap-web-africa2.agora.io"],UAP_AP:["uap-ap-web-africa.agora.io","uap-ap-web-africa2.agora.io"],EVENT_REPORT_DOMAIN:["statscollector-1-africa.agora.io"],EVENT_REPORT_BACKUP_DOMAIN:["statscollector-2-africa.agora.io"],LOG_UPLOAD_SERVER:["logservice-south-africa.agora.io"],PROXY_SERVER_TYPE3:["africa.webrtc-cloud-proxy.sd-rtn.com"]}};ad&&(Dk.CHINA={CODE:Ba.CHINA,WEBCS_DOMAIN:["webrtc2-ap-web-2.agoraio.cn"],WEBCS_DOMAIN_BACKUP_LIST:["webrtc2-ap-web-4.agoraio.cn"],
PROXY_CS:["proxy-ap-web.agoraio.cn"],CDS_AP:["cds-ap-web-2.agoraio.cn","cds-ap-web-4.agoraio.cn"],ACCOUNT_REGISTER:["sua-ap-web-2.agoraio.cn","sua-ap-web-4.agoraio.cn"],UAP_AP:["uap-ap-web-2.agoraio.cn","uap-ap-web-4.agoraio.cn"],EVENT_REPORT_DOMAIN:["statscollector-3.agoraio.cn"],EVENT_REPORT_BACKUP_DOMAIN:["statscollector-4.agoraio.cn"],LOG_UPLOAD_SERVER:["logservice-china.agora.io"],PROXY_SERVER_TYPE3:["east-cn.webrtc-cloud-proxy.sd-rtn.com"]});let ca={getDisplayMedia:!1,getStreamFromExtension:!1,
supportUnifiedPlan:!1,supportMinBitrate:!1,supportSetRtpSenderParameters:!1,supportDualStream:!0,webAudioMediaStreamDest:!1,supportReplaceTrack:!1,supportWebGL:!1,webAudioWithAEC:!1,supportRequestFrame:!1,supportShareAudio:!1,supportDualStreamEncoding:!1};M({target:"Object",stat:!0,forced:!na,sham:!na},{defineProperties:Ri});var Wa=Pa(function(a){var b=ha.Object;a=a.exports=function(a,e){return b.defineProperties(a,e)};b.defineProperties.sham&&(a.sham=!0)}),qp=fe.concat("length","prototype"),lg={f:Object.getOwnPropertyNames||
function(a){return Qi(a,qp)}},rp=Sb("Reflect","ownKeys")||function(a){var b=lg.f(Sa(a)),d=od.f;return d?b.concat(d(a)):b};M({target:"Object",stat:!0,sham:!na},{getOwnPropertyDescriptors:function(a){var b,d;a=lb(a);for(var e=Ic,f=rp(a),g={},k=0;f.length>k;)void 0!==(d=e(a,b=f[k++]))&&qc(g,b,d);return g}});var ka=ha.Object.getOwnPropertyDescriptors,Ek=lg.f,sp={}.toString,Fk="object"==typeof window&&window&&Object.getOwnPropertyNames?Object.getOwnPropertyNames(window):[],Gk=function(a){if(Fk&&"[object Window]"==
sp.call(a))try{var b=Ek(a)}catch(d){b=Fk.slice()}else b=Ek(lb(a));return b},Hk={f:ya},tp=mb.f,ab=ce("hidden"),Ik=ya("toPrimitive"),up=hb.set,Jk=hb.getterFor("Symbol"),Bb=Object.prototype,bb=K.Symbol,yd=Sb("JSON","stringify"),Kk=Ic,ec=mb.f,Lk=Gk,vp=Vd,Xb=Tb("symbols"),zd=Tb("op-symbols"),mg=Tb("string-to-symbol-registry"),ng=Tb("symbol-to-string-registry"),wp=Tb("wks"),og=K.QObject,pg=!og||!og.prototype||!og.prototype.findChild,qg=na&&ta(function(){return 7!=pc(ec({},"a",{get:function(){return ec(this,
"a",{value:7}).a}})).a})?function(a,b,d){var e=Kk(Bb,b);e&&delete Bb[b];ec(a,b,d);e&&a!==Bb&&ec(Bb,b,e)}:ec,Mk=function(a,b){var d=Xb[a]=pc(bb.prototype);return up(d,{type:"Symbol",tag:a,description:b}),na||(d.description=b),d},rg=Kb&&"symbol"==typeof bb.iterator?function(a){return"symbol"==typeof a}:function(a){return Object(a)instanceof bb},ze=function(a,b,d){a===Bb&&ze(zd,b,d);Sa(a);b=Gc(b,!0);return Sa(d),V(Xb,b)?(d.enumerable?(V(a,ab)&&a[ab][b]&&(a[ab][b]=!1),d=pc(d,{enumerable:kc(0,!1)})):(V(a,
ab)||ec(a,ab,kc(1,{})),a[ab][b]=!0),qg(a,b,d)):ec(a,b,d)},Ok=function(a,b){Sa(a);var d=lb(b);b=bc(d).concat(sg(d));return Lc(b,function(b){na&&!Nk.call(d,b)||ze(a,b,d[b])}),a},Nk=function(a){a=Gc(a,!0);var b=vp.call(this,a);return!(this===Bb&&V(Xb,a)&&!V(zd,a))&&(!(b||!V(this,a)||!V(Xb,a)||V(this,ab)&&this[ab][a])||b)},Pk=function(a,b){a=lb(a);b=Gc(b,!0);if(a!==Bb||!V(Xb,b)||V(zd,b)){var d=Kk(a,b);return!d||!V(Xb,b)||V(a,ab)&&a[ab][b]||(d.enumerable=!0),d}},Qk=function(a){a=Lk(lb(a));var b=[];return Lc(a,
function(a){V(Xb,a)||V(Kc,a)||b.push(a)}),b},sg=function(a){var b=a===Bb;a=Lk(b?zd:lb(a));var d=[];return Lc(a,function(a){!V(Xb,a)||b&&!V(Bb,a)||d.push(Xb[a])}),d};if(Kb||(bb=function(){if(this instanceof bb)throw TypeError("Symbol is not a constructor");var a=arguments.length&&void 0!==arguments[0]?String(arguments[0]):void 0,b=Zd(a),d=function(a){this===Bb&&d.call(zd,a);V(this,ab)&&V(this[ab],b)&&(this[ab][b]=!1);qg(this,b,kc(1,a))};return na&&pg&&qg(Bb,b,{configurable:!0,set:d}),Mk(b,a)},Af(bb.prototype,
"toString",function(){return Jk(this).tag}),Vd=Nk,mb.f=ze,Ic=Pk,lg.f=Gk=Qk,od.f=sg,na&&ec(bb.prototype,"description",{configurable:!0,get:function(){return Jk(this).description}})),Gi||(Hk.f=function(a){return Mk(ya(a),a)}),M({global:!0,wrap:!0,forced:!Kb,sham:!Kb},{Symbol:bb}),Lc(bc(wp),function(a){var b=ha.Symbol||(ha.Symbol={});V(b,a)||tp(b,a,{value:Hk.f(a)})}),M({target:"Symbol",stat:!0,forced:!Kb},{for:function(a){a=String(a);if(V(mg,a))return mg[a];var b=bb(a);return mg[a]=b,ng[b]=a,b},keyFor:function(a){if(!rg(a))throw TypeError(a+
" is not a symbol");if(V(ng,a))return ng[a]},useSetter:function(){pg=!0},useSimple:function(){pg=!1}}),M({target:"Object",stat:!0,forced:!Kb,sham:!na},{create:function(a,b){return void 0===b?pc(a):Ok(pc(a),b)},defineProperty:ze,defineProperties:Ok,getOwnPropertyDescriptor:Pk}),M({target:"Object",stat:!0,forced:!Kb},{getOwnPropertyNames:Qk,getOwnPropertySymbols:sg}),M({target:"Object",stat:!0,forced:ta(function(){od.f(1)})},{getOwnPropertySymbols:function(a){return od.f(xb(a))}}),yd){var xp=!Kb||ta(function(){var a=
bb();return"[null]"!=yd([a])||"{}"!=yd({a})||"{}"!=yd(Object(a))});M({target:"JSON",stat:!0,forced:xp},{stringify:function(a,b,d){for(var e,f=[a],g=1;arguments.length>g;)f.push(arguments[g++]);if(e=b,(Ca(b)||void 0!==a)&&!rg(a))return nc(b)||(b=function(a,b){if("function"==typeof e&&(b=e.call(this,a,b)),!rg(b))return b}),f[1]=b,yd.apply(null,f)}})}bb.prototype[Ik]||vb(bb.prototype,Ik,bb.prototype.valueOf);ld(bb,"Symbol");Kc[ab]=!0;var ja=ha.Object.getOwnPropertySymbols,Va=function(a,b,d){return b in
a?jj(a,b,{value:d,enumerable:!0,configurable:!0,writable:!0}):a[b]=d,a},yp=Fa("Array").values,Rk=Array.prototype,zp={DOMTokenList:!0,NodeList:!0},uc=function(a){var b=a.values;return a===Rk||a instanceof Array&&b===Rk.values||zp.hasOwnProperty(be(a))?yp:b},Ap=!wj(function(a){Array.from(a)});M({target:"Array",stat:!0,forced:Ap},{from:function(a){var b=xb(a);var d="function"==typeof this?this:Array;var e=arguments.length;var f=1<e?arguments[1]:void 0,g=void 0!==f,k=0;var q=Ji(b);if(g&&(f=mc(f,2<e?arguments[2]:
void 0,2)),null==q||d==Array&&Hi(q))for(d=new d(e=wb(b.length));e>k;k++)qc(d,k,g?f(b[k],k):b[k]);else for(e=(b=q.call(b)).next,d=new d;!(q=e.call(b)).done;k++)qc(d,k,g?Ki(b,f,[q.value,k],!0):q.value);return d.length=k,d}});var Qb=ha.Array.from;M({target:"Date",stat:!0},{now:function(){return(new Date).getTime()}});var v=ha.Date.now;class cb{constructor(){this._events={};this.addListener=this.on}getListeners(a){var b;return this._events[a]?y(b=this._events[a]).call(b,a=>a.listener):[]}on(a,b){this._events[a]||
(this._events[a]=[]);a=this._events[a];-1===this._indexOfListener(a,b)&&a.push({listener:b,once:!1})}once(a,b){this._events[a]||(this._events[a]=[]);a=this._events[a];-1===this._indexOfListener(a,b)&&a.push({listener:b,once:!0})}off(a,b){if(this._events[a]){var d=this._events[a];b=this._indexOfListener(d,b);-1!==b&&Ka(d).call(d,b,1);0===this._events[a].length&&delete this._events[a]}}removeAllListeners(a){a?delete this._events[a]:this._events={}}emit(a,...b){var d;this._events[a]||(this._events[a]=
[]);let e=y(d=this._events[a]).call(d,a=>a);for(d=0;d<e.length;d+=1){let f=e[d];f.once&&this.off(a,f.listener);f.listener.apply(this,b||[])}}_indexOfListener(a,b){let d=a.length;for(;d--;)if(a[d].listener===b)return d;return-1}}class Bp extends cb{constructor(){super(...arguments);this.resultStorage=new Z}setLocalAudioStats(a,b,d){this.record("AUDIO_INPUT_LEVEL_TOO_LOW",a,this.checkAudioInputLevel(d));this.record("SEND_AUDIO_BITRATE_TOO_LOW",a,this.checkSendAudioBitrate(d))}setLocalVideoStats(a,b,
d){this.record("SEND_VIDEO_BITRATE_TOO_LOW",a,this.checkSendVideoBitrate(d));this.record("FRAMERATE_INPUT_TOO_LOW",a,this.checkFramerateInput(d,b));this.record("FRAMERATE_SENT_TOO_LOW",a,this.checkFramerateSent(d))}setRemoteAudioStats(a,b){a=a.getUserId();this.record("AUDIO_OUTPUT_LEVEL_TOO_LOW",a,this.checkAudioOutputLevel(b))}setRemoteVideoStats(a,b){a=a.getUserId();this.record("RECV_VIDEO_DECODE_FAILED",a,this.checkVideoDecode(b))}record(a,b,d){this.resultStorage.has(a)||this.resultStorage.set(a,
{result:[],isPrevNormal:!0});let e=this.resultStorage.get(a);if(e&&(e.result.push(d),5<=e.result.length)){var f;d=Ja(f=e.result).call(f,!0);e.isPrevNormal&&!d&&this.emit("exception",Sk[a],a,b);!e.isPrevNormal&&d&&this.emit("exception",Sk[a]+2E3,a+"_RECOVER",b);e.isPrevNormal=d;e.result=[]}}checkAudioOutputLevel(a){return!(0<a.receiveBitrate&&0===a.receiveLevel)}checkAudioInputLevel(a){return 0!==a.sendVolumeLevel}checkFramerateInput(a,b){let d=null;b._encoderConfig&&b._encoderConfig.frameRate&&(d=
jb(b._encoderConfig.frameRate));a=a.captureFrameRate;return!d||!a||!(10<d&&5>a||10>d&&5<=d&&1>=a)}checkFramerateSent(a){return!(a.captureFrameRate&&a.sendFrameRate&&5<a.captureFrameRate&&1>=a.sendFrameRate)}checkSendVideoBitrate(a){return 0!==a.sendBitrate}checkSendAudioBitrate(a){return 0!==a.sendBitrate}checkVideoDecode(a){return 0===a.receiveBitrate||0!==a.decodeFrameRate}}let Sk={FRAMERATE_INPUT_TOO_LOW:1001,FRAMERATE_SENT_TOO_LOW:1002,SEND_VIDEO_BITRATE_TOO_LOW:1003,RECV_VIDEO_DECODE_FAILED:1005,
AUDIO_INPUT_LEVEL_TOO_LOW:2001,AUDIO_OUTPUT_LEVEL_TOO_LOW:2002,SEND_AUDIO_BITRATE_TOO_LOW:2003};class bd{constructor(a){this.localConnectionsMap=new Z;this.remoteConnectionsMap=new Z;this.trafficStatsPeerList=[];this.updateStats=()=>{var a,d;r(a=this.remoteConnectionsMap).call(a,a=>{var b;let d=a.audioStats;var e=a.videoStats,q=a.pcStats;let h=Fb({},ig),l=Fb({},jg),m=Fb({},Ak),p=a.connection.pc.getStats(),n=p.audioRecv[0],r=p.videoRecv[0];q=q?q.videoRecv[0]:void 0;let t=!0===a.connection.pc._statsFilter.videoIsReady,
u=this.trafficStats&&U(b=this.trafficStats.peer_delay).call(b,b=>b.peer_uid===a.connection.getUserId());n&&("opus"!==n.codec&&"aac"!==n.codec||(h.codecType=n.codec),n.outputLevel?h.receiveLevel=Math.round(32767*n.outputLevel):a.connection.user.audioTrack&&(h.receiveLevel=Math.round(32767*a.connection.user.audioTrack.getVolumeLevel())),h.receiveBytes=n.bytes,h.receivePackets=n.packets,h.receivePacketsLost=n.packetsLost,h.packetLossRate=h.receivePacketsLost/h.receivePackets,h.receiveBitrate=d?8*Math.max(0,
h.receiveBytes-d.receiveBytes):0,h.totalDuration=d?d.totalDuration+1:1,h.totalFreezeTime=d?d.totalFreezeTime:0,h.freezeRate=h.totalFreezeTime/h.totalDuration,h.receiveDelay=n.jitterBufferMs,b=a.connection.user.audioTrack,10<h.totalDuration&&bd.isRemoteAudioFreeze(b)&&(h.totalFreezeTime+=1));r&&("H264"!==r.codec&&"VP8"!==r.codec||(l.codecType=r.codec),l.receiveBytes=r.bytes,l.receiveBitrate=e?8*Math.max(0,l.receiveBytes-e.receiveBytes):0,l.decodeFrameRate=r.decodeFrameRate,l.renderFrameRate=r.decodeFrameRate,
r.outputFrame&&(l.renderFrameRate=r.outputFrame.frameRate),r.receivedFrame?(l.receiveFrameRate=r.receivedFrame.frameRate,l.receiveResolutionHeight=r.receivedFrame.height,l.receiveResolutionWidth=r.receivedFrame.width):a.connection.user.videoTrack&&(l.receiveResolutionHeight=a.connection.user.videoTrack._videoHeight||0,l.receiveResolutionWidth=a.connection.user.videoTrack._videoWidth||0),void 0!==r.framesRateFirefox&&(l.receiveFrameRate=Math.round(r.framesRateFirefox)),l.receivePackets=r.packets,l.receivePacketsLost=
r.packetsLost,l.packetLossRate=l.receivePacketsLost/l.receivePackets,l.totalDuration=e?e.totalDuration+1:1,l.totalFreezeTime=e?e.totalFreezeTime:0,l.receiveDelay=r.jitterBufferMs||0,e=a.connection.user.videoTrack,a.connection.subscribeOptions.video&&t&&bd.isRemoteVideoFreeze(e,r,q)&&(l.totalFreezeTime+=1),l.freezeRate=l.totalFreezeTime/l.totalDuration);u&&(h.end2EndDelay=u.B_ad,l.end2EndDelay=u.B_vd,h.transportDelay=u.B_ed,l.transportDelay=u.B_ed,m.uplinkNetworkQuality=u.B_punq?u.B_punq:0,m.downlinkNetworkQuality=
u.B_pdnq?u.B_punq:0);a.audioStats=h;a.videoStats=l;a.pcStats=p;a.networkStats=m;a.connection.user.audioTrack&&this.exceptionMonitor.setRemoteAudioStats(a.connection.user.audioTrack,h);a.connection.user.videoTrack&&this.exceptionMonitor.setRemoteVideoStats(a.connection.user.videoTrack,l)});r(d=this.localConnectionsMap).call(d,a=>{let b=a.audioStats,d=a.videoStats,e=Fb({},we),q=Fb({},xe);var h=a.connection.pc.getStats();let l=h.audioSend[0];h=h.videoSend[0];let m=a.connection.getUserId();l&&("opus"!==
l.codec&&"aac"!==l.codec||(e.codecType=l.codec),l.inputLevel?e.sendVolumeLevel=Math.round(32767*l.inputLevel):a.connection.audioTrack&&(e.sendVolumeLevel=Math.round(32767*a.connection.audioTrack.getVolumeLevel())),e.sendBytes=l.bytes,e.sendPackets=l.packets,e.sendPacketsLost=l.packetsLost,e.sendBitrate=b?8*Math.max(0,e.sendBytes-b.sendBytes):0);h&&("H264"!==h.codec&&"VP8"!==h.codec||(q.codecType=h.codec),q.sendBytes=h.bytes,q.sendBitrate=d?8*Math.max(0,q.sendBytes-d.sendBytes):0,h.inputFrame?(q.captureFrameRate=
h.inputFrame.frameRate,q.captureResolutionHeight=h.inputFrame.height,q.captureResolutionWidth=h.inputFrame.width):a.connection.videoTrack&&(q.captureResolutionWidth=a.connection.videoTrack._videoWidth||0,q.captureResolutionHeight=a.connection.videoTrack._videoHeight||0),h.sentFrame?(q.sendFrameRate=h.sentFrame.frameRate,q.sendResolutionHeight=h.sentFrame.height,q.sendResolutionWidth=h.sentFrame.width):a.connection.videoTrack&&(q.sendResolutionWidth=a.connection.videoTrack._videoWidth||0,q.sendResolutionHeight=
a.connection.videoTrack._videoHeight||0),h.avgEncodeMs&&(q.encodeDelay=h.avgEncodeMs),a.connection.videoTrack&&a.connection.videoTrack._encoderConfig&&a.connection.videoTrack._encoderConfig.bitrateMax&&(q.targetSendBitrate=1E3*a.connection.videoTrack._encoderConfig.bitrateMax),q.sendPackets=h.packets,q.sendPacketsLost=h.packetsLost,q.totalDuration=d?d.totalDuration+1:1,q.totalFreezeTime=d?d.totalFreezeTime:0,this.isLocalVideoFreeze(h)&&(q.totalFreezeTime+=1));a.audioStats=e;a.videoStats=q;a.audioStats&&
a.connection.audioTrack&&this.exceptionMonitor.setLocalAudioStats(m,a.connection.audioTrack,a.audioStats);a.videoStats&&a.connection.videoTrack&&this.exceptionMonitor.setLocalVideoStats(m,a.connection.videoTrack,a.videoStats)})};this.clientId=a;this.updateStatsInterval=window.setInterval(this.updateStats,1E3);this.exceptionMonitor=new Bp;this.exceptionMonitor.on("exception",(a,d,e)=>{this.onStatsException&&this.onStatsException(a,d,e)})}reset(){this.localConnectionsMap=new Z;this.remoteConnectionsMap=
new Z;this.trafficStats=void 0;this.trafficStatsPeerList=[];this.uplinkStats=void 0}getLocalAudioTrackStats(a){return(a=this.localConnectionsMap.get(a))&&a.audioStats?a.audioStats:Fb({},we)}getLocalVideoTrackStats(a){return(a=this.localConnectionsMap.get(a))&&a.videoStats?a.videoStats:Fb({},xe)}getRemoteAudioTrackStats(a){var b;let d=this.remoteConnectionsMap.get(a);if(!d||!d.audioStats)return Fb({},ig);if(!this.trafficStats)return d.audioStats;a=U(b=this.trafficStats.peer_delay).call(b,a=>a.peer_uid===
d.connection.user.uid);return a&&(d.audioStats.publishDuration=a.B_ppad+(v()-this.trafficStats.timestamp)),d.audioStats}getRemoteNetworkQualityStats(a){return(a=this.remoteConnectionsMap.get(a))&&a.networkStats?a.networkStats:Fb({},Ak)}getRemoteVideoTrackStats(a){var b;let d=this.remoteConnectionsMap.get(a);if(!d||!d.videoStats)return Fb({},jg);if(!this.trafficStats)return d.videoStats;a=U(b=this.trafficStats.peer_delay).call(b,a=>a.peer_uid===d.connection.user.uid);return a&&(d.videoStats.publishDuration=
a.B_ppvd+(v()-this.trafficStats.timestamp)),d.videoStats}getRTCStats(){var a,b;let d=0,e=0,f=0,g=0;r(a=this.localConnectionsMap).call(a,a=>{a.audioStats&&(d+=a.audioStats.sendBytes,e+=a.audioStats.sendBitrate);a.videoStats&&(d+=a.videoStats.sendBytes,e+=a.videoStats.sendBitrate)});r(b=this.remoteConnectionsMap).call(b,a=>{a.audioStats&&(f+=a.audioStats.receiveBytes,g+=a.audioStats.receiveBitrate);a.videoStats&&(f+=a.videoStats.receiveBytes,g+=a.videoStats.receiveBitrate)});a=1;return this.trafficStats&&
(a+=this.trafficStats.peer_delay.length),{Duration:0,UserCount:a,SendBitrate:e,SendBytes:d,RecvBytes:f,RecvBitrate:g,OutgoingAvailableBandwidth:this.uplinkStats?this.uplinkStats.B_uab/1E3:0,RTT:this.trafficStats?2*this.trafficStats.B_acd:0}}removeConnection(a){this.localConnectionsMap.delete(a);this.remoteConnectionsMap.delete(a)}addLocalConnection(a){let b=a.connectionId;this.localConnectionsMap.has(b)||this.localConnectionsMap.set(b,{connection:a})}addRemoteConnection(a){let b=a.connectionId;this.remoteConnectionsMap.has(b)||
this.remoteConnectionsMap.set(b,{connection:a})}updateTrafficStats(a){var b;let d=P(b=a.peer_delay).call(b,a=>{var b;return-1===D(b=this.trafficStatsPeerList).call(b,a.peer_uid)});r(d).call(d,a=>{var b,d;let e=U(b=Qb(uc(d=this.remoteConnectionsMap).call(d))).call(b,b=>b.connection._userId===a.peer_uid);void 0!==a.B_ppad&&void 0!==a.B_ppvd&&(this.onUploadPublishDuration&&this.onUploadPublishDuration(a.peer_uid,a.B_ppad,a.B_ppvd,e?v()-e.connection.startTime:0),this.trafficStatsPeerList.push(a.peer_uid))});
this.trafficStats=a}updateUplinkStats(a){var b;this.uplinkStats&&this.uplinkStats.B_fir!==a.B_fir&&h.debug(p(b="[".concat(this.clientId,"]: Period fir changes to ")).call(b,a.B_fir));this.uplinkStats=a}static isRemoteVideoFreeze(a,b,d){if(!a)return!1;a=!d||b.framesDecodeCount>d.framesDecodeCount;return!!d&&b.framesDecodeFreezeTime>d.framesDecodeFreezeTime||!a}static isRemoteAudioFreeze(a){return!!a&&a._isFreeze()}isLocalVideoFreeze(a){return!(!a.inputFrame||!a.sentFrame)&&5<a.inputFrame.frameRate&&
3>a.sentFrame.frameRate}}var Tk;let tg=()=>{},Ph={},gd=[[[100,.00520833333333333],[66.6666666666666,.00434027777777778],[66.6666666666667,.00173611111111111]],[[233.333333333333,.00347222222222222],[266.666666666667],[.00173611111111111],[183.333333333333,2.17013888888889E-4]],[[700,.001953125],[200,.001953125],[175,2.44140625E-4]],[[899.999999999998,.00173611111111111],[1200,8.68055555555556E-4],[160,2.60416666666667E-4]],[[2666.66666666667,8.84130658436214E-4],[1166.66666666667,8.84130658436214E-4],
[600,4.82253E-5]]];class Cp{constructor(){this.fnMap=new Z}throttleByKey(a,b,d,e,...f){if(this.fnMap.has(b)){var g=this.fnMap.get(b);g.threshold!==d?(g.fn(...g.args),clearTimeout(g.timer),g=window.setTimeout(()=>{const a=this.fnMap.get(b);a&&a.fn(...a.args);this.fnMap.delete(b)},d),this.fnMap.set(b,{fn:a,threshold:d,timer:g,args:f,skipFn:e})):(g.skipFn&&g.skipFn(...g.args),this.fnMap.set(b,Ye({},g,{fn:a,args:f,skipFn:e})))}else g=window.setTimeout(()=>{const a=this.fnMap.get(b);a&&a.fn(...a.args);
this.fnMap.delete(b)},d),this.fnMap.set(b,{fn:a,threshold:d,timer:g,args:f,skipFn:e})}}let Uk=new Cp,Vk=Da(Tk=Uk.throttleByKey).call(Tk,Uk),Qd=null,Dp=1;class fc{constructor(a){var b;this.lockingPromise=x.resolve();this.locks=0;this.name="";this.lockId=Dp++;a&&(this.name=a);h.debug(p(b="[lock-".concat(this.name,"-")).call(b,this.lockId,"] is created."))}get isLocked(){return 0<this.locks}lock(){var a,b;let d;this.locks+=1;h.debug(p(a=p(b="[lock-".concat(this.name,"-")).call(b,this.lockId,"] is locked, current queue ")).call(a,
this.locks,"."));let e=new x(a=>{d=()=>{var b,d;--this.locks;h.debug(p(b=p(d="[lock-".concat(this.name,"-")).call(d,this.lockId,"] is not locked, current queue ")).call(b,this.locks,"."));a()}});a=this.lockingPromise.then(()=>d);return this.lockingPromise=this.lockingPromise.then(()=>e),a}}let $e=new fc("safari"),Uh=!1,Vh=!1;class Ep extends cb{constructor(){super();this._state=tc.IDLE;this.lastAccessCameraPermission=this.lastAccessMicrophonePermission=this.isAccessCameraPermission=this.isAccessMicrophonePermission=
!1;this.deviceInfoMap=new Z;this.init().then(()=>{var a,b;navigator.mediaDevices&&navigator.mediaDevices.addEventListener&&navigator.mediaDevices.addEventListener("devicechange",Da(b=this.updateDevicesInfo).call(b,this));window.setInterval(Da(a=this.updateDevicesInfo).call(a,this),2500)}).catch(a=>h.error(a.toString()))}get state(){return this._state}set state(a){a!==this._state&&(this.emit(Wb.STATE_CHANGE,a),this._state=a)}async enumerateDevices(a,b,d=!1){if(!navigator.mediaDevices||!navigator.mediaDevices.enumerateDevices)return(new n(m.NOT_SUPPORTED,
"enumerateDevices() not supported.")).throw();var e=await navigator.mediaDevices.enumerateDevices();e=this.checkMediaDeviceInfoIsOk(e);let f=!this.isAccessMicrophonePermission&&a,g=!this.isAccessCameraPermission&&b;e.audio&&(f=!1);e.video&&(g=!1);let k=e=null,q=null;if(!d&&(f||g)){$e.isLocked&&(h.debug("[device manager] wait GUM lock"),(await $e.lock())(),h.debug("[device manager] GUM unlock"));if(Uh&&(f=!1,this.isAccessMicrophonePermission=!0),Vh&&(g=!1,this.isAccessCameraPermission=!0),h.debug("[device manager] check media device permissions",
a,b,f,g),f&&g){try{q=await navigator.mediaDevices.getUserMedia({audio:!0,video:!0})}catch(pa){d=Rd(pa.name||pa.code||pa,pa.message);if(d.code===m.PERMISSION_DENIED)throw d;h.warning("getUserMedia failed in getDevices",d)}this.isAccessMicrophonePermission=this.isAccessCameraPermission=!0}else if(f){try{e=await navigator.mediaDevices.getUserMedia({audio:a})}catch(pa){d=Rd(pa.name||pa.code||pa,pa.message);if(d.code===m.PERMISSION_DENIED)throw d;h.warning("getUserMedia failed in getDevices",d)}this.isAccessMicrophonePermission=
!0}else if(g){try{k=await navigator.mediaDevices.getUserMedia({video:b})}catch(pa){d=Rd(pa.name||pa.code||pa,pa.message);if(d.code===m.PERMISSION_DENIED)throw d;h.warning("getUserMedia failed in getDevices",d)}this.isAccessCameraPermission=!0}h.debug("[device manager] mic permission",a,"cam permission",b)}try{var l,p,ia;let a=await navigator.mediaDevices.enumerateDevices();return e&&r(l=e.getTracks()).call(l,a=>a.stop()),k&&r(p=k.getTracks()).call(p,a=>a.stop()),q&&r(ia=q.getTracks()).call(ia,a=>
a.stop()),e=null,k=null,q=null,a}catch(pa){var F,t,za;e&&r(F=e.getTracks()).call(F,a=>a.stop());k&&r(t=k.getTracks()).call(t,a=>a.stop());q&&r(za=q.getTracks()).call(za,a=>a.stop());q=k=e=null;return(new n(m.ENUMERATE_DEVICES_FAILED,pa.toString())).throw()}}async getRecordingDevices(a=!1){a=await this.enumerateDevices(!0,!1,a);return P(a).call(a,a=>"audioinput"===a.kind)}async getCamerasDevices(a=!1){a=await this.enumerateDevices(!1,!0,a);return P(a).call(a,a=>"videoinput"===a.kind)}async getSpeakers(a=
!1){a=await this.enumerateDevices(!0,!1,a);return P(a).call(a,a=>"audiooutput"===a.kind)}searchDeviceNameById(a){return(a=this.deviceInfoMap.get(a))?a.device.label||a.device.deviceId:null}searchDeviceIdByName(a){var b;let d=null;return r(b=this.deviceInfoMap).call(b,b=>{b.device.label===a&&(d=b.device.deviceId)}),d}async getDeviceById(a){var b=await this.enumerateDevices(!0,!0,!0);b=U(b).call(b,b=>b.deviceId===a);if(!b)throw new n(m.DEVICE_NOT_FOUND,"deviceId: ".concat(a));return b}async init(){this.state=
tc.INITING;try{await this.updateDevicesInfo(),this.state=tc.INITEND}catch(a){throw(h.warning("Device Detection functionality cannot start properly.",a.toString()),this.state=tc.IDLE,"boolean"==typeof isSecureContext?isSecureContext:"https:"===location.protocol||"file:"===location.protocol||"localhost"===location.hostname||"127.0.0.1"===location.hostname||"::1"===location.hostname)||(new n(m.WEB_SECURITY_RESTRICT,"Your context is limited by web security, please try using https protocol or localhost.")).throw(),
a;}}async updateDevicesInfo(){var a;let b=await this.enumerateDevices(!0,!0,!0),d=v(),e=[],f=this.checkMediaDeviceInfoIsOk(b);if(r(b).call(b,a=>{if(a.deviceId){var b=this.deviceInfoMap.get(a.deviceId);if("ACTIVE"!==(b?b.state:"INACTIVE")){let b={initAt:d,updateAt:d,device:a,state:"ACTIVE"};this.deviceInfoMap.set(a.deviceId,b);e.push(b)}b&&(b.updateAt=d)}}),r(a=this.deviceInfoMap).call(a,(a,b)=>{"ACTIVE"===a.state&&a.updateAt!==d&&(a.state="INACTIVE",e.push(a))}),this.state!==tc.INITEND)return f.audio&&
(this.lastAccessMicrophonePermission=!0,this.isAccessMicrophonePermission=!0),void(f.video&&(this.lastAccessCameraPermission=!0,this.isAccessCameraPermission=!0));r(e).call(e,a=>{switch(a.device.kind){case "audioinput":this.lastAccessMicrophonePermission&&this.isAccessMicrophonePermission&&this.emit(Wb.RECORDING_DEVICE_CHANGED,a);break;case "videoinput":this.lastAccessCameraPermission&&this.isAccessCameraPermission&&this.emit(Wb.CAMERA_DEVICE_CHANGED,a);break;case "audiooutput":this.lastAccessMicrophonePermission&&
this.isAccessMicrophonePermission&&this.emit(Wb.PLAYOUT_DEVICE_CHANGED,a)}});f.audio&&(this.lastAccessMicrophonePermission=!0,this.isAccessMicrophonePermission=!0);f.video&&(this.lastAccessCameraPermission=!0,this.isAccessCameraPermission=!0)}checkMediaDeviceInfoIsOk(a){let b=P(a).call(a,a=>"audioinput"===a.kind);a=P(a).call(a,a=>"videoinput"===a.kind);let d={audio:!1,video:!1};for(let a of b)if(a.label&&a.deviceId){d.audio=!0;break}for(let b of a)if(b.label&&b.deviceId){d.video=!0;break}return d}}
let ib=new Ep;var Fp=[].slice,Gp=/MSIE .\./.test(pd),Wk=function(a){return function(b,d){var e=2<arguments.length,f=e?Fp.call(arguments,2):void 0;return a(e?function(){("function"==typeof b?b:Function(b)).apply(this,f)}:b,d)}};M({global:!0,bind:!0,forced:Gp},{setTimeout:Wk(K.setTimeout),setInterval:Wk(K.setInterval)});var Fc=ha.setTimeout;let Xh=0,af=0,Xk=(a,b)=>{b=ma.Events[a].create(b);return ma.Events[a].encode(b).finish()};class Hp{constructor(){var a,b;this.baseInfoMap=new Z;this.clientList=
mk;this.keyEventUploadPendingItems=[];this.normalEventUploadPendingItems=[];this.apiInvokeUploadPendingItems=[];this.apiInvokeCount=0;this.ltsList=[];this.lastSendNormalEventTime=v();this.customReportCount=0;this.eventUploadTimer=window.setInterval(Da(a=this.doSend).call(a,this),u.EVENT_REPORT_SEND_INTERVAL);this.setSessionIdTimer=window.setInterval(Da(b=this.appendSessionId).call(b,this),u.EVENT_REPORT_SEND_INTERVAL)}reportApiInvoke(a,b,d){b.timeout=b.timeout||6E4;b.reportResult=void 0===b.reportResult||
b.reportResult;let e=v(),f=this.apiInvokeCount+=1,g=()=>({tag:b.tag,invokeId:f,sid:a,name:b.name,apiInvokeTime:e,options:b.options}),k=!!u.SHOW_REPORT_INVOKER_LOG;k&&h.info("".concat(b.name," start"),b.options);let q=!1;Gb(b.timeout).then(()=>{q||(this.sendApiInvoke(xa({},g(),{error:m.API_INVOKE_TIMEOUT,success:!1})),h.debug("".concat(b.name," timeout")))});let l=new n(m.UNEXPECTED_ERROR,"".concat(b.name,": this api invoke is end"));return{onSuccess:a=>{let e=()=>{if(q)throw l;return q=!0,this.sendApiInvoke(xa({},
g(),{success:!0},b.reportResult&&{result:a})),k&&h.info("".concat(b.name," onSuccess")),a};return d?Vk(e,b.name+"Success",d,()=>q=!0):e()},onError:a=>{let e=()=>{if(q)throw a;q=!0;this.sendApiInvoke(xa({},g(),{success:!1,error:a.toString()}));k&&h.info("".concat(b.name," onFailure"),a.toString())};return d?Vk(e,b.name+"Error",d,()=>q=!0):e()}}}sessionInit(a,b){if(!this.baseInfoMap.has(a)){var d=v();a=this.createBaseInfo(a,d);a.cname=b.cname;var e=Qa({},{willUploadConsoleLog:u.UPLOAD_LOG,maxTouchPoints:navigator.maxTouchPoints,
areaVersion:ad?"global":"oversea",areas:u.AREAS&&u.AREAS.join(",")},b.extend),f=v();b=xa({},a,{eventType:Ga.SESSION_INIT,appid:b.appid,browser:navigator.userAgent,build:"v4.3.0-0-g0586d79(1/27/2021, 4:10:54 PM)",lts:f,elapse:f-d,extend:z(e),mode:b.mode,process:u.PROCESS_ID,success:!0,version:fb});this.send({type:ua.SESSION,data:b},!0)}}joinChooseServer(a,b){if(a=this.baseInfoMap.get(a)){var d=a.info,e=v();b=xa({},d,{eventType:Ga.JOIN_CHOOSE_SERVER,lts:e,eventElapse:e-b.lts,chooseServerAddr:b.csAddr,
errorCode:b.ec,elapse:e-a.startTime,success:b.succ,chooseServerAddrList:z(b.serverList),uid:b.uid?N(b.uid):null,cid:b.cid?N(b.cid):null});this.send({type:ua.JOIN_CHOOSE_SERVER,data:b},!0)}}reqUserAccount(a,b){if(a=this.baseInfoMap.get(a)){var d=a.info,e=v();b=xa({},d,{eventType:Ga.REQ_USER_ACCOUNT,lts:e,success:b.success,serverAddress:b.serverAddr,stringUid:b.stringUid,uid:b.uid,errorCode:b.errorCode,elapse:e-a.startTime,eventElapse:e-b.lts,extend:z(b.extend)});this.send({type:ua.REQ_USER_ACCOUNT,
data:b},!0)}}joinGateway(a,b){if(a=this.baseInfoMap.get(a)){var d=a.info;b.vid&&(d.vid=b.vid);d.uid=b.uid;d.cid=b.cid;var e=v();d=xa({},d,{eventType:Ga.JOIN_GATEWAY,lts:e,gatewayAddr:b.addr,success:b.succ,errorCode:b.ec,elapse:e-a.startTime,eventElapse:e-b.lts});b.succ&&(a.lastJoinSuccessTime=e);this.send({type:ua.JOIN_GATEWAT,data:d},!0)}}joinChannelTimeout(a,b){if(a=this.baseInfoMap.get(a)){var d=v();b=xa({},a.info,{lts:d,timeout:b,elapse:d-a.startTime});this.send({type:ua.JOIN_CHANNEL_TIMEOUT,
data:b},!0)}}publish(a,b){if(a=this.baseInfoMap.get(a)){var d=a.info,e=v();b=xa({},d,{eventType:Ga.PUBLISH,lts:e,eventElapse:e-b.lts,elapse:e-a.startTime,success:b.succ,errorCode:b.ec,videoName:b.videoName,audioName:b.audioName,screenName:b.screenName,screenshare:b.screenshare,audio:b.audio,video:b.video,p2pid:b.p2pid,publishRequestid:b.publishRequestid});this.send({type:ua.PUBLISH,data:b},!0)}}subscribe(a,b){if(a=this.baseInfoMap.get(a)){var d=a.info,e=v();a=xa({},d,{eventType:Ga.SUBSCRIBE,lts:e,
eventElapse:e-b.lts,elapse:e-a.startTime,success:b.succ,errorCode:b.ec,video:b.video,audio:b.audio,subscribeRequestid:b.subscribeRequestid,p2pid:b.p2pid});"string"==typeof b.peerid?a.peerSuid=b.peerid:a.peer=b.peerid;this.send({type:ua.SUBSCRIBE,data:a},!0)}}firstRemoteFrame(a,b,d,e){if(a=this.baseInfoMap.get(a)){var f=a.info,g=v();b=xa({},f,{},e,{elapse:g-a.startTime,eventType:b,lts:g});this.send({type:d,data:b},!0)}}onGatewayStream(a,b,d,e){if(a=this.baseInfoMap.get(a))b=xa({},a.info,{},e,{eventType:b,
lts:v()}),this.send({type:d,data:b},!0)}streamSwitch(a,b){if(a=this.baseInfoMap.get(a)){var d=a.info,e=v();b=xa({},d,{eventType:Ga.STREAM_SWITCH,lts:e,isDual:b.isdual,elapse:e-a.startTime,success:b.succ});this.send({type:ua.STREAM_SWITCH,data:b},!0)}}requestProxyAppCenter(a,b){if(a=this.baseInfoMap.get(a)){var d=a.info,e=v();b=xa({},d,{eventType:Ga.REQUEST_PROXY_APPCENTER,lts:e,eventElapse:e-b.lts,elapse:e-a.startTime,APAddr:b.APAddr,workerManagerList:b.workerManagerList,response:b.response,errorCode:b.ec,
success:b.succ});this.send({type:ua.REQUEST_PROXY_APPCENTER,data:b},!0)}}requestProxyWorkerManager(a,b){if(a=this.baseInfoMap.get(a)){var d=a.info,e=v();b=xa({},d,{eventType:Ga.REQUEST_PROXY_WORKER_MANAGER,lts:e,eventElapse:e-b.lts,elapse:e-a.startTime,workerManagerAddr:b.workerManagerAddr,response:b.response,errorCode:b.ec,success:b.succ});this.send({type:ua.REQUEST_PROXY_WORKER_MANAGER,data:b},!0)}}setProxyServer(a){(this.proxyServer=a)?h.debug("reportProxyServerurl: ".concat(a)):h.debug("disable reportProxyServerurl: ".concat(a))}peerPublishStatus(a,
b){if(a=this.baseInfoMap.get(a)){var d=a.info,e=v();b=xa({},d,{subscribeElapse:b.subscribeElapse,peer:b.peer,peerPublishDuration:Math.max(b.audioPublishDuration,b.videoPublishDuration),audiotag:0<b.audioPublishDuration?1:-1,videotag:0<b.videoPublishDuration?1:-1,lts:e,elapse:e-a.startTime,joinChannelSuccessElapse:e-(a.lastJoinSuccessTime||e)});this.send({type:ua.PEER_PUBLISH_STATUS,data:b},!0)}}workerEvent(a,b){if(a=this.baseInfoMap.get(a)){var d=a.info,e=v();b=Sl(xa({},d,{},b,{elapse:e-a.startTime,
lts:e,productType:"WebRTC"}),"payload",1300);r(b).call(b,a=>this.send({type:"WorkerEvent",data:a,isPb:!0,id:156},!0))}}apworkerEvent(a,b){if(a=this.baseInfoMap.get(a)){var d=a.info,e=v();b=xa({},d,{},b,{elapse:e-a.startTime,lts:e});this.send({type:"APWorkerEvent",data:b,isPb:!0,id:160},!0)}}joinWebProxyAP(a,b){if(a=this.baseInfoMap.get(a)){var d=a.info,e=v();b=xa({},d,{},b,{elapse:e-a.startTime,lts:e});this.send({type:"JoinWebProxyAP",data:b,isPb:!0,id:700},!0)}}WebSocketQuit(a,b){if(a=this.baseInfoMap.get(a)){var d=
a.info,e=v();b=xa({},d,{},b,{elapse:e-a.startTime,lts:e});this.send({type:"WebSocketQuit",data:b,isPb:!0,id:671},!0)}}async sendCustomReportMessage(a,b){if(this.customReportCount+=b.length,this.customReportCount>u.CUSTOM_REPORT_LIMIT)throw new n(m.CUSTOM_REPORT_FREQUENCY_TOO_HIGH);this.customReportCounterTimer||(this.customReportCounterTimer=window.setInterval(()=>{this.customReportCount=0},5E3));b=y(b).call(b,b=>({type:ua.USER_ANALYTICS,data:xa({sid:a},b)}));b={msgType:"EventMessages",sentTs:Math.round(v()/
1E3),payloads:y(b).call(b,a=>z(a))};try{await this.postDataToStatsCollector(b)}catch(d){throw h.error("send custom report message failed",d.toString()),new n(m.CUSTOM_REPORT_SEND_FAILED,d.message);}}sendApiInvoke(a){var b=u.NOT_REPORT_EVENT;if(a.tag&&Ja(b)&&Ja(b).call(b,a.tag))return!1;if(null===a.sid)return this.apiInvokeUploadPendingItems.push(a),!1;b=this.baseInfoMap.get(a.sid);if(!b)return this.apiInvokeUploadPendingItems.push(a),!1;let {cname:d,uid:e,cid:f}=b.info;a.lts=a.lts||v();a={invokeId:a.invokeId,
sid:a.sid,cname:d,cid:f,uid:e,lts:a.lts,success:a.success,elapse:a.lts-b.startTime,execElapse:a.lts-a.apiInvokeTime,apiName:a.name,options:a.options?z(a.options):void 0,execStates:a.states?z(a.states):void 0,execResult:a.result?z(a.result):void 0,errorCode:a.error?z(a.error):void 0};return this.send({type:ua.API_INVOKE,data:a},!1),!0}appendSessionId(){var a;r(a=this.clientList).call(a,a=>{if(a._sessionId){let b=this.apiInvokeUploadPendingItems.length;for(let d=0;d<b;d++){let b=this.apiInvokeUploadPendingItems.shift();
b&&(b.sid=a._sessionId,this.sendApiInvoke(Qa({},b)))}}})}send(a,b){if(b)return this.keyEventUploadPendingItems.push(a),void this.sendItems(this.keyEventUploadPendingItems,!0);var d;(this.normalEventUploadPendingItems.push(a),this.normalEventUploadPendingItems.length>u.NORMAL_EVENT_QUEUE_CAPACITY)&&Ka(d=this.normalEventUploadPendingItems).call(d,0,1);10<=this.normalEventUploadPendingItems.length&&this.sendItems(this.normalEventUploadPendingItems,!1)}doSend(){0<this.keyEventUploadPendingItems.length&&
this.sendItems(this.keyEventUploadPendingItems,!0);0<this.normalEventUploadPendingItems.length&&5E3<=v()-this.lastSendNormalEventTime&&this.sendItems(this.normalEventUploadPendingItems,!1)}sendItems(a,b){let d=[],e=[];for(var f=[];a.length;){let b=a.shift();mp(b)?20>e.length?e.push(b):f.push(b):20>d.length?d.push(b):f.push(b)}a.push(...f);for(let a of[...d,...e]){var g,k;-1!==D(g=this.ltsList).call(g,a.data.lts)?(a.data.lts=this.ltsList[this.ltsList.length-1]+1,this.ltsList.push(a.data.lts)):(this.ltsList.push(a.data.lts),
vd(k=this.ltsList).call(k,(a,b)=>a-b))}b||(this.lastSendNormalEventTime=v());f={msgType:"EventMessages",sentTs:Math.round(v()/1E3),payloads:y(d).call(d,a=>z(a))};g=Xk("ProtoRaws",{sentTs:Math.round(v()/1E3),payloads:y(e).call(e,a=>({id:a.id,msg:Xk(a.type,a.data)}))});k=a=>d=>{var e,f,g;b?this.keyEventUploadPendingItems=p(e=this.keyEventUploadPendingItems).call(e,a):(this.normalEventUploadPendingItems=p(f=this.normalEventUploadPendingItems).call(f,a),this.normalEventUploadPendingItems.length>u.NORMAL_EVENT_QUEUE_CAPACITY&&
(Ka(g=this.normalEventUploadPendingItems).call(g,0,this.normalEventUploadPendingItems.length-u.NORMAL_EVENT_QUEUE_CAPACITY),h.warning("report: drop normal events")))};return e.length&&this.postDataToStatsCollector(g,!0).catch(k(e)),d.length&&this.postDataToStatsCollector(f).catch(k(d)),a}async postDataToStatsCollector(a,b=!1){var d,e,f;let g=b?"/events/proto-raws":"/events/messages",k=this.url||(this.proxyServer?p(d=p(e="https://".concat(this.proxyServer,"/rs/?h=")).call(e,u.EVENT_REPORT_DOMAIN,"&p=6443&d=")).call(d,
g):p(f="https://".concat(u.EVENT_REPORT_DOMAIN,":6443")).call(f,g));for(d=0;2>d;d+=1){var h,l,m;1===d&&(k=this.backupUrl||(this.proxyServer?p(h=p(l="https://".concat(this.proxyServer,"/rs/?h=")).call(l,u.EVENT_REPORT_BACKUP_DOMAIN,"&p=6443&d=")).call(h,g):p(m="https://".concat(u.EVENT_REPORT_BACKUP_DOMAIN,":6443")).call(m,g)));try{b?await bm(k,{timeout:1E4,data:a}):await Pb(k,{timeout:1E4,data:a})}catch(ia){if(1===d)throw ia;continue}break}}createBaseInfo(a,b){let d=Qa({},lp);return d.sid=a,this.baseInfoMap.set(a,
{info:d,startTime:b}),d}}let t=new Hp,cm={[Cc.ACCESS_POINT]:{[Ha.NO_FLAG_SET]:{desc:"flag is zero",retry:!1},[Ha.FLAG_SET_BUT_EMPTY]:{desc:"flag is empty",retry:!1},[Ha.INVALID_FALG_SET]:{desc:"invalid flag",retry:!1},[Ha.NO_SERVICE_AVAILABLE]:{desc:"no service available",retry:!0},[Ha.NO_SERVICE_AVAILABLE_P2P]:{desc:"no unilbs p2p service available",retry:!0},[Ha.NO_SERVICE_AVAILABLE_VOET]:{desc:"no unilbs voice service available",retry:!0},[Ha.NO_SERVICE_AVAILABLE_WEBRTC]:{desc:"no unilbs webrtc service available",
retry:!0},[Ha.NO_SERVICE_AVAILABLE_CDS]:{desc:"no cds service available",retry:!0},[Ha.NO_SERVICE_AVAILABLE_CDN]:{desc:"no cdn dispatcher service available",retry:!0},[Ha.NO_SERVICE_AVAILABLE_TDS]:{desc:"no tds service available",retry:!0},[Ha.NO_SERVICE_AVAILABLE_REPORT]:{desc:"no unilbs report service available",retry:!0},[Ha.NO_SERVICE_AVAILABLE_APP_CENTER]:{desc:"no app center service available",retry:!0},[Ha.NO_SERVICE_AVAILABLE_ENV0]:{desc:"no unilbs sig env0 service available",retry:!0},[Ha.NO_SERVICE_AVAILABLE_VOET]:{desc:"no unilbs voet service available",
retry:!0},[Ha.NO_SERVICE_AVAILABLE_STRING_UID]:{desc:"no string uid service available",retry:!0},[Ha.NO_SERVICE_AVAILABLE_WEBRTC_UNILBS]:{desc:"no webrtc unilbs service available",retry:!0}},[Cc.UNILBS]:{[Za.INVALID_VENDOR_KEY]:{desc:"invalid vendor key, can not find appid",retry:!1},[Za.INVALID_CHANNEL_NAME]:{desc:"invalid channel name",retry:!1},[Za.INTERNAL_ERROR]:{desc:"unilbs internal error",retry:!1},[Za.NO_AUTHORIZED]:{desc:"invalid token, authorized failed",retry:!1},[Za.DYNAMIC_KEY_TIMEOUT]:{desc:"dynamic key or token timeout",
retry:!1},[Za.NO_ACTIVE_STATUS]:{desc:"no active status",retry:!1},[Za.DYNAMIC_KEY_EXPIRED]:{desc:"dynamic key expired",retry:!1},[Za.STATIC_USE_DYNAMIC_KEY]:{desc:"static use dynamic key",retry:!1},[Za.DYNAMIC_USE_STATIC_KEY]:{desc:"dynamic use static key",retry:!1},[Za.USER_OVERLOAD]:{desc:"amount of users over load",retry:!1},[Za.FORBIDDEN_REGION]:{desc:"the request is forbidden in this area",retry:!1},[Za.CANNOT_MEET_AREA_DEMAND]:{desc:"unable to allocate services in this area",retry:!1}},[Cc.STRING_UID_ALLOCATOR]:{[wd.IIIEGAL_APPID]:{desc:"invalid appid",
retry:!1},[wd.IIIEGAL_UID]:{desc:"invalid string uid",retry:!1},[wd.INTERNAL_ERROR]:{desc:"string uid allocator internal error",retry:!0}}},dm={[B.K_TIMESTAMP_EXPIRED]:{desc:"K_TIMESTAMP_EXPIRED",action:"failed"},[B.K_CHANNEL_PERMISSION_INVALID]:{desc:"K_CHANNEL_PERMISSION_INVALID",action:"failed"},[B.K_CERTIFICATE_INVALID]:{desc:"K_CERTIFICATE_INVALID",action:"failed"},[B.K_CHANNEL_NAME_EMPTY]:{desc:"K_CHANNEL_NAME_EMPTY",action:"failed"},[B.K_CHANNEL_NOT_FOUND]:{desc:"K_CHANNEL_NOT_FOUND",action:"failed"},
[B.K_TICKET_INVALID]:{desc:"K_TICKET_INVALID",action:"failed"},[B.K_CHANNEL_CONFLICTED]:{desc:"K_CHANNEL_CONFLICTED",action:"failed"},[B.K_SERVICE_NOT_READY]:{desc:"K_SERVICE_NOT_READY",action:"recover"},[B.K_SERVICE_TOO_HEAVY]:{desc:"K_SERVICE_TOO_HEAVY",action:"tryNext"},[B.K_UID_BANNED]:{desc:"K_UID_BANNED",action:"failed"},[B.K_IP_BANNED]:{desc:"K_IP_BANNED",action:"failed"},[B.ERR_INVALID_VENDOR_KEY]:{desc:"ERR_INVALID_VENDOR_KEY",action:"failed"},[B.ERR_INVALID_CHANNEL_NAME]:{desc:"ERR_INVALID_CHANNEL_NAME",
action:"failed"},[B.WARN_NO_AVAILABLE_CHANNEL]:{desc:"WARN_NO_AVAILABLE_CHANNEL",action:"failed"},[B.WARN_LOOKUP_CHANNEL_TIMEOUT]:{desc:"WARN_LOOKUP_CHANNEL_TIMEOUT",action:"tryNext"},[B.WARN_LOOKUP_CHANNEL_REJECTED]:{desc:"WARN_LOOKUP_CHANNEL_REJECTED",action:"failed"},[B.WARN_OPEN_CHANNEL_TIMEOUT]:{desc:"WARN_OPEN_CHANNEL_TIMEOUT",action:"tryNext"},[B.WARN_OPEN_CHANNEL_REJECTED]:{desc:"WARN_OPEN_CHANNEL_REJECTED",action:"failed"},[B.WARN_REQUEST_DEFERRED]:{desc:"WARN_REQUEST_DEFERRED",action:"failed"},
[B.ERR_DYNAMIC_KEY_TIMEOUT]:{desc:"ERR_DYNAMIC_KEY_TIMEOUT",action:"failed"},[B.ERR_NO_AUTHORIZED]:{desc:"ERR_NO_AUTHORIZED",action:"failed"},[B.ERR_VOM_SERVICE_UNAVAILABLE]:{desc:"ERR_VOM_SERVICE_UNAVAILABLE",action:"tryNext"},[B.ERR_NO_CHANNEL_AVAILABLE_CODE]:{desc:"ERR_NO_CHANNEL_AVAILABLE_CODE",action:"failed"},[B.ERR_MASTER_VOCS_UNAVAILABLE]:{desc:"ERR_MASTER_VOCS_UNAVAILABLE",action:"tryNext"},[B.ERR_INTERNAL_ERROR]:{desc:"ERR_INTERNAL_ERROR",action:"tryNext"},[B.ERR_NO_ACTIVE_STATUS]:{desc:"ERR_NO_ACTIVE_STATUS",
action:"failed"},[B.ERR_INVALID_UID]:{desc:"ERR_INVALID_UID",action:"failed"},[B.ERR_DYNAMIC_KEY_EXPIRED]:{desc:"ERR_DYNAMIC_KEY_EXPIRED",action:"failed"},[B.ERR_STATIC_USE_DYANMIC_KE]:{desc:"ERR_STATIC_USE_DYANMIC_KE",action:"failed"},[B.ERR_DYNAMIC_USE_STATIC_KE]:{desc:"ERR_DYNAMIC_USE_STATIC_KE",action:"failed"},[B.ERR_NO_VOCS_AVAILABLE]:{desc:"ERR_NO_VOCS_AVAILABLE",action:"tryNext"},[B.ERR_NO_VOS_AVAILABLE]:{desc:"ERR_NO_VOS_AVAILABLE",action:"tryNext"},[B.ERR_JOIN_CHANNEL_TIMEOUT]:{desc:"ERR_JOIN_CHANNEL_TIMEOUT",
action:"tryNext"},[B.ERR_JOIN_BY_MULTI_IP]:{desc:"ERR_JOIN_BY_MULTI_IP",action:"recover"},[B.ERR_NOT_JOINED]:{desc:"ERR_NOT_JOINED",action:"failed"},[B.ERR_REPEAT_JOIN_REQUEST]:{desc:"ERR_REPEAT_JOIN_REQUEST",action:"quit"},[B.ERR_REPEAT_JOIN_CHANNEL]:{desc:"ERR_REPEAT_JOIN_CHANNEL",action:"quit"},[B.ERR_INVALID_VENDOR_KEY]:{desc:"ERR_INVALID_VENDOR_KEY",action:"failed"},[B.ERR_INVALID_CHANNEL_NAME]:{desc:"ERR_INVALID_CHANNEL_NAME",action:"failed"},[B.ERR_INVALID_STRINGUID]:{desc:"ERR_INVALID_STRINGUID",
action:"failed"},[B.ERR_TOO_MANY_USERS]:{desc:"ERR_TOO_MANY_USERS",action:"tryNext"},[B.ERR_SET_CLIENT_ROLE_TIMEOUT]:{desc:"ERR_SET_CLIENT_ROLE_TIMEOUT",action:"failed"},[B.ERR_SET_CLIENT_ROLE_NO_PERMISSION]:{desc:"ERR_SET_CLIENT_ROLE_TIMEOUT",action:"failed"},[B.ERR_SET_CLIENT_ROLE_ALREADY_IN_USE]:{desc:"ERR_SET_CLIENT_ROLE_ALREADY_IN_USE",action:"success"},[B.ERR_PUBLISH_REQUEST_INVALID]:{desc:"ERR_PUBLISH_REQUEST_INVALID",action:"failed"},[B.ERR_SUBSCRIBE_REQUEST_INVALID]:{desc:"ERR_SUBSCRIBE_REQUEST_INVALID",
action:"failed"},[B.ERR_NOT_SUPPORTED_MESSAGE]:{desc:"ERR_NOT_SUPPORTED_MESSAGE",action:"failed"},[B.ERR_ILLEAGAL_PLUGIN]:{desc:"ERR_ILLEAGAL_PLUGIN",action:"failed"},[B.ILLEGAL_CLIENT_ROLE_LEVEL]:{desc:"ILLEGAL_CLIENT_ROLE_LEVEL",action:"failed"},[B.ERR_REJOIN_TOKEN_INVALID]:{desc:"ERR_REJOIN_TOKEN_INVALID",action:"failed"},[B.ERR_REJOIN_USER_NOT_JOINED]:{desc:"ERR_REJOIN_NOT_JOINED",action:"failed"},[B.ERR_INVALID_OPTIONAL_INFO]:{desc:"ERR_INVALID_OPTIONAL_INFO",action:"quit"},[B.ERR_TEST_RECOVER]:{desc:"ERR_TEST_RECOVER",
action:"recover"},[B.ERR_TEST_TRYNEXT]:{desc:"ERR_TEST_TRYNEXT",action:"recover"},[B.ERR_TEST_RETRY]:{desc:"ERR_TEST_RETRY",action:"recover"},[B.ILLEGAL_AES_PASSWORD]:{desc:"ERR_TEST_RETRY",action:"failed"}},Ra={timeout:500,timeoutFactor:1.5,maxRetryCount:1/0,maxRetryTimeout:1E4};class ug extends cb{constructor(a,b){super();this.currentURLIndex=this.connectionID=0;this.reconnectMode="tryNext";this._state="closed";this.reconnectCount=0;this.name=a;this.retryConfig=b}get url(){return this.websocket?
this.websocket.url:null}get state(){return this._state}set state(a){a!==this._state&&(this._state=a,"reconnecting"===this._state?this.emit(T.RECONNECTING,this.reconnectReason):"connected"===this._state?this.emit(T.CONNECTED):"closed"===this._state?this.emit(T.CLOSED):"failed"===this._state&&this.emit(T.FAILED))}init(a){return new x((b,d)=>{this.urls=a;let e=this.urls[this.currentURLIndex];this.state="connecting";this.createWebSocketConnection(e).then(b).catch(d);this.once(T.CLOSED,()=>d(new n(m.WS_DISCONNECT)));
this.once(T.CONNECTED,()=>b())})}close(a,b){if(this.currentURLIndex=0,this.reconnectCount=0,this.websocket){this.websocket.onclose=null;this.websocket.onopen=null;this.websocket.onmessage=null;let a=this.websocket;b?Fc(()=>a.close(),500):a.close();this.websocket=void 0}this.state=a?"failed":"closed"}reconnect(a,b){if(!this.websocket)return void h.warning("[".concat(this.name,"] can not reconnect, no websocket"));void 0!==a&&(this.reconnectMode=a);h.debug("[".concat(this.name,"] reconnect is triggered initiative"));
a=this.websocket.onclose;this.websocket.onclose=null;this.websocket.close();a&&Da(a).call(a,this.websocket)({code:9999,reason:b})}sendMessage(a){if(!this.websocket||this.websocket.readyState!==WebSocket.OPEN)throw new n(m.WS_ABORT,"websocket is not ready");a=z(a);try{this.websocket.send(a)}catch(b){throw new n(m.WS_ERR,"send websocket message error"+b.toString());}}async createWebSocketConnection(a){let b=this.connectionID+=1;return new x((d,e)=>{var f,g;this.websocket&&(this.websocket.onclose=null,
this.websocket.close());u.GATEWAY_WSS_ADDRESS&&Fd(f=this.name).call(f,"gateway")&&(a=u.GATEWAY_WSS_ADDRESS);h.debug(p(g="[".concat(this.name,"] start connect, url: ")).call(g,a));try{this.websocket=new WebSocket(a),this.websocket.binaryType="arraybuffer"}catch(q){var k;f=new n(m.WS_ERR,"init websocket failed! Error: ".concat(q.toString()));return h.error(p(k="[".concat(this.name,"]")).call(k,f)),void e(f)}Gb(5E3).then(()=>{b===this.connectionID&&this.websocket&&this.websocket.readyState!==WebSocket.OPEN&&
this.websocket&&this.websocket.close()});this.websocket.onopen=()=>{h.debug("[".concat(this.name,"] websocket opened:"),a);this.reconnectMode="retry";this.state="connected";this.reconnectCount=0;d()};this.websocket.onclose=async a=>{var b,f,g,k;if(h.debug(p(b=p(f=p(g=p(k="[".concat(this.name,"] websocket close ")).call(k,this.websocket&&this.websocket.url,", code: ")).call(g,a.code,", reason: ")).call(f,a.reason,", current mode: ")).call(b,this.reconnectMode)),this.reconnectCount<this.retryConfig.maxRetryCount){"connected"===
this.state&&(this.reconnectReason=a.reason,this.state="reconnecting");b=jc(this,T.WILL_RECONNECT,this.reconnectMode)||this.reconnectMode;b=await this.reconnectWithAction(b);if("closed"===this.state)return void h.debug("[".concat(this.connectionID,"] ws is closed, no need to reconnect"));if(!b)return e(new n(m.WS_DISCONNECT,"websocket reconnect failed: ".concat(a.code))),void this.close(!0);d()}else e(new n(m.WS_DISCONNECT,"websocket close: ".concat(a.code))),this.close()};this.websocket.onmessage=
a=>{this.emit(T.ON_MESSAGE,a)}})}async reconnectWithAction(a,b){var d,e;if(!b&&this.reconnectCount>=this.retryConfig.maxRetryCount||!this.urls||"closed"===this.state)return!1;this.onlineReconnectListener||!navigator||void 0===navigator.onLine||navigator.onLine||(this.onlineReconnectListener=new x(a=>{let b=()=>{this.onlineReconnectListener=void 0;window.removeEventListener("online",b);a()};window.addEventListener("online",b)}));b=em(this.reconnectCount,this.retryConfig);if(h.debug(p(d=p(e="[".concat(this.name,
"] wait ")).call(e,b,"ms to reconnect websocket, mode: ")).call(d,a)),await x.race([Gb(b),this.onlineReconnectListener||new x(()=>{})]),"closed"===this.state)return!1;this.reconnectCount+=1;try{if("retry"===a)await this.createWebSocketConnection(this.urls[this.currentURLIndex]);else if("tryNext"===a){var f,g;if(this.currentURLIndex+=1,this.currentURLIndex>=this.urls.length)return await this.reconnectWithAction("recover");h.debug(p(f=p(g="[".concat(this.name,"] websocket url length: ")).call(g,this.urls.length,
" current index: ")).call(f,this.currentURLIndex));await this.createWebSocketConnection(this.urls[this.currentURLIndex])}else"recover"===a&&(h.debug("[".concat(this.name,"] request new urls")),this.urls=await Na(this,T.REQUEST_NEW_URLS),this.currentURLIndex=0,await this.createWebSocketConnection(this.urls[this.currentURLIndex]));return!0}catch(k){return h.error("[".concat(this.name,"] reconnect failed"),k.toString()),await this.reconnectWithAction(a)}}}class Ip{constructor(a){this.input=[];this.size=
a}add(a){var b;(this.input.push(a),this.input.length>this.size)&&Ka(b=this.input).call(b,0,1)}mean(){var a;return 0===this.input.length?0:Ed(a=this.input).call(a,(a,d)=>a+d)/this.input.length}}class Jp extends cb{constructor(a){super();this._connectionState=va.CLOSED;this.openConnectionTime=v();this.lastMsgTime=v();this.uploadCache=[];this.rttRolling=new Ip(5);this.pingpongTimeoutCount=0;this.onWebsocketMessage=a=>{if(a.data instanceof ArrayBuffer)return void this.emit(O.ON_BINARY_DATA,a.data);a=
JSON.parse(a.data);if(this.lastMsgTime=v(),a.hasOwnProperty("_id")){let b="res-@".concat(a._id);this.emit(b,a._result,a._message)}else if(a.hasOwnProperty("_type")&&(this.emit(a._type,a._message),a._type===Y.ON_NOTIFICATION&&this.handleNotification(a._message),a._type===Y.ON_USER_BANNED))switch(a._message.error_code){case 14:this.close("UID_BANNED");break;case 15:this.close("IP_BANNED");break;case 16:this.close("CHANNEL_BANNED")}};this.clientId=a.clientId;this.spec=a;this.websocket=new ug("gateway-".concat(this.clientId),
this.spec.retryConfig);this.handleWebsocketEvents();window.addEventListener("offline",()=>{this.connectionState===va.CONNECTED&&this.reconnect("retry",$a.OFFLINE)})}get connectionState(){return this._connectionState}set connectionState(a){a!==this._connectionState&&(this._connectionState=a,a===va.CONNECTED?this.emit(O.WS_CONNECTED):a===va.RECONNECTING?this.emit(O.WS_RECONNECTING,this._websocketReconnectReason):a===va.CLOSED&&this.emit(O.WS_CLOSED,this._disconnectedReason))}get url(){return this.websocket?
this.websocket.url:null}get rtt(){return this.rttRolling.mean()}async request(a,b,d){var e,f,g,k,q;let l=sa(6,"");var r={_id:l,_type:a,_message:b};let ia=this.websocket.connectionID;var F=()=>new x((a,b)=>{if(this.connectionState===va.CONNECTED)return a();const d=()=>{this.off(O.WS_CLOSED,e);a()},e=()=>{this.off(O.WS_CONNECTED,d);b(new n(m.WS_ABORT))};this.once(O.WS_CONNECTED,d);this.once(O.WS_CLOSED,e)});this.connectionState!==va.CONNECTING&&this.connectionState!==va.RECONNECTING||a===ea.JOIN||a===
ea.REJOIN||await F();var t=new x((d,e)=>{let f=!1;const g=(e,g)=>{f=!0;d({isSuccess:"success"===e,message:g||{}});this.off(O.WS_CLOSED,k);this.off(O.WS_RECONNECTING,k);this.emit(O.REQUEST_SUCCESS,a,b)};this.once("res-@".concat(l),g);const k=()=>{e(new n(m.WS_ABORT,"type: ".concat(a)));this.off(O.WS_CLOSED,k);this.off(O.WS_RECONNECTING,k);this.off("res-@".concat(l),g)};this.once(O.WS_CLOSED,k);this.once(O.WS_RECONNECTING,k);Gb(u.SIGNAL_REQUEST_TIMEOUT).then(()=>{this.websocket.connectionID!==ia||f||
(h.warning("ws request timeout, type: ".concat(a)),this.emit(O.REQUEST_TIMEOUT,a,b))})});this.websocket.sendMessage(r);r=null;try{r=await t}catch(za){if(this.connectionState===va.CLOSED||a===ea.LEAVE)throw new n(m.WS_ABORT);return!this.spec.forceWaitGatewayResponse||d?za.throw():a===ea.JOIN||a===ea.REJOIN?null:(await F(),await this.request(a,b))}if(r.isSuccess)return r.message;d=Number(r.message.error_code||r.message.code);F=Zh(d);t=new n(m.UNEXPECTED_RESPONSE,p(e="".concat(F.desc,": ")).call(e,r.message.error_str),
{code:d,data:r.message});return"success"===F.action?r.message:(h.warning(p(f=p(g=p(k=p(q="[".concat(this.websocket.connectionID,"] unexpected response from type ")).call(q,a,", error_code: ")).call(k,d,", message: ")).call(g,F.desc,", action: ")).call(f,F.action)),"failed"===F.action?t.throw():"quit"===F.action?(this.initError=t,this.close(),t.throw()):(d===B.ERR_JOIN_BY_MULTI_IP?(this.multiIpOption=r.message.option,h.warning("[".concat(this.clientId,"] detect multi ip, recover")),this.reconnect("recover",
$a.MULTI_IP)):this.reconnect(F.action,$a.SERVER_ERROR),a===ea.JOIN||a===ea.REJOIN?null:await this.request(a,b)))}waitMessage(a,b){return new x(d=>{let e=f=>{b&&!b(f)||(this.off(a,e),d(f))};this.on(a,e)})}upload(a,b){a={_type:a,_message:b};try{this.websocket.sendMessage(a)}catch(e){b=u.MAX_UPLOAD_CACHE||50;var d;(this.uploadCache.push(a),this.uploadCache.length>b)&&Ka(d=this.uploadCache).call(d,0,1);0<this.uploadCache.length&&!this.uploadCacheInterval&&(this.uploadCacheInterval=window.setInterval(()=>
{var a;if(this.connectionState===va.CONNECTED){var b=Ka(a=this.uploadCache).call(a,0,1)[0];0===this.uploadCache.length&&(window.clearInterval(this.uploadCacheInterval),this.uploadCacheInterval=void 0);this.upload(b._type,b._message)}},u.UPLOAD_CACHE_INTERVAL||2E3))}}send(a,b){this.websocket.sendMessage({_type:a,_message:b})}init(a){return this.initError=void 0,this.multiIpOption=void 0,this.joinResponse=void 0,this.reconnectToken=void 0,new x((b,d)=>{this.once(O.WS_CONNECTED,()=>b(this.joinResponse));
this.once(O.WS_CLOSED,()=>d(this.initError||new n(m.WS_ABORT)));this.connectionState=va.CONNECTING;this.websocket.init(a).catch(d)})}close(a){this.pingpongTimer&&(this.pingpongTimeoutCount=0,window.clearInterval(this.pingpongTimer),this.pingpongTimer=void 0);this.joinResponse=this.reconnectToken=void 0;this._disconnectedReason=a||"LEAVE";this.connectionState=va.CLOSED;this.websocket.close()}async join(){var a;if(!this.joinResponse){var b=dd(this,O.REQUEST_JOIN_INFO);b=await this.request(ea.JOIN,b);
if(!b)return this.emit(O.REPORT_JOIN_GATEWAY,m.TIMEOUT,this.url||""),!1;this.joinResponse=b;this.reconnectToken=this.joinResponse.rejoin_token}return this.connectionState=va.CONNECTED,this.pingpongTimer&&window.clearInterval(this.pingpongTimer),this.pingpongTimer=window.setInterval(Da(a=this.handlePingPong).call(a,this),3E3),!0}async rejoin(){var a,b;if(!this.reconnectToken)throw new n(m.UNEXPECTED_ERROR,"can not rejoin, no rejoin token");var d=dd(this,O.REQUEST_REJOIN_INFO);d.token=this.reconnectToken;
d=await this.request(ea.REJOIN,d);return!!d&&(this.connectionState=va.CONNECTED,this.pingpongTimer&&window.clearInterval(this.pingpongTimer),this.pingpongTimer=window.setInterval(Da(a=this.handlePingPong).call(a,this),3E3),d.peers&&r(b=d.peers).call(b,a=>{this.emit(Y.ON_USER_ONLINE,{uid:a.uid});a.audio_mute?this.emit(Y.MUTE_AUDIO,{uid:a.uid}):this.emit(Y.UNMUTE_AUDIO,{uid:a.uid});a.video_mute?this.emit(Y.MUTE_VIDEO,{uid:a.uid}):this.emit(Y.UNMUTE_VIDEO,{uid:a.uid});a.audio_enable_local?this.emit(Y.ENABLE_LOCAL_AUDIO,
{uid:a.uid}):this.emit(Y.DISABLE_LOCAL_AUDIO,{uid:a.uid});a.video_enable_local?this.emit(Y.ENABLE_LOCAL_VIDEO,{uid:a.uid}):this.emit(Y.DISABLE_LOCAL_VIDEO,{uid:a.uid});a.audio||a.video||this.emit(Y.ON_REMOVE_STREAM,{uid:a.uid,uint_id:a.uint_id});a.audio&&this.emit(Y.ON_ADD_AUDIO_STREAM,{uid:a.uid,uint_id:a.uint_id,audio:!0});a.video&&this.emit(Y.ON_ADD_VIDEO_STREAM,{uid:a.uid,uint_id:a.uint_id,video:!0})}),!0)}reconnect(a,b){this.pingpongTimer&&(this.pingpongTimeoutCount=0,window.clearInterval(this.pingpongTimer),
this.pingpongTimer=void 0);this.websocket.reconnect(a,b)}handleNotification(a){h.debug("[".concat(this.clientId,"] receive notification: "),a);a=Zh(a.code);if("success"!==a.action){if("failed"!==a.action)return"quit"===a.action?("ERR_REPEAT_JOIN_CHANNEL"===a.desc&&this.close("UID_BANNED"),void this.close()):void this.reconnect(a.action,$a.SERVER_ERROR);h.error("[".concat(this.clientId,"] ignore error: "),a.desc)}}handlePingPong(){if(this.websocket&&"connected"===this.websocket.state){0<this.pingpongTimeoutCount&&
this.rttRolling.add(3E3);this.pingpongTimeoutCount+=1;var a=u.PING_PONG_TIME_OUT,b=v();this.pingpongTimeoutCount>=a&&(h.warning("PINGPONG Timeout. Last Socket Message: ".concat(b-this.lastMsgTime,"ms")),b-this.lastMsgTime>u.WEBSOCKET_TIMEOUT_MIN)?this.reconnect("retry",$a.TIMEOUT):this.request(ea.PING,void 0,!0).then(()=>{this.pingpongTimeoutCount=0;let a=v()-b;this.rttRolling.add(a);u.REPORT_STATS&&this.send(ea.PING_BACK,{pingpongElapse:a})}).catch(a=>{})}}handleWebsocketEvents(){this.websocket.on(T.ON_MESSAGE,
this.onWebsocketMessage);this.websocket.on(T.CLOSED,()=>{this.connectionState=va.CLOSED});this.websocket.on(T.FAILED,()=>{this._disconnectedReason="NETWORK_ERROR";this.connectionState=va.CLOSED});this.websocket.on(T.RECONNECTING,a=>{this._websocketReconnectReason=a;this.joinResponse=void 0;this.connectionState===va.CONNECTED?this.connectionState=va.RECONNECTING:this.connectionState=va.CONNECTING});this.websocket.on(T.WILL_RECONNECT,(a,b)=>{if(dd(this,O.IS_P2P_DISCONNECTED)&&"retry"===a)return this.reconnectToken=
void 0,this.emit(O.NEED_RENEW_SESSION),this.emit(O.DISCONNECT_P2P),b("tryNext");"retry"!==a&&(this.reconnectToken=void 0,this.emit(O.NEED_RENEW_SESSION),this.emit(O.DISCONNECT_P2P));b(a)});this.websocket.on(T.CONNECTED,()=>{this.openConnectionTime=v();this.reconnectToken?this.rejoin().catch(a=>{var b;h.warning(p(b="[".concat(this.clientId,"] rejoin failed ")).call(b,a));this.reconnect("tryNext",$a.SERVER_ERROR)}):this.join().catch(a=>{if(this.emit(O.REPORT_JOIN_GATEWAY,a.code,this.url||""),a instanceof
n&&a.code===m.UNEXPECTED_RESPONSE&&a.data.code===B.ERR_NO_AUTHORIZED)return h.warning("[".concat(this.clientId,"] reconnect no authorized, recover")),void this.reconnect("recover",$a.SERVER_ERROR);h.error("[".concat(this.clientId,"] join gateway request failed"),a.toString());this.spec.forceWaitGatewayResponse?this.reconnect("tryNext",$a.SERVER_ERROR):(this.initError=a,this.close())})});this.websocket.on(T.REQUEST_NEW_URLS,(a,b)=>{Na(this,O.REQUEST_RECOVER,this.multiIpOption).then(a).catch(b)})}}
class Yk extends cb{constructor(a,b){super();this._hints=[];this._ID=b||sa(8,"track-");this._mediaStreamTrack=this._originMediaStreamTrack=a}toString(){return this._ID}getTrackId(){return this._ID}getMediaStreamTrack(){return this._mediaStreamTrack}}class Ae extends Yk{constructor(a,b){super(a,b);this._enabled=!0;this._isClosed=!1;this._trackProcessors=[];this._handleTrackEnded=()=>{this.emit(xd.TRACK_ENDED)};this._enabledMutex=new fc("".concat(b));a.addEventListener("ended",this._handleTrackEnded)}getTrackLabel(){return this._originMediaStreamTrack.label}close(){var a;
this._isClosed||(this.stop(),r(a=this._trackProcessors).call(a,a=>a.destroy()),this._trackProcessors=[],this._originMediaStreamTrack.stop(),this._mediaStreamTrack!==this._originMediaStreamTrack&&(this._mediaStreamTrack.stop(),this._mediaStreamTrack=null),this._originMediaStreamTrack=null,this._enabledMutex=null,h.debug("[".concat(this.getTrackId(),"] close")),this.emit(L.NEED_CLOSE),this._isClosed=!0)}async _registerTrackProcessor(a){var b;if(-1===D(b=this._trackProcessors).call(b,a)){var d=this._trackProcessors[this._trackProcessors.length-
1];this._trackProcessors.push(a);a.onOutputChange=async()=>{this._mediaStreamTrack=a.output||this._originMediaStreamTrack;this._updatePlayerSource();await Xa(this,L.NEED_REPLACE_TRACK,this._mediaStreamTrack)};d?(d.onOutputChange=async()=>{d.output&&await a.setInput(d.output)},await a.setInput(d.output||d.input||this._originMediaStreamTrack)):await a.setInput(this._originMediaStreamTrack)}}_getOutputFromProcessors(){if(0===this._trackProcessors.length)return this._originMediaStreamTrack;let a=this._trackProcessors[this._trackProcessors.length-
1];return a.output||a.input||this._originMediaStreamTrack}async _updateOriginMediaStreamTrack(a,b){a!==this._originMediaStreamTrack&&((this._originMediaStreamTrack.removeEventListener("ended",this._handleTrackEnded),b&&this._originMediaStreamTrack.stop(),a.addEventListener("ended",this._handleTrackEnded),this._originMediaStreamTrack=a,0<this._trackProcessors.length)?(await this._trackProcessors[0].setInput(a),this._mediaStreamTrack=this._getOutputFromProcessors()):this._mediaStreamTrack=this._originMediaStreamTrack,
this._updatePlayerSource(),await Xa(this,L.NEED_REPLACE_TRACK,this._mediaStreamTrack))}_getDefaultPlayerConfig(){return{}}}let $h=window.AudioContext||window.webkitAudioContext,Dc=null,hd=new cb,bf=null;class Zk extends cb{constructor(){super();this.isPlayed=!1;this.audioOutputLevel=this.audioLevelBase=0;this.audioOutputLevelCache=null;this.audioOutputLevelCacheMaxLength=u.AUDIO_SOURCE_AVG_VOLUME_DURATION/u.AUDIO_SOURCE_VOLUME_UPDATE_INTERVAL||15;this.isDestroyed=!1;this._noAudioInputCount=0;this.context=
id();this.playNode=this.context.destination;this.outputNode=this.context.createGain();jd(this.outputNode);this.analyserNode=this.context.createAnalyser()}get isNoAudioInput(){return 3<=this.noAudioInputCount}get noAudioInputCount(){return this._noAudioInputCount}set noAudioInputCount(a){3>this._noAudioInputCount&&3<=a?this.onNoAudioInput&&this.onNoAudioInput():3<=this._noAudioInputCount&&0==this._noAudioInputCount%10&&this.onNoAudioInput&&this.onNoAudioInput();this._noAudioInputCount=a}startGetAudioBuffer(a){this.audioBufferNode||
(this.audioBufferNode=this.context.createScriptProcessor(a),this.outputNode.connect(this.audioBufferNode),this.audioBufferNode.connect(this.context.destination),this.audioBufferNode.onaudioprocess=a=>{this.emit(ob.ON_AUDIO_BUFFER,jm(a))})}stopGetAudioBuffer(){this.audioBufferNode&&(this.audioBufferNode.onaudioprocess=null,this.outputNode.disconnect(this.audioBufferNode),this.audioBufferNode=void 0)}createOutputTrack(){if(!ca.webAudioMediaStreamDest)throw new n(m.NOT_SUPPORTED,"your browser is not support audio processor");
return this.destNode&&this.outputTrack||(this.destNode=this.context.createMediaStreamDestination(),this.outputNode.connect(this.destNode),this.outputTrack=this.destNode.stream.getAudioTracks()[0]),this.outputTrack}play(a){"running"!==this.context.state&&eb(()=>{hd.emit("autoplay-failed")});this.isPlayed=!0;this.playNode=a||this.context.destination;this.outputNode.connect(this.playNode)}stop(){if(this.isPlayed)try{this.outputNode.disconnect(this.playNode)}catch(a){}this.isPlayed=!1}getAudioLevel(){return this.audioOutputLevel}getAccurateVolumeLevel(){let a=
new Uint8Array(this.analyserNode.frequencyBinCount);this.analyserNode.getByteFrequencyData(a);let b=0;for(let d=0;d<a.length;d++)b+=a[d];return b/a.length}getAudioAvgLevel(){var a;null===this.audioOutputLevelCache&&(this.audioOutputLevelCache=[this.audioOutputLevel]);return Ed(a=this.audioOutputLevelCache).call(a,(a,d)=>a+d)/this.audioOutputLevelCache.length}getAudioVolume(){return this.outputNode.gain.value}setVolume(a){this.outputNode.gain.setValueAtTime(a,this.context.currentTime)}setMute(a){a?
(this.disconnect(),this.audioLevelBase=0,this.audioOutputLevel=0):this.connect()}destroy(){this.disconnect();this.stop();this.isDestroyed=!0;this.onNoAudioInput=void 0}disconnect(){this.sourceNode&&this.sourceNode.disconnect();this.outputNode&&this.outputNode.disconnect();window.clearInterval(this.updateAudioOutputLevelInterval)}connect(){var a;this.sourceNode&&this.sourceNode.connect(this.outputNode);this.outputNode.connect(this.analyserNode);this.updateAudioOutputLevelInterval=window.setInterval(Da(a=
this.updateAudioOutputLevel).call(a,this),u.AUDIO_SOURCE_VOLUME_UPDATE_INTERVAL||400)}updateAudioOutputLevel(){if(this.context&&"running"!==this.context.state&&this.context.resume(),this.analyserNode){if(this.analyserNode.getFloatTimeDomainData){var a=new Float32Array(this.analyserNode.frequencyBinCount);this.analyserNode.getFloatTimeDomainData(a)}else{var b;a=new Uint8Array(this.analyserNode.frequencyBinCount);this.analyserNode.getByteTimeDomainData(a);let d=!0;a=new Float32Array(y(b=Qb(a)).call(b,
a=>(128!==a&&(d=!1),.0078125*(a-128))));d?this.noAudioInputCount+=1:this.noAudioInputCount=0}for(b=0;b<a.length;b+=1)Math.abs(a[b])>this.audioLevelBase&&(this.audioLevelBase=Math.abs(a[b]),1<this.audioLevelBase&&(this.audioLevelBase=1));this.audioOutputLevel=this.audioLevelBase;this.audioLevelBase/=4;null!==this.audioOutputLevelCache&&(this.audioOutputLevelCache.push(this.audioOutputLevel),this.audioOutputLevelCache.length>this.audioOutputLevelCacheMaxLength&&this.audioOutputLevelCache.shift())}}}
class $k extends Zk{constructor(a,b){if(super(),this.isCurrentTrackCloned=!1,this.isRemoteTrack=!1,this.rebuildWebAudio=()=>{if(!this.isNoAudioInput||this.isDestroyed)return document.body.removeEventListener("click",this.rebuildWebAudio,!0),void h.debug("rebuild web audio success, current volume",this.getAudioLevel());this.context.resume().then(()=>h.info("resume success"));h.debug("rebuild web audio because of ios 12 bugs");this.disconnect();var a=this.track;this.track=this.track.clone();this.isCurrentTrackCloned?
a.stop():this.isCurrentTrackCloned=!0;a=new MediaStream([this.track]);this.sourceNode=this.context.createMediaStreamSource(a);jd(this.sourceNode);this.analyserNode=this.context.createAnalyser();let b=this.outputNode.gain.value;this.outputNode=this.context.createGain();this.outputNode.gain.setValueAtTime(b,this.context.currentTime);jd(this.outputNode);this.connect();this.audioElement.srcObject=a;this.isPlayed&&this.play(this.playNode)},"audio"!==a.kind)throw new n(m.UNEXPECTED_ERROR);this.track=a;
a=new MediaStream([this.track]);this.isRemoteTrack=!!b;this.sourceNode=this.context.createMediaStreamSource(a);jd(this.sourceNode);this.connect();this.audioElement=document.createElement("audio");this.audioElement.srcObject=a;a=qa();b&&a.os===X.IOS&&(hd.on("state-change",this.rebuildWebAudio),this.onNoAudioInput=()=>{document.body.addEventListener("click",this.rebuildWebAudio,!0);this.rebuildWebAudio();document.body.click()})}get isFreeze(){return!1}updateTrack(a){this.sourceNode.disconnect();this.track=
a;this.isCurrentTrackCloned=!1;a=new MediaStream([a]);this.sourceNode=this.context.createMediaStreamSource(a);jd(this.sourceNode);this.sourceNode.connect(this.outputNode);this.audioElement.srcObject=a}destroy(){this.audioElement.remove();hd.off("state-change",this.rebuildWebAudio);super.destroy()}}class Kp{constructor(){this.elementMap=new Z;this.elementsNeedToResume=[];this.sinkIdMap=new Z;this.autoResumeAudioElement()}async setSinkID(a,b){let d=this.elementMap.get(a);if(this.sinkIdMap.set(a,b),
d)try{await d.setSinkId(b)}catch(e){throw new n(m.PERMISSION_DENIED,"can not set sink id: "+e.toString());}}play(a,b){if(!this.elementMap.has(b)){var d=document.createElement("audio");d.autoplay=!0;d.srcObject=new MediaStream([a]);this.elementMap.set(b,d);(a=this.sinkIdMap.get(b))&&d.setSinkId(a).catch(a=>{h.warning("[".concat(b,"] set sink id failed"),a.toString())});(a=d.play())&&a.then&&a.catch(a=>{h.warning("audio element play warning",a.toString());this.elementMap.has(b)&&"NotAllowedError"===
a.name&&(h.warning("detected audio element autoplay failed"),this.elementsNeedToResume.push(d),eb(()=>{this.onAutoplayFailed&&this.onAutoplayFailed()}))})}}updateTrack(a,b){(a=this.elementMap.get(a))&&(a.srcObject=new MediaStream([b]))}isPlaying(a){return this.elementMap.has(a)}setVolume(a,b){(a=this.elementMap.get(a))&&(b=Math.max(0,Math.min(100,b)),a.volume=b/100)}stop(a){var b,d;let e=this.elementMap.get(a);if(this.sinkIdMap.delete(a),e){var f=D(b=this.elementsNeedToResume).call(b,e);Ka(d=this.elementsNeedToResume).call(d,
f,1);e.srcObject=null;e.remove();this.elementMap.delete(a)}}autoResumeAudioElement(){let a=()=>{var a;r(a=this.elementsNeedToResume).call(a,a=>{a.play().then(a=>{h.debug("Auto resume audio element success")}).catch(a=>{h.warning("Auto resume audio element failed!",a)})});this.elementsNeedToResume=[]};Tl().then(()=>{document.body.addEventListener("touchstart",a,!0);document.body.addEventListener("mousedown",a,!0)})}}let rb=new Kp;class db extends Ae{constructor(a,b,d){super(a,d);this.trackMediaType=
"audio";this._enabled=!0;this._useAudioElement=!1;this._encoderConfig=b;this._source=new $k(a);ca.webAudioWithAEC||(this._useAudioElement=!0)}get isPlaying(){return this._useAudioElement?rb.isPlaying(this.getTrackId()):this._source.isPlayed}setVolume(a){W(a,"volume",0,1E3);let b=t.reportApiInvoke(null,{tag:C.TRACER,name:A.LOCAL_AUDIO_TRACK_SET_VOLUME,options:[this.getTrackId(),a]},300);this._source.setVolume(a/100);try{let a=this._source.createOutputTrack();this._mediaStreamTrack!==a&&(this._mediaStreamTrack=
a,Xa(this,L.NEED_REPLACE_TRACK,this._mediaStreamTrack).then(()=>{h.debug("[".concat(this.getTrackId(),"] replace web audio track success"))}).catch(a=>{h.warning("[".concat(this.getTrackId(),"] replace web audio track failed"),a)}))}catch(d){}b.onSuccess()}getVolumeLevel(){return this._source.getAudioLevel()}async setPlaybackDevice(a){let b=t.reportApiInvoke(null,{tag:C.TRACER,name:A.REMOTE_AUDIO_SET_OUTPUT_DEVICE,options:[this.getTrackId(),a]});if(!this._useAudioElement)throw new n(m.NOT_SUPPORTED,
"your browser does not support setting the audio output device");try{await rb.setSinkID(this.getTrackId(),a)}catch(d){throw b.onError(d),d;}b.onSuccess()}async setEnabled(a){var b;if(a!==this._enabled){h.info("[".concat(this.getTrackId(),"] start setEnabled"),a);var d=await this._enabledMutex.lock();if(!a){this._originMediaStreamTrack.enabled=!1;try{await Xa(this,L.NEED_REMOVE_TRACK,this)}catch(e){throw h.error("[".concat(this.getTrackId(),"] setEnabled to false error"),e.toString()),d(),e;}return this._enabled=
!1,d()}this._originMediaStreamTrack.enabled=!0;try{await Xa(this,L.NEED_ADD_TRACK,this)}catch(e){throw h.error("[".concat(this.getTrackId(),"] setEnabled to true error"),e.toString()),d(),e;}h.info(p(b="[".concat(this.getTrackId(),"] setEnabled to ")).call(b,a," success"));this._enabled=!0;d()}}getStats(){fd(()=>{h.warning("[deprecated] LocalAudioTrack.getStats will be removed in the future, use AgoraRTCClient.getLocalAudioStats instead")},"localAudioTrackGetStatsWarning");return jc(this,L.GET_STATS)||
df({},we)}setAudioFrameCallback(a,b=4096){if(!a)return this._source.removeAllListeners(ob.ON_AUDIO_BUFFER),void this._source.stopGetAudioBuffer();this._source.startGetAudioBuffer(b);this._source.removeAllListeners(ob.ON_AUDIO_BUFFER);this._source.on(ob.ON_AUDIO_BUFFER,b=>a(b))}play(){let a=t.reportApiInvoke(null,{tag:C.TRACER,name:A.LOCAL_AUDIO_TRACK_PLAY,options:[this.getTrackId()]});h.debug("[".concat(this.getTrackId(),"] start audio playback"));this._useAudioElement?(h.debug("[".concat(this.getTrackId(),
"] start audio playback in element")),rb.play(this._mediaStreamTrack,this.getTrackId())):this._source.play();a.onSuccess()}stop(){let a=t.reportApiInvoke(null,{tag:C.TRACER,name:A.LOCAL_AUDIO_TRACK_STOP,options:[this.getTrackId()]});h.debug("[".concat(this.getTrackId(),"] stop audio playback"));this._useAudioElement?rb.stop(this.getTrackId()):this._source.stop();a.onSuccess()}close(){super.close();this._source.destroy()}_updatePlayerSource(){h.debug("[track-".concat(this.getTrackId(),"] update player source track"));
this._source.updateTrack(this._mediaStreamTrack);this._useAudioElement&&rb.updateTrack(this.getTrackId(),this._mediaStreamTrack)}async _updateOriginMediaStreamTrack(a,b){this._originMediaStreamTrack!==a&&(this._originMediaStreamTrack.removeEventListener("ended",this._handleTrackEnded),a.addEventListener("ended",this._handleTrackEnded),b&&this._originMediaStreamTrack.stop(),this._originMediaStreamTrack=a,this._source.updateTrack(this._originMediaStreamTrack),this._mediaStreamTrack!==this._source.outputTrack&&
(this._mediaStreamTrack=this._originMediaStreamTrack,this._updatePlayerSource(),await Xa(this,L.NEED_REPLACE_TRACK,this._mediaStreamTrack)))}}class vg extends db{constructor(a,b,d,e){super(a,b.encoderConfig?Id(b.encoderConfig):{},e);this._deviceName="default";this._enabled=!0;this._config=b;this._constraints=d;this._deviceName=a.label}async setDevice(a){var b,d;let e=t.reportApiInvoke(null,{tag:C.TRACER,name:A.MIC_AUDIO_TRACK_SET_DEVICE,options:[this.getTrackId(),a]});if(h.info(p(b="[".concat(this.getTrackId,
"] start set device to ")).call(b,a)),this._enabled)try{let d=await ib.getDeviceById(a);b={};b.audio=df({},this._constraints);b.audio.deviceId={exact:a};this._originMediaStreamTrack.stop();let e=null;try{e=await Hb(b,this.getTrackId())}catch(k){throw h.error("[track-".concat(this.getTrackId(),"] setDevice failed"),k.toString()),e=await Hb({video:this._constraints},this.getTrackId()),await this._updateOriginMediaStreamTrack(e.getAudioTracks()[0],!1),k;}await this._updateOriginMediaStreamTrack(e.getAudioTracks()[0],
!1);this._deviceName=d.label;this._config.microphoneId=a;this._constraints.deviceId={exact:a}}catch(f){throw e.onError(f),h.error("[track-".concat(this.getTrackId(),"] setDevice error"),f.toString()),f;}else try{this._deviceName=(await ib.getDeviceById(a)).label,this._config.microphoneId=a,this._constraints.deviceId={exact:a}}catch(f){throw e.onError(f),h.error("[track-".concat(this.getTrackId(),"] setDevice error"),f.toString()),f;}e.onSuccess();h.info(p(d="[".concat(this.getTrackId,"] set device to ")).call(d,
a," success"))}async setEnabled(a,b){if(b)return h.debug("[".concat(this.getTrackId,"] setEnabled false (do not close microphone)")),await super.setEnabled(a);if(a!==this._enabled){h.info("[".concat(this.getTrackId(),"] start setEnabled"),a);b=await this._enabledMutex.lock();if(!a){this._originMediaStreamTrack.onended=null;this._originMediaStreamTrack.stop();this._enabled=!1;try{await Xa(this,L.NEED_REMOVE_TRACK,this)}catch(e){throw h.error("[".concat(this.getTrackId(),"] setEnabled false failed"),
e.toString()),b(),e;}return void b()}a=df({},this._constraints);var d=ib.searchDeviceIdByName(this._deviceName);d&&!a.deviceId&&(a.deviceId=d);try{let a=await Hb({audio:this._constraints},this.getTrackId());await this._updateOriginMediaStreamTrack(a.getAudioTracks()[0],!1);await Xa(this,L.NEED_ADD_TRACK,this)}catch(e){throw b(),h.error("[".concat(this.getTrackId(),"] setEnabled true failed"),e.toString()),e;}this._enabled=!0;h.info("[".concat(this.getTrackId(),"] setEnabled success"));b()}}}class Lp extends db{constructor(a,
b,d,e){super(b.createOutputTrack(),d,e);this.source=a;this._bufferSource=b;this._bufferSource.on(ob.AUDIO_SOURCE_STATE_CHANGE,a=>{this.emit(xd.SOURCE_STATE_CHANGE,a)});try{this._mediaStreamTrack=this._source.createOutputTrack()}catch(f){}}get currentState(){return this._bufferSource.currentState}get duration(){return this._bufferSource.duration}getCurrentTime(){return this._bufferSource.currentTime}startProcessAudioBuffer(a){let b=t.reportApiInvoke(null,{tag:C.TRACER,name:A.BUFFER_AUDIO_TRACK_START,
options:[this.getTrackId(),a,this.duration]});a&&this._bufferSource.updateOptions(a);this._bufferSource.startProcessAudioBuffer();b.onSuccess()}pauseProcessAudioBuffer(){let a=t.reportApiInvoke(null,{tag:C.TRACER,name:A.BUFFER_AUDIO_TRACK_PAUSE,options:[this.getTrackId()]});this._bufferSource.pauseProcessAudioBuffer();a.onSuccess()}seekAudioBuffer(a){let b=t.reportApiInvoke(null,{tag:C.TRACER,name:A.BUFFER_AUDIO_TRACK_SEEK,options:[this.getTrackId()]});this._bufferSource.seekAudioBuffer(a);b.onSuccess()}resumeProcessAudioBuffer(){let a=
t.reportApiInvoke(null,{tag:C.TRACER,name:A.BUFFER_AUDIO_TRACK_RESUME,options:[this.getTrackId()]});this._bufferSource.resumeProcessAudioBuffer();a.onSuccess()}stopProcessAudioBuffer(){let a=t.reportApiInvoke(null,{tag:C.TRACER,name:A.BUFFER_AUDIO_TRACK_STOP,options:[this.getTrackId()]});this._bufferSource.stopProcessAudioBuffer();a.onSuccess()}}class Uc extends db{constructor(){let a=id().createMediaStreamDestination();super(a.stream.getAudioTracks()[0]);try{this._mediaStreamTrack=this._source.createOutputTrack()}catch(b){}this.destNode=
a;this.trackList=[]}hasAudioTrack(a){var b;return-1!==D(b=this.trackList).call(b,a)}addAudioTrack(a){var b;-1===D(b=this.trackList).call(b,a)?(h.debug("add ".concat(a.getTrackId()," to mixing track")),a._source.outputNode.connect(this.destNode),this.trackList.push(a),this.updateEncoderConfig()):h.warning("track is already added")}removeAudioTrack(a){var b;if(-1!==D(b=this.trackList).call(b,a)){h.debug("remove ".concat(a.getTrackId()," from mixing track"));try{a._source.outputNode.disconnect(this.destNode)}catch(d){}ed(this.trackList,
a);this.updateEncoderConfig()}}updateEncoderConfig(){var a;let b={};r(a=this.trackList).call(a,a=>{a._encoderConfig&&((a._encoderConfig.bitrate||0)>(b.bitrate||0)&&(b.bitrate=a._encoderConfig.bitrate),(a._encoderConfig.sampleRate||0)>(b.sampleRate||0)&&(b.sampleRate=a._encoderConfig.sampleRate),(a._encoderConfig.sampleSize||0)>(b.sampleSize||0)&&(b.sampleSize=a._encoderConfig.sampleSize),a._encoderConfig.stereo&&(b.stereo=!0))});this._encoderConfig=b}}let wg=new Z;class Mp extends cb{constructor(a){super();
this.inChannelInfo={joinAt:null,duration:0};this._state="DISCONNECTED";this.needToSendUnpubUnsub=new Z;this.hasChangeBGPAddress=this.isSignalRecover=!1;this.joinGatewayStartTime=0;this._signalTimeout=!1;this.clientId=a.clientId;this.spec=a;this.signal=new Jp(ef({},a,{retryConfig:a.websocketRetryConfig}));this._statsCollector=a.statsCollector;this.role=a.role||"audience";this._clientRoleOptions=a.clientRoleOptions;this.handleSignalEvents()}get state(){return this._state}set state(a){if(a!==this._state){var b=
this._state;this._state=a;"DISCONNECTED"===a&&this._disconnectedReason?this.emit(Aa.CONNECTION_STATE_CHANGE,a,b,this._disconnectedReason):this.emit(Aa.CONNECTION_STATE_CHANGE,a,b)}}async join(a,b){var d;"disabled"!==a.cloudProxyServer&&(this.hasChangeBGPAddress=!0);let e=v();var f=wg.get(a.cname);if(f||(f=new Z,wg.set(a.cname,f)),f.has(a.uid))throw f=new n(m.UID_CONFLICT),t.joinGateway(a.sid,{lts:e,succ:!1,ec:f.code,addr:null,uid:a.uid,cid:a.cid}),f;f.set(a.uid,!0);this.joinInfo=a;this.key=b;b=y(d=
a.gatewayAddrs).call(d,a=>"wss://".concat(a));d=0;this.joinGatewayStartTime=e;try{d=(await this.signal.init(b)).uid}catch(g){throw h.error("[".concat(this.clientId,"] User join failed"),g.toString()),t.joinGateway(a.sid,{lts:e,succ:!1,ec:g.code===m.UNEXPECTED_ERROR?g.message:g.code,addr:this.signal.url,uid:a.uid,cid:a.cid}),f.delete(a.uid),this.signal.close(),g;}return this.state="CONNECTED",this.inChannelInfo.joinAt=v(),h.debug("[".concat(this.clientId,"] Connected to gateway server")),this.trafficStatsInterval=
window.setInterval(()=>{this.updateTrafficStats().catch(a=>{h.warning("[".concat(this.clientId,"] get traffic stats error"),a.toString())})},3E3),this.networkQualityInterval=window.setInterval(()=>{navigator&&void 0!==navigator.onLine&&!navigator.onLine?this.emit(Aa.NETWORK_QUALITY,{downlinkNetworkQuality:6,uplinkNetworkQuality:6}):this._signalTimeout?this.emit(Aa.NETWORK_QUALITY,{downlinkNetworkQuality:5,uplinkNetworkQuality:5}):"CONNECTED"===this.state&&this._statsCollector.trafficStats?this.emit(Aa.NETWORK_QUALITY,
{uplinkNetworkQuality:Mh(this._statsCollector.trafficStats.B_unq),downlinkNetworkQuality:Mh(this._statsCollector.trafficStats.B_dnq)}):this.emit(Aa.NETWORK_QUALITY,{uplinkNetworkQuality:0,downlinkNetworkQuality:0})},2E3),d}async leave(a=!1){if("DISCONNECTED"!==this.state){this.state="DISCONNECTING";try{if(!a&&this.signal.connectionState===va.CONNECTED){var b=this.signal.request(ea.LEAVE,void 0,!0);await ( false?undefined:x.race([b,Ul(3E3)]))}}catch(d){h.warning("[".concat(this.clientId,"] leave request failed, ignore"),
d)}this.signal.close();this.reset();this.state="DISCONNECTED"}}async publish(a,b){if(!this.joinInfo)throw new n(m.UNEXPECTED_ERROR,"publish no joinInfo");let d=a.getUserId(),e=a.videoTrack?Il(a.videoTrack):{};if(a.on(H.NEED_ANSWER,(f,g,k)=>{var q;let l={state:"offer",stream_type:b,p2p_id:a.pc.ID,sdp:z(f),audio:!!a.audioTrack,video:!!a.videoTrack,screen:a.videoTrack&&-1!==D(q=a.videoTrack._hints).call(q,qb.SCREEN_TRACK),attributes:e,dtx:a.audioTrack instanceof vg&&a.audioTrack._config.DTX,hq:!1,lq:!1,
stereo:!1,speech:!1,mode:this.spec.mode,codec:this.spec.codec,extend:u.PUB_EXTEND};this.signal.request(ea.PUBLISH,l,!0).then(a=>{d&&this.needToSendUnpubUnsub.set(d,!0);g(JSON.parse(a.sdp))}).catch(b=>{if(f.retry&&b.data&&b.data.code===B.ERR_PUBLISH_REQUEST_INVALID)return h.warning("[".concat(this.clientId,"] receiver publish error code, retry"),b.toString()),Na(a,H.NEED_UNPUB).then(()=>{f.retry=!1;Na(a,H.NEED_ANSWER,f).then(g).catch(k)});b.code!==m.WS_ABORT&&k(b)})}),a.on(H.NEED_RENEGOTIATE,(d,e,
k)=>{this.signal.request(ea.PUBLISH,{state:"negotiation",stream_type:b,p2p_id:a.pc.ID,sdp:d},!0).then(a=>{e(JSON.parse(a.sdp))}).catch(a=>{a.code!==m.WS_ABORT&&k(a)})}),a.on(H.NEED_UNPUB,e=>d&&!this.needToSendUnpubUnsub.has(d)?e(!1):"RECONNECTING"===this.state?e(!0):void this.signal.request(ea.UNPUBLISH,{stream_id:a.getUserId(),stream_type:b},!0).then(()=>e(!1)).catch(a=>{h.warning("unpublish warning: ",a);e(!0)})),a.on(H.NEED_UPLOAD,(a,d)=>{this.signal.upload(a,{stream_type:b,stats:d})}),a.on(H.NEED_SIGNAL_RTT,
a=>{a(this.signal.rtt)}),"RECONNECTING"!==this.state){if("CONNECTED"!==this.state)return(new n(m.INVALID_OPERATION,"can not publish when connection state is ".concat(this.state))).throw();await a.startP2PConnection()}else a.readyToReconnectPC()}async subscribe(a){if(!this.joinInfo)throw new n(m.UNEXPECTED_ERROR,"subscribe no joinInfo");let b=a.getUserId();if(a.on(H.NEED_ANSWER,(d,e,f)=>{var g=a.subscribeOptions;g={stream_id:a.getUserId(),audio:!!g.audio,video:!!g.video,mode:this.spec.mode,codec:this.spec.codec,
p2p_id:a.pc.ID,sdp:z(d),tcc:!!u.SUBSCRIBE_TCC,extend:u.SUB_EXTEND};this.signal.request(ea.SUBSCRIBE,g,!0).then(a=>{this.needToSendUnpubUnsub.set(b,!0);e(JSON.parse(a.sdp))}).catch(b=>{if(d.retry&&b.data&&b.data.code===B.ERR_SUBSCRIBE_REQUEST_INVALID)return h.warning("[".concat(this.clientId,"] receiver subscribe error code, retry"),b.toString()),Na(a,H.NEED_UNSUB).then(()=>{d.retry=!1;Na(a,H.NEED_ANSWER,d).then(e).catch(f)});b.code!==m.WS_ABORT&&f(b)})}),a.on(H.NEED_UNSUB,d=>this.needToSendUnpubUnsub.has(b)?
"RECONNECTING"===this.state?d(!0):void this.signal.request(ea.UNSUBSCRIBE,{stream_id:a.getUserId()},!0).then(()=>d(!1)).catch(a=>{h.warning("unsubscribe warning",a);d(!0)}):d(!1)),a.on(H.NEED_UPLOAD,(b,e)=>{this.signal.upload(b,{stream_id:a.getUserId(),stats:e})}),a.on(H.NEED_SIGNAL_RTT,a=>{a(this.signal.rtt)}),"RECONNECTING"!==this.state){if("CONNECTED"!==this.state)return(new n(m.INVALID_OPERATION,"can not subscribe when connection state is ".concat(this.state))).throw();await a.startP2PConnection()}else a.readyToReconnectPC()}async subscribeChange(a,
b){var d,e;if(!this.joinInfo)throw new n(m.UNEXPECTED_ERROR,"subscribe no joinInfo");if(await a.setSubscribeOptions(b),"RECONNECTING"!==this.state){if("CONNECTED"!==this.state)return(new n(m.INVALID_OPERATION,"can not subscribe change when connection state is ".concat(this.state))).throw();h.debug(p(d=p(e="[".concat(this.clientId,"] send subscribe change, audio: ")).call(e,b.audio,", video: ")).call(d,b.video));await this.signal.request(ea.SUBSCRIBE_CHANGE,{stream_id:a.getUserId(),audio:!!b.audio,
video:!!b.video},!0)}}async unsubscribe(a){await a.closeP2PConnection()}getGatewayInfo(){return this.signal.request(ea.GATEWAY_INFO)}renewToken(a){return this.signal.request(ea.RENEW_TOKEN,{token:a})}async setClientRole(a,b){if(b&&(this._clientRoleOptions=Qa({},b)),"CONNECTED"!==this.state)return void(this.role=a);await this.signal.request(ea.SET_CLIENT_ROLE,{role:a,level:"audience"===a?this._clientRoleOptions&&this._clientRoleOptions.level?this._clientRoleOptions.level:2:0});this.role=a}async setRemoteVideoStreamType(a,
b){await this.signal.request(ea.SWITCH_VIDEO_STREAM,{stream_id:a,stream_type:b})}async setStreamFallbackOption(a,b){await this.signal.request(ea.SET_FALLBACK_OPTION,{stream_id:a,fallback_type:b})}getInChannelInfo(){return this.inChannelInfo.joinAt&&(this.inChannelInfo.duration=v()-this.inChannelInfo.joinAt),ef({},this.inChannelInfo)}async getGatewayVersion(){return(await this.signal.request(ea.GATEWAY_INFO)).version}reset(){if(this.inChannelInfo.joinAt&&(this.inChannelInfo.duration=v()-this.inChannelInfo.joinAt,
this.inChannelInfo.joinAt=null),this.trafficStatsInterval&&(window.clearInterval(this.trafficStatsInterval),this.trafficStatsInterval=void 0),this.joinInfo){let a=wg.get(this.joinInfo.cname);a&&a.delete(this.joinInfo.uid)}this.needToSendUnpubUnsub=new Z;this.key=this.joinInfo=void 0;this.networkQualityInterval&&(window.clearInterval(this.networkQualityInterval),this.networkQualityInterval=void 0)}updateTurnConfigFromSignal(){if(this.joinInfo){var a;(a=(a=(this.signal.url||"").match(/wss:\/\/([^:]+):(\d+)/))?
{username:gb.username,password:gb.password,turnServerURL:a[1],tcpport:N(a[2])+30,udpport:N(a[2])+30,forceturn:!1}:null)&&"off"!==this.joinInfo.turnServer.mode&&this.joinInfo.turnServer.servers.push(ef({},gb,{turnServerURL:a.turnServerURL,tcpport:a.tcpport,udpport:a.udpport}))}}async updateTrafficStats(){var a;if("CONNECTED"===this.state){var b=await this.signal.request(ea.TRAFFIC_STATS,void 0,!0);b.timestamp=v();r(a=b.peer_delay).call(a,a=>{var b;let d=this._statsCollector.trafficStats&&U(b=this._statsCollector.trafficStats.peer_delay).call(b,
b=>b.peer_uid===a.peer_uid);d&&d.B_st!==a.B_st&&eb(()=>{this.emit(Aa.STREAM_TYPE_CHANGE,a.peer_uid,a.B_st)})});this._statsCollector.updateTrafficStats(b)}}getJoinMessage(){if(!this.joinInfo||!this.key)throw new n(m.UNEXPECTED_ERROR,"can not generate join message, no join info");let a=Qa({},this.joinInfo.apResponse),b={session_id:this.joinInfo.sid,app_id:this.joinInfo.appId,channel_key:this.key,channel_name:this.joinInfo.cname,sdk_version:fb,browser:navigator.userAgent,process_id:u.PROCESS_ID,mode:this.spec.mode,
codec:this.spec.codec,role:this.role,has_changed_gateway:this.hasChangeBGPAddress,ap_response:a,extends:u.JOIN_EXTEND,details:{6:this.joinInfo.stringUid},features:{rejoin:!0},optionalInfo:this.joinInfo.optionalInfo};"proxy3"!==this.joinInfo.cloudProxyServer&&"proxy4"!==this.joinInfo.cloudProxyServer||(b.plugin="web_cloud_proxy");this.joinInfo.stringUid&&(b.string_uid=this.joinInfo.stringUid);if(this.joinInfo.aesmode&&this.joinInfo.aespassword)if(b.aes_mode=this.joinInfo.aesmode,u.ENCRYPT_AES){var d=
this.joinInfo.aespassword;var e=a.uid;var f=d.length;d=(new TextEncoder).encode(d);var g=(4-d.length%4)%4;if(0!==g){var k=new d.constructor(d.length+g);g=new d.constructor(g);d=(k.set(d,0),k.set(g,d.length),k)}f=[f];d=new Uint32Array(d.buffer);k=new Uint32Array(f.length+d.length);f=(k.set(f,0),k.set(d,f.length),k);for(d=0;d<f.length;d++)f[d]^=e,f[d]=~f[d];e=Ze(new Uint8Array(f.buffer));b.aes_secret=e;b.aes_encrypt=!0}else b.aes_secret=this.joinInfo.aespassword;return a.addresses[this.signal.websocket.currentURLIndex]&&
(b.ap_response.ticket=a.addresses[this.signal.websocket.currentURLIndex].ticket,delete a.addresses),b}getRejoinMessage(){if(!this.joinInfo)throw new n(m.UNEXPECTED_ERROR,"can not generate rejoin message, no join info");return{session_id:this.joinInfo.sid,channel_name:this.joinInfo.cname,cid:this.joinInfo.cid,uid:this.joinInfo.uid,vid:Number(this.joinInfo.vid)}}handleSignalEvents(){this.signal.on(O.WS_RECONNECTING,a=>{this.joinInfo&&t.WebSocketQuit(this.joinInfo.sid,{lts:v(),succ:-1,cname:this.joinInfo.cname,
uid:this.joinInfo.uid,cid:this.joinInfo.cid,errorCode:a||$a.NETWORK_ERROR});this.joinInfo&&(this.state="RECONNECTING",t.sessionInit(this.joinInfo.sid,{lts:(new Date).getTime(),extend:this.isSignalRecover?{recover:!0}:{rejoin:!0},cname:this.joinInfo.cname,appid:this.joinInfo.appId,mode:this.spec.mode}),this.isSignalRecover=!1,this.joinGatewayStartTime=v())});this.signal.on(O.WS_CLOSED,a=>{let b;switch(a){case "LEAVE":b=$a.LEAVE;break;case "UID_BANNED":case "IP_BANNED":case "CHANNEL_BANNED":case "SERVER_ERROR":b=
$a.SERVER_ERROR;break;default:b=$a.NETWORK_ERROR}this.joinInfo&&t.WebSocketQuit(this.joinInfo.sid,{lts:v(),succ:"LEAVE"===a?1:-1,cname:this.joinInfo.cname,uid:this.joinInfo.uid,cid:this.joinInfo.cid,errorCode:b});this.reset();this._disconnectedReason=a;this.state="DISCONNECTED"});this.signal.on(O.WS_CONNECTED,()=>{if(this.updateTurnConfigFromSignal(),this.state="CONNECTED",this.joinInfo){var a,b;"audience"===this.role&&this._clientRoleOptions&&this._clientRoleOptions.level&&(h.debug(p(a=p(b="[".concat(this.clientId,
"] patch to send set client role, role: ")).call(b,this.role,", type: ")).call(a,this._clientRoleOptions.level)),this.setClientRole(this.role,this._clientRoleOptions));t.joinGateway(this.joinInfo.sid,{lts:this.joinGatewayStartTime,succ:!0,ec:null,vid:this.joinInfo.vid,addr:this.signal.url,uid:this.joinInfo.uid,cid:this.joinInfo.cid})}});this.signal.on(Y.ON_UPLINK_STATS,a=>{this._statsCollector.updateUplinkStats(a)});this.signal.on(O.REQUEST_RECOVER,(a,b,d)=>{if(!this.joinInfo)return d(new n(m.UNEXPECTED_ERROR,
"gateway: can not recover, no join info"));a&&(this.joinInfo.multiIP=a,this.hasChangeBGPAddress=!0);this.isSignalRecover=!0;Na(this,Aa.REQUEST_NEW_GATEWAY_LIST).then(b).catch(d)});this.signal.on(O.REQUEST_JOIN_INFO,a=>{a(this.getJoinMessage())});this.signal.on(O.REQUEST_REJOIN_INFO,a=>{a(this.getRejoinMessage())});this.signal.on(O.REPORT_JOIN_GATEWAY,(a,b)=>{this.joinInfo&&t.joinGateway(this.joinInfo.sid,{lts:this.joinGatewayStartTime,succ:!1,ec:a,addr:b,uid:this.joinInfo.uid,cid:this.joinInfo.cid})});
this.signal.on(O.IS_P2P_DISCONNECTED,a=>{a(dd(this,Aa.IS_P2P_DISCONNECTED))});this.signal.on(O.DISCONNECT_P2P,()=>{this.needToSendUnpubUnsub=new Z;this.emit(Aa.DISCONNECT_P2P)});this.signal.on(O.NEED_RENEW_SESSION,()=>{this.emit(Aa.NEED_RENEW_SESSION)});this.signal.on(O.REQUEST_SUCCESS,()=>{this._signalTimeout=!1});this.signal.on(O.REQUEST_TIMEOUT,()=>{this._signalTimeout=!0})}}class Np{constructor(a){this.client=a}updateConfig(a,b){if(b){null!=b.uploadLog&&(Zb("UPLOAD_LOG",b.uploadLog),t.reportApiInvoke(this.client._sessionId||
null,{name:A.SET_CONFIG_DISTRIBUTE,options:{feature:"uploadLog",value:b.uploadLog}}).onSuccess());null!=b.dualStream&&(this.client._isDualStreamEnabled=b.dualStream,t.reportApiInvoke(this.client._sessionId||null,{name:A.SET_CONFIG_DISTRIBUTE,options:{feature:"dualStream",value:b.dualStream}}).onSuccess());null==b.streamFallbackOptions||(this.client._defaultStreamFallbackType=b.streamFallbackOptions);try{var d,e;h.debug(p(d="[".concat(a,"] setParameter in distribution: ")).call(d,z(b)));y(e=S(b)).call(e,
a=>Zb(a,b[a]))}catch(g){var f;h.debug(p(f="[".concat(a,"] setParameter in distribution failed: ")).call(f,z(b)))}}}}let ff=1,gf=1,hf=()=>{const a=u.AREAS;0===a.length&&a.push("GLOBAL");return Ed(a).call(a,(a,d,e)=>{var b,g,k,h,l;d="OVERSEA"===d?p(b=p(g=p(k=p(h=p(l="".concat(Ba.ASIA,",")).call(l,Ba.EUROPE,",")).call(h,Ba.AFRICA,",")).call(k,Ba.NORTH_AMERICA,",")).call(g,Ba.SOUTH_AMERICA,",")).call(b,Ba.OCEANIA):Ba[d];var m;return d?0===e?d:p(m="".concat(a,",")).call(m,d):a},"")},Op=a=>{const b={CODE:"",
WEBCS_DOMAIN:[],WEBCS_DOMAIN_BACKUP_LIST:[],PROXY_CS:[],CDS_AP:[],ACCOUNT_REGISTER:[],UAP_AP:[],EVENT_REPORT_DOMAIN:[],EVENT_REPORT_BACKUP_DOMAIN:[],LOG_UPLOAD_SERVER:[],PROXY_SERVER_TYPE3:[]};return y(a).call(a,a=>{const d=Dk[a];(a=S(d))&&y(a).call(a,a=>{var e;"CODE"!==a&&(b[a]=p(e=b[a]).call(e,d[a]))})}),b};var xg=function(){function a(a){this.input=[];this.size=a}return a.prototype.add=function(a){this.input.push(a);this.input.length>this.size&&this.input.splice(0,1)},a.prototype.diffMean=function(){return 0===
this.input.length?0:(this.input[this.input.length-1]-this.input[0])/this.input.length},a}(),ii=function(a,b){return(ii=Object.setPrototypeOf||{__proto__:[]}instanceof Array&&function(a,b){a.__proto__=b}||function(a,b){for(var d in b)b.hasOwnProperty(d)&&(a[d]=b[d])})(a,b)},yg=function(){return(yg=Object.assign||function(a){for(var b,d=1,e=arguments.length;d<e;d++)for(var f in b=arguments[d])Object.prototype.hasOwnProperty.call(b,f)&&(a[f]=b[f]);return a}).apply(this,arguments)},Ad={timestamp:0,bitrate:{actualEncoded:0,
transmit:0},sendPacketLossRate:0,recvPacketLossRate:0,videoRecv:[],videoSend:[],audioRecv:[],audioSend:[]},al={firsCount:0,nacksCount:0,plisCount:0,framesDecodeCount:0,framesDecodeInterval:0,framesDecodeFreezeTime:0,decodeFrameRate:0,bytes:0,packetsLost:0,packetLostRate:0,packets:0,ssrc:0},bl={firsCount:0,nacksCount:0,plisCount:0,frameCount:0,bytes:0,packets:0,packetsLost:0,packetLostRate:0,ssrc:0,rttMs:0},cl={bytes:0,packets:0,packetsLost:0,packetLostRate:0,ssrc:0,rttMs:0},dl={jitterBufferMs:0,jitterMs:0,
bytes:0,packetsLost:0,packetLostRate:0,packets:0,ssrc:0,receivedFrames:0,droppedFrames:0},zg=function(){function a(a,d){var b=this;this.videoIsReady=!1;this.stats=kb(Ad);this.isFirstAudioDecoded=this.isFirstAudioReceived=this.isFirstVideoDecoded=this.isFirstVideoReceived=!1;this.lossRateWindowStats=[];this.pc=a;this.options=d;this.intervalTimer=window.setInterval(function(){return kf(b,void 0,void 0,function(){return lf(this,function(a){return this.updateStats(),[2]})})},this.options.updateInterval)}
return a.prototype.getStats=function(){return this.stats},a.prototype.setVideoIsReady=function(a){this.videoIsReady=a},a.prototype.destroy=function(){window.clearInterval(this.intervalTimer)},a.prototype.calcLossRate=function(a){var b=this;this.lossRateWindowStats.push(a);this.lossRateWindowStats.length>this.options.lossRateInterval&&this.lossRateWindowStats.splice(0,1);for(var e=this.lossRateWindowStats.length,f=0,g=0,k=0,h=0,l=function(d){a[d].forEach(function(a,q){if(b.lossRateWindowStats[e-1][d][q]&&
b.lossRateWindowStats[0][d][q]){var l=b.lossRateWindowStats[e-1][d][q].packets-b.lossRateWindowStats[0][d][q].packets;q=b.lossRateWindowStats[e-1][d][q].packetsLost-b.lossRateWindowStats[0][d][q].packetsLost;"videoSend"===d||"audioSend"===d?(f+=l,k+=q):(g+=l,h+=q);Number.isNaN(l)||Number.isNaN(l)?a.packetLostRate=0:a.packetLostRate=0>=l||0>=q?0:q/l}})},m=0,p=["videoSend","audioSend","videoRecv","audioRecv"];m<p.length;m++)l(p[m]);a.sendPacketLossRate=0>=f||0>=k?0:k/f;a.recvPacketLossRate=0>=g||0>=
h?0:h/g},a}(),Pp=function(a){function b(){var b=null!==a&&a.apply(this,arguments)||this;return b._stats=Ad,b.lastDecodeVideoReceiverStats=new Map,b}return jf(b,a),b.prototype.updateStats=function(){return kf(this,void 0,void 0,function(){var a,b,f,g;return lf(this,function(d){switch(d.label){case 0:return[4,this._getStats()];case 1:return a=d.sent(),b=this.statsResponsesToObjects(a),this._stats=kb(Ad),f=b.filter(function(a){return"ssrc"===a.type}),this.processSSRCStats(f),(g=b.find(function(a){return"VideoBwe"===
a.type}))&&this.processBandwidthStats(g),this._stats.timestamp=Date.now(),this.calcLossRate(this._stats),this.stats=this._stats,[2]}})})},b.prototype.processBandwidthStats=function(a){this._stats.bitrate={actualEncoded:Number(a.googActualEncBitrate),targetEncoded:Number(a.googTargetEncBitrate),retransmit:Number(a.googRetransmitBitrate),transmit:Number(a.googTransmitBitrate)};this._stats.sendBandwidth=Number(a.googAvailableSendBandwidth)},b.prototype.processSSRCStats=function(a){var b=this;a.forEach(function(a){var d=
a.id.includes("send");switch(a.mediaType+"_"+(d?"send":"recv")){case "video_send":d=kb(bl);d.codec=a.googCodecName;d.adaptionChangeReason="none";a.googCpuLimitedResolution&&(d.adaptionChangeReason="cpu");a.googBandwidthLimitedResolution&&(d.adaptionChangeReason="bandwidth");d.avgEncodeMs=Number(a.googAvgEncodeMs);d.inputFrame={width:Number(a.googFrameWidthInput)||Number(a.googFrameWidthSent),height:Number(a.googFrameHeightInput)||Number(a.googFrameHeightSent),frameRate:Number(a.googFrameRateInput)};
d.sentFrame={width:Number(a.googFrameWidthSent),height:Number(a.googFrameHeightSent),frameRate:Number(a.googFrameRateInput)};d.firsCount=Number(a.googFirReceived);d.nacksCount=Number(a.googNacksReceived);d.plisCount=Number(a.googPlisReceived);d.frameCount=Number(a.framesEncoded);d.bytes=Number(a.bytesSent);d.packets=Number(a.packetsSent);d.packetsLost=Number(a.packetsLost);d.ssrc=Number(a.ssrc);d.rttMs=Number(a.googRtt||0);b._stats.videoSend.push(d);b._stats.rtt=d.rttMs;break;case "video_recv":d=
kb(al);var e=b.lastDecodeVideoReceiverStats.get(Number(a.ssrc));if(d.codec=a.googCodecName,d.targetDelayMs=Number(a.googTargetDelayMs),d.renderDelayMs=Number(a.googRenderDelayMs),d.currentDelayMs=Number(a.googCurrentDelayMs),d.minPlayoutDelayMs=Number(a.googMinPlayoutDelayMs),d.decodeMs=Number(a.googDecodeMs),d.maxDecodeMs=Number(a.googMaxDecodeMs),d.receivedFrame={width:Number(a.googFrameWidthReceived),height:Number(a.googFrameHeightReceived),frameRate:Number(a.googFrameRateReceived)},d.decodedFrame=
{width:Number(a.googFrameWidthReceived),height:Number(a.googFrameHeightReceived),frameRate:Number(a.googFrameRateDecoded)},d.outputFrame={width:Number(a.googFrameWidthReceived),height:Number(a.googFrameHeightReceived),frameRate:Number(a.googFrameRateOutput)},d.jitterBufferMs=Number(a.googJitterBufferMs),d.firsCount=Number(a.googFirsSent),d.nacksCount=Number(a.googNacksSent),d.plisCount=Number(a.googPlisSent),d.framesDecodeCount=Number(a.framesDecoded),d.bytes=Number(a.bytesReceived),d.packets=Number(a.packetsReceived),
d.packetsLost=Number(a.packetsLost),d.ssrc=Number(a.ssrc),0<d.packets&&!b.isFirstVideoReceived&&(b.onFirstVideoReceived&&b.onFirstVideoReceived(),b.isFirstVideoReceived=!0),0<d.framesDecodeCount&&!b.isFirstVideoDecoded&&(b.onFirstVideoDecoded&&b.onFirstVideoDecoded(d.decodedFrame.width,d.decodedFrame.height),b.isFirstVideoDecoded=!0),e){a=e.stats;var f=Date.now()-e.lts;d.framesDecodeFreezeTime=a.framesDecodeFreezeTime;d.framesDecodeInterval=a.framesDecodeInterval;d.framesDecodeCount>a.framesDecodeCount&&
b.isFirstVideoDecoded?(e.lts=Date.now(),d.framesDecodeInterval=f,500<=d.framesDecodeInterval&&(b.videoIsReady?d.framesDecodeFreezeTime+=d.framesDecodeInterval:b.setVideoIsReady(!0))):d.framesDecodeCount<e.stats.framesDecodeCount&&(d.framesDecodeInterval=0)}b.lastDecodeVideoReceiverStats.set(d.ssrc,{stats:yg({},d),lts:Date.now()});b._stats.videoRecv.push(d);break;case "audio_recv":d=kb(dl);d.codec=a.googCodecName;d.outputLevel=Math.abs(Number(a.audioOutputLevel))/32767;d.decodingCNG=Number(a.googDecodingCNG);
d.decodingCTN=Number(a.googDecodingCTN);d.decodingCTSG=Number(a.googDecodingCTSG);d.decodingNormal=Number(a.googDecodingNormal);d.decodingPLC=Number(a.googDecodingPLC);d.decodingPLCCNG=Number(a.googDecodingPLCCNG);d.expandRate=Number(a.googExpandRate);d.accelerateRate=Number(a.googAccelerateRate);d.preemptiveExpandRate=Number(a.googPreemptiveExpandRate);d.secondaryDecodedRate=Number(a.googSecondaryDecodedRate);d.speechExpandRate=Number(a.googSpeechExpandRate);d.preferredJitterBufferMs=Number(a.googPreferredJitterBufferMs);
d.jitterBufferMs=Number(a.googJitterBufferMs);d.jitterMs=Number(a.googJitterReceived);d.bytes=Number(a.bytesReceived);d.packets=Number(a.packetsReceived);d.packetsLost=Number(a.packetsLost);d.ssrc=Number(a.ssrc);d.receivedFrames=Number(a.googDecodingCTN)||Number(a.packetsReceived);d.droppedFrames=Number(a.googDecodingPLC)+Number(a.googDecodingPLCCNG)||Number(a.packetsLost);0<d.receivedFrames&&!b.isFirstAudioReceived&&(b.onFirstAudioReceived&&b.onFirstAudioReceived(),b.isFirstAudioReceived=!0);0<d.decodingNormal&&
!b.isFirstAudioDecoded&&(b.onFirstAudioDecoded&&b.onFirstAudioDecoded(),b.isFirstAudioDecoded=!0);b._stats.audioRecv.push(d);break;case "audio_send":d=kb(cl),d.codec=a.googCodecName,d.inputLevel=Math.abs(Number(a.audioInputLevel))/32767,d.aecReturnLoss=Number(a.googEchoCancellationReturnLoss||0),d.aecReturnLossEnhancement=Number(a.googEchoCancellationReturnLossEnhancement||0),d.residualEchoLikelihood=Number(a.googResidualEchoLikelihood||0),d.residualEchoLikelihoodRecentMax=Number(a.googResidualEchoLikelihoodRecentMax||
0),d.bytes=Number(a.bytesSent),d.packets=Number(a.packetsSent),d.packetsLost=Number(a.packetsLost),d.ssrc=Number(a.ssrc),d.rttMs=Number(a.googRtt||0),b._stats.rtt=d.rttMs,b._stats.audioSend.push(d)}})},b.prototype._getStats=function(){var a=this;return new Promise(function(b,d){a.pc.getStats(b,d)})},b.prototype.statsResponsesToObjects=function(a){var b=[];return a.result().forEach(function(a){var d={id:a.id,timestamp:a.timestamp.valueOf().toString(),type:a.type};a.names().forEach(function(b){d[b]=
a.stat(b)});b.push(d)}),b},b}(zg),gc;!function(a){a.CERTIFICATE="certificate";a.CODEC="codec";a.CANDIDATE_PAIR="candidate-pair";a.LOCAL_CANDIDATE="local-candidate";a.REMOTE_CANDIDATE="remote-candidate";a.INBOUND="inbound-rtp";a.TRACK="track";a.OUTBOUND="outbound-rtp";a.PC="peer-connection";a.REMOTE_INBOUND="remote-inbound-rtp";a.REMOTE_OUTBOUND="remote-outbound-rtp";a.TRANSPORT="transport";a.CSRC="csrc";a.DATA_CHANNEL="data-channel";a.STREAM="stream";a.SENDER="sender";a.RECEIVER="receiver"}(gc||(gc=
{}));var el=function(a){function b(){var b=null!==a&&a.apply(this,arguments)||this;return b._stats=Ad,b.lastDecodeVideoReceiverStats=new Map,b.lastVideoFramesRecv=new Map,b.lastVideoFramesSent=new Map,b.lastVideoFramesDecode=new Map,b.lastVideoJBDelay=new Map,b.lastAudioJBDelay=new Map,b.mediaBytesSent=new Map,b.mediaBytesRetransmit=new Map,b.mediaBytesTargetEncode=new Map,b.lastEncoderMs=new Map,b}return jf(b,a),b.prototype.updateStats=function(){return kf(this,void 0,void 0,function(){var a,b=this;
return lf(this,function(d){switch(d.label){case 0:return a=this,[4,this.pc.getStats()];case 1:return a.report=d.sent(),this._stats=kb(Ad),this.report.forEach(function(a){switch(a.type){case gc.OUTBOUND:"audio"===a.mediaType?b.processAudioOutboundStats(a):"video"===a.mediaType&&b.processVideoOutboundStats(a);break;case gc.INBOUND:"audio"===a.mediaType?b.processAudioInboundStats(a):"video"===a.mediaType&&b.processVideoInboundStats(a);break;case gc.TRANSPORT:(a=b.report.get(a.selectedCandidatePairId))&&
b.processCandidatePairStats(a);break;case gc.CANDIDATE_PAIR:a.selected&&b.processCandidatePairStats(a)}}),this.updateSendBitrate(),this._stats.timestamp=Date.now(),this.calcLossRate(this._stats),this.stats=this._stats,[2]}})})},b.prototype.processCandidatePairStats=function(a){this._stats.sendBandwidth=a.availableOutgoingBitrate||0;a.currentRoundTripTime&&(this._stats.rtt=1E3*a.currentRoundTripTime);this._stats.videoSend.forEach(function(b){!b.rttMs&&a.currentRoundTripTime&&(b.rttMs=1E3*a.currentRoundTripTime)});
this._stats.audioSend.forEach(function(b){!b.rttMs&&a.currentRoundTripTime&&(b.rttMs=1E3*a.currentRoundTripTime)})},b.prototype.processAudioInboundStats=function(a){var b=this._stats.audioRecv.find(function(b){return b.ssrc===a.ssrc});b||(b=kb(dl),this._stats.audioRecv.push(b));b.ssrc=a.ssrc;b.packets=a.packetsReceived;b.packetsLost=a.packetsLost;b.bytes=a.bytesReceived;b.jitterMs=1E3*a.jitter;a.trackId&&this.processAudioTrackReceiverStats(a.trackId,b);a.codecId&&(b.codec=this.getCodecFromCodecStats(a.codecId));
b.receivedFrames||(b.receivedFrames=a.packetsReceived);b.droppedFrames||(b.droppedFrames=a.packetsLost);0<b.receivedFrames&&!this.isFirstAudioReceived&&(this.onFirstAudioReceived&&this.onFirstAudioReceived(),this.isFirstAudioReceived=!0);b.outputLevel&&0<b.outputLevel&&!this.isFirstAudioDecoded&&(this.onFirstAudioDecoded&&this.onFirstAudioDecoded(),this.isFirstAudioDecoded=!0)},b.prototype.processVideoInboundStats=function(a){var b=this._stats.videoRecv.find(function(b){return b.ssrc===a.ssrc});b||
(b=kb(al),this._stats.videoRecv.push(b));b.ssrc=a.ssrc;b.packets=a.packetsReceived;b.packetsLost=a.packetsLost;b.bytes=a.bytesReceived;b.firsCount=a.firCount;b.nacksCount=a.nackCount;b.plisCount=a.pliCount;b.framesDecodeCount=a.framesDecoded;var d=this.lastDecodeVideoReceiverStats.get(b.ssrc),g=this.lastVideoFramesDecode.get(b.ssrc),k=Date.now();if(0<b.framesDecodeCount&&!this.isFirstVideoDecoded){var h=b.decodedFrame?b.decodedFrame.width:0,l=b.decodedFrame?b.decodedFrame.height:0;this.onFirstVideoDecoded&&
this.onFirstVideoDecoded(h,l);this.isFirstVideoDecoded=!0}d&&(h=d.stats,l=k-d.lts,b.framesDecodeFreezeTime=h.framesDecodeFreezeTime,b.framesDecodeInterval=h.framesDecodeInterval,b.framesDecodeCount>h.framesDecodeCount&&this.isFirstVideoDecoded?(d.lts=Date.now(),b.framesDecodeInterval=l,500<=b.framesDecodeInterval&&(this.videoIsReady?b.framesDecodeFreezeTime+=b.framesDecodeInterval:this.setVideoIsReady(!0))):b.framesDecodeCount<h.framesDecodeCount&&(b.framesDecodeInterval=0));g&&800<=k-g.lts?(b.decodeFrameRate=
Math.round((b.framesDecodeCount-g.count)/((k-g.lts)/1E3)),this.lastVideoFramesDecode.set(b.ssrc,{count:b.framesDecodeCount,lts:k,rate:b.decodeFrameRate})):g?b.decodeFrameRate=g.rate:this.lastVideoFramesDecode.set(b.ssrc,{count:b.framesDecodeCount,lts:k,rate:0});a.totalDecodeTime&&(b.decodeMs=1E3*a.totalDecodeTime);a.trackId&&this.processVideoTrackReceiverStats(a.trackId,b);a.codecId&&(b.codec=this.getCodecFromCodecStats(a.codecId));a.framerateMean&&(b.framesRateFirefox=a.framerateMean);0<b.packets&&
!this.isFirstVideoReceived&&(this.onFirstVideoReceived&&this.onFirstVideoReceived(),this.isFirstVideoReceived=!0);this.lastDecodeVideoReceiverStats.set(b.ssrc,{stats:yg({},b),lts:d?d.lts:Date.now()})},b.prototype.processVideoOutboundStats=function(a){var b=this._stats.videoSend.find(function(b){return b.ssrc===a.ssrc});b||(b=kb(bl),this._stats.videoSend.push(b));var d=this.mediaBytesSent.get(a.ssrc);d?d.add(a.bytesSent):((g=new xg(10)).add(a.bytesSent),this.mediaBytesSent.set(a.ssrc,g));void 0!==
a.retransmittedBytesSent&&((d=this.mediaBytesRetransmit.get(a.ssrc))?d.add(a.retransmittedBytesSent):((g=new xg(10)).add(a.retransmittedBytesSent),this.mediaBytesRetransmit.set(a.ssrc,g)));if(a.totalEncodedBytesTarget){var g;(d=this.mediaBytesTargetEncode.get(a.ssrc))?d.add(a.totalEncodedBytesTarget):((g=new xg(10)).add(a.totalEncodedBytesTarget),this.mediaBytesTargetEncode.set(a.ssrc,g))}if(b.ssrc=a.ssrc,b.bytes=a.bytesSent,b.packets=a.packetsSent,b.firsCount=a.firCount,b.nacksCount=a.nackCount,
b.plisCount=a.pliCount,b.frameCount=a.framesEncoded,b.adaptionChangeReason=a.qualityLimitationReason,a.totalEncodeTime&&a.framesEncoded)d=this.lastEncoderMs.get(a.ssrc),b.avgEncodeMs=!d||d.lastFrameCount>a.framesEncoded?1E3*a.totalEncodeTime/a.framesEncoded:1E3*(a.totalEncodeTime-d.lastEncoderTime)/(a.framesEncoded-d.lastFrameCount),this.lastEncoderMs.set(a.ssrc,{lastFrameCount:a.framesEncoded,lastEncoderTime:a.totalEncodeTime,lts:Date.now()});(a.codecId&&(b.codec=this.getCodecFromCodecStats(a.codecId)),
a.mediaSourceId&&this.processVideoMediaSource(a.mediaSourceId,b),a.trackId&&this.processVideoTrackSenderStats(a.trackId,b),a.remoteId)?this.processRemoteInboundStats(a.remoteId,b):(d=this.findRemoteStatsId(a.ssrc,gc.REMOTE_INBOUND))&&this.processRemoteInboundStats(d,b)},b.prototype.processAudioOutboundStats=function(a){var b=this._stats.audioSend.find(function(b){return b.ssrc===a.ssrc});if(b||(b=kb(cl),this._stats.audioSend.push(b)),b.ssrc=a.ssrc,b.packets=a.packetsSent,b.bytes=a.bytesSent,a.mediaSourceId&&
this.processAudioMediaSource(a.mediaSourceId,b),a.codecId&&(b.codec=this.getCodecFromCodecStats(a.codecId)),a.trackId&&this.processAudioTrackSenderStats(a.trackId,b),a.remoteId)this.processRemoteInboundStats(a.remoteId,b);else{var d=this.findRemoteStatsId(a.ssrc,gc.REMOTE_INBOUND);d&&this.processRemoteInboundStats(d,b)}},b.prototype.findRemoteStatsId=function(a,b){var d=Array.from(this.report.values()).find(function(d){return d.type===b&&d.ssrc===a});return d?d.id:null},b.prototype.processVideoMediaSource=
function(a,b){(a=this.report.get(a))&&a.width&&a.height&&a.framesPerSecond&&(b.inputFrame={width:a.width,height:a.height,frameRate:a.framesPerSecond})},b.prototype.processAudioMediaSource=function(a,b){(a=this.report.get(a))&&(b.inputLevel=a.audioLevel)},b.prototype.processVideoTrackSenderStats=function(a,b){if(a=this.report.get(a)){var d=0,e=Date.now(),k=this.lastVideoFramesSent.get(b.ssrc);k&&800<=e-k.lts?(d=Math.round((a.framesSent-k.count)/((e-k.lts)/1E3)),this.lastVideoFramesSent.set(b.ssrc,
{count:a.framesSent,lts:e,rate:d})):k?d=k.rate:this.lastVideoFramesSent.set(b.ssrc,{count:a.framesSent,lts:e,rate:0});b.sentFrame={width:a.frameWidth,height:a.frameHeight,frameRate:d}}},b.prototype.processVideoTrackReceiverStats=function(a,b){if(a=this.report.get(a)){var d=this.lastVideoFramesRecv.get(b.ssrc),e=Date.now();b.framesReceivedCount=a.framesReceived;var k=0;if(d&&800<=e-d.lts?(k=Math.round((a.framesReceived-d.count)/((e-d.lts)/1E3)),this.lastVideoFramesRecv.set(b.ssrc,{count:a.framesReceived,
lts:e,rate:k})):d?k=d.rate:this.lastVideoFramesRecv.set(b.ssrc,{count:a.framesReceived,lts:e,rate:0}),b.receivedFrame={width:a.frameWidth||0,height:a.frameHeight||0,frameRate:k||0},b.decodedFrame={width:a.frameWidth||0,height:a.frameHeight||0,frameRate:b.decodeFrameRate||0},b.outputFrame={width:a.frameWidth||0,height:a.frameHeight||0,frameRate:b.decodeFrameRate||0},a.jitterBufferDelay&&a.jitterBufferEmittedCount)d=this.lastVideoJBDelay.get(b.ssrc),this.lastVideoJBDelay.set(b.ssrc,{jitterBufferDelay:a.jitterBufferDelay,
jitterBufferEmittedCount:a.jitterBufferEmittedCount}),d||(d={jitterBufferDelay:0,jitterBufferEmittedCount:0}),a=1E3*(a.jitterBufferDelay-d.jitterBufferDelay)/(a.jitterBufferEmittedCount-d.jitterBufferEmittedCount),b.jitterBufferMs=a,b.currentDelayMs=Math.round(a)}},b.prototype.processAudioTrackSenderStats=function(a,b){(a=this.report.get(a))&&(b.aecReturnLoss=a.echoReturnLoss||0,b.aecReturnLossEnhancement=a.echoReturnLossEnhancement||0)},b.prototype.processAudioTrackReceiverStats=function(a,b){if(a=
this.report.get(a)){if(a.removedSamplesForAcceleration&&a.totalSamplesReceived&&(b.accelerateRate=a.removedSamplesForAcceleration/a.totalSamplesReceived),a.jitterBufferDelay&&a.jitterBufferEmittedCount){var d=this.lastAudioJBDelay.get(b.ssrc);this.lastAudioJBDelay.set(b.ssrc,{jitterBufferDelay:a.jitterBufferDelay,jitterBufferEmittedCount:a.jitterBufferEmittedCount});d||(d={jitterBufferDelay:0,jitterBufferEmittedCount:0});b.jitterBufferMs=Math.round(1E3*(a.jitterBufferDelay-d.jitterBufferDelay)/(a.jitterBufferEmittedCount-
d.jitterBufferEmittedCount))}b.outputLevel=a.audioLevel;d=1920;a.totalSamplesDuration&&a.totalSamplesReceived&&(d=a.totalSamplesReceived/a.totalSamplesDuration/50,b.receivedFrames=Math.round(a.totalSamplesReceived/d));a.concealedSamples&&(b.droppedFrames=Math.round(a.concealedSamples/d))}},b.prototype.processRemoteInboundStats=function(a,b){(a=this.report.get(a))&&(b.packetsLost=a.packetsLost,a.roundTripTime&&(b.rttMs=1E3*a.roundTripTime))},b.prototype.getCodecFromCodecStats=function(a){a=this.report.get(a);
return a?(a=a.mimeType.match(/\/(.*)$/))&&a[1]?a[1]:"":""},b.prototype.updateSendBitrate=function(){var a=0,b=null,f=null;this.mediaBytesSent.forEach(function(b){a+=b.diffMean()});this.mediaBytesRetransmit.forEach(function(a){b=null===b?a.diffMean():b+a.diffMean()});this.mediaBytesTargetEncode.forEach(function(a){f=null===f?a.diffMean():f+a.diffMean()});this._stats.bitrate={actualEncoded:8*(null!==b?a-b:a)/(this.options.updateInterval/1E3),transmit:8*a/(this.options.updateInterval/1E3)};null!==b&&
(this._stats.bitrate.retransmit=8*b/(this.options.updateInterval/1E3));null!==f&&(this._stats.bitrate.targetEncoded=8*f/(this.options.updateInterval/1E3))},b}(zg),Qp=function(a){function b(){return null!==a&&a.apply(this,arguments)||this}return jf(b,a),b.prototype.updateStats=function(){return Promise.resolve()},b}(zg);class fl{constructor(a){this.localCandidateCount=0;this.allCandidateReceived=!1;this.videoTrack=this.audioTrack=null;this.mediaStream=new MediaStream;this.ID=gl;gl+=1;this.spec=a;this.createPeerConnection();
a=this.pc;var b=void 0,d=void 0;void 0===b&&(b=250);void 0===d&&(d=8);var e;this.statsFilter=(e=(e=navigator.userAgent.toLocaleLowerCase().match(/chrome\/[\d]./i))&&e[0]?Number(e[0].split("/")[1]):null)?76>e?new Pp(a,{updateInterval:b,lossRateInterval:d}):new el(a,{updateInterval:b,lossRateInterval:d}):window.RTCStatsReport&&a.getStats()instanceof Promise?new el(a,{updateInterval:b,lossRateInterval:d}):new Qp(a,{updateInterval:b,lossRateInterval:d})}get _statsFilter(){return this.statsFilter}getStats(){return this.statsFilter.getStats()}async createOfferSDP(){try{let a=
await this.pc.createOffer(this.offerOptions);if(!a.sdp)throw Error("offer sdp is empty");return a.sdp}catch(a){throw h.error("create offer error:",a.toString()),new n(m.CREATE_OFFER_FAILED,a.toString());}}async setOfferSDP(a){try{await this.pc.setLocalDescription({type:"offer",sdp:a})}catch(b){throw h.error("set local offer error",b.toString()),new n(m.CREATE_OFFER_FAILED,b.toString());}}async setAnswerSDP(a){try{await this.pc.setRemoteDescription({type:"answer",sdp:a})}catch(b){if("InvalidStateError"!==
b.name||"stable"!==this.pc.signalingState)throw h.error("set remote answer error",b.toString()),new n(m.SET_ANSWER_FAILED,b.toString());h.debug("[pc-".concat(this.ID,"] ignore invalidstate error"))}}close(){this.onConnectionStateChange=this.onICEConnectionStateChange=void 0;try{this.pc.close()}catch(a){}this.statsFilter.destroy()}createPeerConnection(){let a={iceServers:[{urls:"stun:webcs.agora.io:3478"}]};var b;this.spec.iceServers?a.iceServers=this.spec.iceServers:this.spec.turnServer&&"off"!==
this.spec.turnServer.mode&&r(b=this.spec.turnServer.servers).call(b,b=>{var d,f;(a.iceServers&&a.iceServers.push({username:b.username,credential:b.password,credentialType:"password",urls:p(d="turn:".concat(b.turnServerURL,":")).call(d,b.udpport,"?transport=udp")}),b.tcpport)&&a.iceServers&&a.iceServers.push({username:b.username,credential:b.password,credentialType:"password",urls:p(f="turn:".concat(b.turnServerURL,":")).call(f,b.tcpport,"?transport=tcp")});b.forceturn&&(a.iceTransportPolicy="relay")});
u.CHROME_FORCE_PLAN_B&&Xe()&&(a.sdpSemantics="plan-b",ca.supportUnifiedPlan=!1);this.pc=new RTCPeerConnection(a);this.pc.oniceconnectionstatechange=()=>{this.onICEConnectionStateChange&&this.onICEConnectionStateChange(this.pc.iceConnectionState)};this.pc.onconnectionstatechange=()=>{this.onConnectionStateChange&&this.onConnectionStateChange(this.pc.connectionState)};this.pc.onsignalingstatechange=()=>{"closed"===this.pc.connectionState&&this.onConnectionStateChange&&this.onConnectionStateChange(this.pc.connectionState)};
this.pc.onicecandidate=a=>{if(!a.candidate)return this.pc.onicecandidate=null,this.allCandidateReceived=!0,void h.debug("[pc-".concat(this.ID,"] local candidate count"),this.localCandidateCount);this.localCandidateCount+=1};Fc(()=>{this.allCandidateReceived||(this.allCandidateReceived=!0,h.debug("[pc-".concat(this.ID,"] onicecandidate timeout, local candidate count"),this.localCandidateCount))},u.CANDIDATE_TIMEOUT)}}class hl extends fl{constructor(a){super(a)}async setOfferSDP(a){let b=void 0;return(b=
u.CUSTOM_PUB_OFFER_MODIFIER)&&(a=b(a)),await super.setOfferSDP(a)}async setAnswerSDP(a){let b=void 0;return(b=u.CUSTOM_PUB_ANSWER_MODIFIER)&&(a=b(a)),await super.setAnswerSDP(a)}async addStream(a){a=a.getTracks();for(let b of a)await this.addTrack(b)}async replaceTrack(a){if(!ca.supportReplaceTrack){var b="audio"===a.kind?this.audioTrack:this.videoTrack;if(!b)throw new n(m.UNEXPECTED_ERROR,"can not find replaced track");return this.removeTrack(b),await this.addTrack(a),!0}let d=this.getSender(a.kind),
e=U(b=this.mediaStream.getTracks()).call(b,b=>b.kind===a.kind);e&&this.mediaStream.removeTrack(e);this.mediaStream.addTrack(a);try{await d.replaceTrack(a),"audio"===a.kind?this.audioTrack=a:this.videoTrack=a}catch(f){throw new n(m.SENDER_REPLACE_FAILED,f.toString());}return!1}removeTrack(a){let b=this.getSender(a.kind);this.mediaStream.removeTrack(a);try{this.pc.removeTrack(b)}catch(d){h.warning("[pc-".concat(this.ID,"] remove track error, ignore"),d)}"audio"===a.kind?(this.audioTrack=null,this.audioSender=
void 0,this.audioTransceiver&&(this.audioTransceiver.direction="inactive"),this.audioTransceiver=void 0):(this.videoTrack=null,this.videoSender=void 0,this.videoTransceiver&&(this.videoTransceiver.direction="inactive"),this.videoTransceiver=void 0)}async addTrack(a){let b=ca;if("audio"===a.kind&&this.audioTrack||"video"===a.kind&&this.videoTrack)throw new n(m.UNEXPECTED_ERROR,"Can't add multiple stream");let d,e;this.mediaStream.addTrack(a);b.supportUnifiedPlan?(d=await vm(this.pc,a),e=d.sender):
e=this.pc.addTrack(a,this.mediaStream);"audio"===a.kind?(this.audioTrack=a,this.audioSender=e,this.audioTransceiver=d):(this.videoTrack=a,this.videoSender=e,this.videoTransceiver=d)}async setRtpSenderParameters(a,b){if(a=this.videoSender||(this.videoTransceiver?this.videoTransceiver.sender:void 0)){var d=a.getParameters();d.degradationPreference=b;try{await a.setParameters(d)}catch(e){h.debug("[".concat(this.ID,"] ignore RtpSender.setParameters"),e.toString())}}}async setRtpEncodingParameters(a){let b=
this.videoSender||(this.videoTransceiver?this.videoTransceiver.sender:void 0);if(!b)throw new n(m.LOW_STREAM_ENCODING_ERROR,"Low stream has no video sender.");let d=b.getParameters();if(!d.encodings||!d.encodings[0])throw new n(m.LOW_STREAM_ENCODING_ERROR,"Low stream RtpEncodingParameters is empty.");return a.scaleResolutionDownBy&&(d.encodings[0].scaleResolutionDownBy=a.scaleResolutionDownBy),a.maxBitrate&&(d.encodings[0].maxBitrate=a.maxBitrate),a.maxFramerate&&(d.encodings[0].maxFramerate=a.maxFramerate),
await b.setParameters(d),b.getParameters()}getSender(a){var b=null;if(ca.supportUnifiedPlan){var d;b=(b=U(d=this.pc.getTransceivers()).call(d,b=>b.sender.track&&b.sender.track.kind===a))?b.sender:null}else{var e;b=U(e=this.pc.getSenders()).call(e,b=>b.track&&b.track.kind===a)||null}if(!b)throw new n(m.SENDER_NOT_FOUND);return b}}class il extends fl{constructor(a){super(a);this.statsFilter.onFirstAudioDecoded=()=>this.onFirstAudioDecoded&&this.onFirstAudioDecoded();this.statsFilter.onFirstVideoDecoded=
(a,d)=>this.onFirstVideoDecoded&&this.onFirstVideoDecoded(a,d);this.statsFilter.onFirstAudioReceived=()=>this.onFirstAudioReceived&&this.onFirstAudioReceived();this.statsFilter.onFirstVideoReceived=()=>this.onFirstVideoReceived&&this.onFirstVideoReceived();ca.supportUnifiedPlan?(this.audioTransceiver=this.pc.addTransceiver("audio",{direction:"recvonly"}),this.videoTransceiver=this.pc.addTransceiver("video",{direction:"recvonly"})):this.offerOptions={offerToReceiveAudio:!0,offerToReceiveVideo:!0};
this.pc.ontrack=a=>{"audio"===a.track.kind?this.audioTrack=a.track:this.videoTrack=a.track;this.onTrack&&this.onTrack(a.track,a.streams[0])}}async setOfferSDP(a){let b=void 0;return(b=u.CUSTOM_SUB_OFFER_MODIFIER)&&(a=b(a)),await super.setOfferSDP(a)}async setAnswerSDP(a){let b=void 0;return(b=u.CUSTOM_SUB_ANSWER_MODIFIER)&&(a=b(a)),await super.setAnswerSDP(a)}}let gl=1,jl=1,Rp=1/0;class kl extends cb{constructor(a,b){super();this.startTime=v();this.createTime=v();this.readyToReconnect=!1;this._connectionState=
"disconnected";this.currentReconnectCount=0;this.ID=jl;jl+=1;this.joinInfo=a;this._userId=b;this.createPC()}get connectionState(){return this._connectionState}set connectionState(a){a!==this._connectionState&&(this.emit(H.CONNECTION_STATE_CHANGE,a,this._connectionState),this._connectionState=a)}get connectionId(){var a,b;return p(a=p(b="".concat(this.joinInfo.clientId,"-")).call(b,this.type?this.type:"sub(".concat(this._userId,")"),"-")).call(a,this.ID)}getUserId(){return this._userId}startUploadStats(){this.statsUploadInterval=
window.setInterval(()=>{let a=this.pc.getStats();this.uploadStats(a,this.lastUploadPCStats);this.lastUploadPCStats=a},3E3);this.statsUploadSlowInterval=window.setInterval(()=>{let a=this.pc.getStats();this.uploadSlowStats(a)},6E4);this.relatedStatsUploadInterval=window.setInterval(()=>{let a=this.pc.getStats();this.uploadRelatedStats(a,this.lastRelatedPcStats);this.lastRelatedPcStats=a},1E3)}stopUploadStats(){this.statsUploadInterval&&window.clearInterval(this.statsUploadInterval);this.relatedStatsUploadInterval&&
window.clearInterval(this.relatedStatsUploadInterval);this.relatedStatsUploadInterval=this.statsUploadInterval=void 0}createWaitConnectionConnectedPromise(){return new x((a,b)=>{"disconnected"===this.connectionState?b():"connected"===this.connectionState?a():this.once(H.CONNECTION_STATE_CHANGE,d=>{"connected"===d?a():b()})})}async reconnectPC(a){if(this.readyToReconnect=!1,a&&this.onPCDisconnected(a),this.currentReconnectCount>Rp)throw h.debug("[".concat(this.connectionId,"] cannot reconnect pc")),
a||new n(m.UNEXPECTED_ERROR);this.stopUploadStats();h.debug("[".concat(this.connectionId,"] start reconnect pc"));this.connectionState="connecting";this.currentReconnectCount+=1;if(await this.closePC())return h.debug("[".concat(this.connectionId,"] abort reconnect pc, wait ws")),void this.readyToReconnectPC();this.createPC();await this.startP2PConnection();this.currentReconnectCount=0}readyToReconnectPC(){this.stopUploadStats();this.readyToReconnect=!0;this.pc.onICEConnectionStateChange=void 0;this.connectionState=
"connecting"}updateICEPromise(){this.removeAllListeners(H.GATEWAY_P2P_LOST);this.icePromise=new x((a,b)=>{this.pc.onICEConnectionStateChange=d=>{var e,f;h.info(p(e=p(f="[".concat(this.connectionId,"] ice-state: ")).call(f,this.type," p2p ")).call(e,d));"connected"===d&&a();"failed"!==d&&"closed"!==d||this.reconnectPC(new n(m.ICE_FAILED)).catch(a=>{this.emit(H.P2P_LOST);b(a)})};this.pc.onConnectionStateChange=a=>{var d,f;h.info(p(d=p(f="[".concat(this.connectionId,"] connection-state: ")).call(f,this.type,
" p2p ")).call(d,a));"failed"!==a&&"closed"!==a||this.reconnectPC(new n(m.PC_CLOSED)).catch(a=>{this.emit(H.P2P_LOST);b(a)})};this.removeAllListeners(H.GATEWAY_P2P_LOST);this.once(H.GATEWAY_P2P_LOST,a=>{var d;if(this.pc.ID.toString()===a.toString()){if(h.info(p(d="[".concat(this.connectionId,"] ")).call(d,this.type," p2p gateway lost")),this.pc.allCandidateReceived&&0===this.pc.localCandidateCount)return this.disconnectedReason=new n(m.NO_ICE_CANDIDATE,"can not get candidate in this pc"),void this.closeP2PConnection(!0);
this.reconnectPC(new n(m.GATEWAY_P2P_LOST)).catch(a=>{this.emit(H.P2P_LOST);b(a)})}})})}}class ll{constructor(a){this.freezeTimeCounterList=[];this.lastTimeUpdatedTime=this.playbackTime=this.freezeTime=this.timeUpdatedCount=0;this._videoElementStatus=Oa.NONE;this.isGettingVideoDimensions=!1;this.handleVideoEvents=a=>{switch(a.type){case "play":case "playing":this.startGetVideoDimensions();this.videoElementStatus=Oa.PLAYING;break;case "loadeddata":this.onFirstVideoFrameDecoded&&this.onFirstVideoFrameDecoded();
break;case "canplay":this.videoElementStatus=Oa.CANPLAY;break;case "stalled":this.videoElementStatus=Oa.STALLED;break;case "suspend":this.videoElementStatus=Oa.SUSPEND;break;case "pause":this.videoElementStatus=Oa.PAUSED;this.videoElement&&(h.debug("[track-".concat(this.trackId,"] video element paused, auto resume")),this.videoElement.play());break;case "waiting":this.videoElementStatus=Oa.WAITING;break;case "abort":this.videoElementStatus=Oa.ABORT;break;case "ended":this.videoElementStatus=Oa.ENDED;
break;case "emptied":this.videoElementStatus=Oa.EMPTIED;break;case "timeupdate":{a=v();if(this.timeUpdatedCount+=1,10>this.timeUpdatedCount)return void(this.lastTimeUpdatedTime=a);let b=a-this.lastTimeUpdatedTime;this.lastTimeUpdatedTime=a;500<b&&(this.freezeTime+=b);for(this.playbackTime+=b;6E3<=this.playbackTime;)this.playbackTime-=6E3,this.freezeTimeCounterList.push(Math.min(6E3,this.freezeTime)),this.freezeTime=Math.max(0,this.freezeTime-6E3)}}};this.startGetVideoDimensions=()=>{let a=()=>{if(this.isGettingVideoDimensions=
!0,this.videoElement&&4<this.videoElement.videoWidth*this.videoElement.videoHeight)return h.debug("[".concat(this.trackId,"] current video dimensions:"),this.videoElement.videoWidth,this.videoElement.videoHeight),void(this.isGettingVideoDimensions=!1);Fc(a,500)};!this.isGettingVideoDimensions&&a()};this.slot=a.element;this.trackId=a.trackId;this.updateConfig(a)}get videoElementStatus(){return this._videoElementStatus}set videoElementStatus(a){var b,d;a!==this._videoElementStatus&&(h.debug(p(b=p(d=
"[".concat(this.trackId,"] video-element-status change ")).call(d,this._videoElementStatus," => ")).call(b,a)),this._videoElementStatus=a)}updateConfig(a){this.config=a;this.trackId=a.trackId;a=a.element;a!==this.slot&&(this.destroy(),this.slot=a);this.createElements()}updateVideoTrack(a){this.videoTrack!==a&&(this.videoTrack=a,this.createElements())}play(){if(this.videoElement){let a=this.videoElement.play();a&&a.catch&&a.catch(a=>{h.warning("[".concat(this.trackId,"] play warning: "),a)})}}getCurrentFrame(){if(!this.videoElement)return new ImageData(2,
2);let a=document.createElement("canvas");a.width=this.videoElement.videoWidth;a.height=this.videoElement.videoHeight;var b=a.getContext("2d");if(!b)return h.error("create canvas context failed!"),new ImageData(2,2);b.drawImage(this.videoElement,0,0,a.width,a.height);b=b.getImageData(0,0,a.width,a.height);return a.remove(),b}destroy(){if(this.videoElement&&(this.videoElement.srcObject=null,this.videoElement=void 0),this.container){try{this.slot.removeChild(this.container)}catch(a){}this.container=
void 0}this.freezeTimeCounterList=[]}createElements(){this.container||(this.container=document.createElement("div"));this.container.id="agora-video-player-".concat(this.trackId);this.container.style.width="100%";this.container.style.height="100%";this.container.style.position="relative";this.container.style.overflow="hidden";this.videoTrack?(this.container.style.backgroundColor="black",this.createVideoElement(),this.container.appendChild(this.videoElement)):this.removeVideoElement();this.slot.appendChild(this.container)}createVideoElement(){(this.videoElement||
(this.videoElementStatus=Oa.INIT,this.videoElement=document.createElement("video"),this.videoElement.onerror=()=>this.videoElementStatus=Oa.ERROR,this.container&&this.container.appendChild(this.videoElement),r(Be).call(Be,a=>{this.videoElement&&this.videoElement.addEventListener(a,this.handleVideoEvents)}),this.videoElementCheckInterval=window.setInterval(()=>{!document.getElementById("video_".concat(this.trackId))&&this.videoElement&&(this.videoElementStatus=Oa.DESTROYED)},1E3)),this.videoElement.id=
"video_".concat(this.trackId),this.videoElement.className="agora_video_player",this.videoElement.style.width="100%",this.videoElement.style.height="100%",this.videoElement.style.position="absolute",this.videoElement.controls=!1,this.videoElement.setAttribute("playsinline",""),this.videoElement.style.left="0",this.videoElement.style.top="0",this.config.mirror&&(this.videoElement.style.transform="rotateY(180deg)"),this.config.fit?this.videoElement.style.objectFit=this.config.fit:this.videoElement.style.objectFit=
"cover",this.videoElement.setAttribute("muted",""),this.videoElement.muted=!0,this.videoElement.srcObject&&this.videoElement.srcObject instanceof MediaStream)?this.videoElement.srcObject.getVideoTracks()[0]!==this.videoTrack&&(this.videoElement.srcObject=this.videoTrack?new MediaStream([this.videoTrack]):null):this.videoElement.srcObject=this.videoTrack?new MediaStream([this.videoTrack]):null;let a=this.videoElement.play();void 0!==a&&a.catch(a=>{h.debug("[".concat(this.trackId,"] playback interrupted"),
a.toString())})}removeVideoElement(){if(this.videoElement){r(Be).call(Be,a=>{this.videoElement&&this.videoElement.removeEventListener(a,this.handleVideoEvents)});this.videoElementCheckInterval&&(window.clearInterval(this.videoElementCheckInterval),this.videoElementCheckInterval=void 0);try{this.container&&this.container.removeChild(this.videoElement)}catch(a){}this.videoElement=void 0;this.videoElementStatus=Oa.NONE}}}let Be="play playing loadeddata canplay pause stalled suspend waiting abort emptied ended timeupdate".split(" ");
class Sp{get output(){return this._output}async setInput(a){if(a!==this.input){if(a.kind!==this.kind)throw new n(m.UNEXPECTED_ERROR);this.input&&this.removeInput();this.input=a;await this._setInput(a)}}removeInput(){this.input=void 0;this._removeInput()}async updateOutput(a){this.output!==a&&(this._output=a,this.onOutputChange&&await this.onOutputChange())}replaceOriginMediaStream(a,b){var d,e;let f=U(d=a.getTracks()).call(d,a=>a.kind===this.kind);f&&a.removeTrack(f);b=U(e=b.getTracks()).call(e,a=>
a.kind===this.kind);void 0===this.output&&b&&a.addTrack(b);this.output&&(h.debug("replace ".concat(this.output.kind," track to origin media stream")),a.addTrack(this.output))}}var ml;!document.documentMode&&window.StyleMedia&&(HTMLCanvasElement.prototype.getContext=(ml=HTMLCanvasElement.prototype.getContext,function(){let a=arguments;return"webgl"===a[0]&&(a=Db([]).call(arguments),a[0]="experimental-webgl"),ml.apply(null,a)}));let Tp=[31,222,239,159,192,236,164,81,54,227,176,149,2,247,75,141,183,
54,213,216,158,92,111,49,228,111,150,6,135,79,35,212,4,155,200,168,37,107,243,110,144,179,51,81,55,78,223,242,191,211,74,119,203,151,142,62,31,41,132,22,35,155,87,123,119,117,216,57,201,53,228,67,201,40,106,24,80,176,187,253,60,63,136,100,20,12,177,99,64,38,101,143,111,176,251,211,145,136,34,23,79,136,202,95,105,199,125,67,180,44,210,179,228,4,85,160,188,64,26,46,6,61,201,103,248,18,97,254,140,36,115,106,48,124,102,216,155,120,36,227,165,217,7,227,191,128,212,157,80,37,117,175,24,214,47,221,183,211,
51,174,251,223,159,167,152,53,36,107,199,223,91,62,46,194,11,80,121,188,219,2,99,99,232,229,173,234,21,30,236,177,243,142,97,48,108,56,62,172,56,216,3,42,79,138,23,88,182,39,5,118,68,135,178,56,9,94,189,44,104,9,238,231,174,122,85,247,231,86,74,8,189,147,218,180,58,76,227,17,46,90,194,100,51,178,72,163,151,243,166,130,85,1,223,130,152,242,85,255,28,173,97,252,119,215,177,119,86,104,136,82,40,72,53,11,18,26,240,188,76,110,39,31,189],Up=[11,196,242,139,198,252,188,5,59,170,161,152,17,229,24,141,133,
54,214,206,133,26,66,126,255,11,245,10,146,92,52,134,108,152,221,191,124,116,248,106,130,251,59,105,43,91,135,199,181,223,10,51,134,194,240,46,9,3,141,22,35,146,76,23,109,117,208,41,201,45,218,76,203,105,51,58,97,154,145,236,49,18,183,127,27,12,210,122,73,42,37,143,36,207,251,211,145,191,56,10,88,222,181,125,22,238,123,71,177,107,218,254,173,28,34,253,249,67,83,97,73,111,219,43,181,82,38,230,136,109,22,67];class nl{constructor(a,b){this.gl=a;this.kernel=b||Up;a=this.gl;b=ji(this.kernel);b=[ji(Tp),
b];var d=[];for(var e=0;e<b.length;++e)d.push(wm(a,b[e],0===e?a.VERTEX_SHADER:a.FRAGMENT_SHADER));b=xm(a,d,void 0,void 0);d=a.getAttribLocation(b,"a_position");e=a.createBuffer();a.bindBuffer(a.ARRAY_BUFFER,e);a.bufferData(a.ARRAY_BUFFER,new Float32Array([0,0,1,0,0,1,0,1,1,0,1,1]),a.STATIC_DRAW);a.enableVertexAttribArray(d);a.vertexAttribPointer(d,2,a.FLOAT,!1,0,0);d=a.getAttribLocation(b,"a_texCoord");e=a.createBuffer();a.bindBuffer(a.ARRAY_BUFFER,e);a.bufferData(a.ARRAY_BUFFER,new Float32Array([0,
0,1,0,0,1,0,1,1,0,1,1]),a.STATIC_DRAW);a.enableVertexAttribArray(d);a.vertexAttribPointer(d,2,a.FLOAT,!1,0,0);this.program=b}setUniforms(){let a=this.gl.getUniformLocation(this.program,"u_flipY");this.gl.uniform1f(a,1)}}class Yb extends nl{constructor(a,b,d,e){super(a,b);this.denoiseLevel=5;this.xOffset=1/d;this.yOffset=1/e}setUniforms(){let a=this.gl.getUniformLocation(this.program,"u_flipY"),b=this.gl.getUniformLocation(this.program,"u_singleStepOffset"),d=this.gl.getUniformLocation(this.program,
"u_denoiseLevel");this.gl.uniform2f(b,this.xOffset,this.yOffset);this.gl.uniform1f(d,this.denoiseLevel);this.gl.uniform1f(a,1)}setParameters(a){void 0!==a.denoiseLevel&&(this.denoiseLevel=a.denoiseLevel)}setSize(a,b){this.xOffset=1/a;this.yOffset=1/b}}let Vp=[11,196,242,139,198,252,188,5,59,170,161,152,17,229,24,141,133,54,214,206,133,26,66,126,255,11,245,10,146,92,52,134,108,155,210,164,99,114,228,96,130,251,59,105,43,91,135,199,181,223,10,51,133,194,247,34,31,39,142,28,2,130,18,109,84,124,223,62,
140,52,128,47,208,47,115,39,4,200,220,171,53,36,150,101,10,75,247,121,74,36,35,143,108,176,235,211,135,164,36,11,88,160,148,35,6,221,41,32,166,109,205,171,228,4,26,169,244,82,119,102,86,61,201,103,248,18,97,242,182,34,121,70,28,71,126,197,223,126,14,244,149,192,12,176,187,149,212,156,22,44,36,133,10,216,63,198,213,154,116,230,253,154,154,249,215,55,60,34,196,229,76,50,44,135,22,77,113,247,142,94,60,23,172,145,175,218,81,86,162,239,180,205,63,118,3,110,123,224,127,158,124,15,127,157,27,66,176,33,24,
51,53,194,178,56,6,74,191,111,51,78,174,157,229,17,22,178,231,92,25,23,191,157,137,188,54,64,176,13,22,81,207,45,108,203,83,186,130,237,186,153,110,8,196,168,152,161,28,238,46,184,36,185,20,203,183,98,95,41,149,93,105,37,116,91,68,105,164,217,30,42,60,53,173,213,177,216,195,53,204,173,128,243,42,122,205,65,97,129,194,68,218,91,141,11,224,124,132,138,119,36,220,161,39,214,146,183,193,225,23,177,201,243,128,160,33,75,86,126,139,254,232,14,13,85,2,112,17,150,36,180,86,226,225,126,197,17,228,225,142,
245,37,170,39,96,187,190,2,35,85,237,11,189,1,79,237,2,1,114,246,109,190,66,54,153,43,218,204,70,6,204,162,247,18,130,123,30,60,165,130,142,210,133,91,127,117,71,38,145,172,7,5,16,220,222,111,98,141,239,208,125,26,238,28,0,216,89,13,7,119,134,194,75,41,67,174,1,217,80,101,40,26,59,28,59,46,108,138,38,157,167,28,234,73,177,42,42,102,108,26,181,27,178,42,43,52,28,110,117,198,173,176,178,101,225,150,36,139,108,105,10,237,222,3,143,126,18,144,115,74,56,114,134,231,159,212,62,126,80,173,216,167,4,81,18,
52,17,144,218,32,139,207,104,128,229,99,84,120,31,87,227,154,91,196,63,123,111,125,36,52,57,168,113,150,189,204,24,104,196,237,86,163,68,197,202,170,212,191,81,193,111,255,162,181,202,156,146,196,96,16,118,117,55,71,156,31,163,242,204,239,11,150,27,126,115,154,107,247,134,158,125,255,146,35,183,209,36,116,87,215,172,5,251,133,114,254,141,195,6,145,4,111,182,167,74,154,152,68,18,146,88,106,200,154,15,176,94,86,66,178,101,219,35,188,129,66,28,41,110,174,53,88,174,64,191,206,127,48,126,214,216,93,119,
2,166,99,181,222,29,218,28,195,219,125,44,50,16,99,174,225,51,133,120,184,159,168,75,242,162,124,255,81,25,153,109,69,220,176,4,237,196,233,19,8,240,160,39,122,81,29,188,144,249,170,174,137,30,10,93,133,151,199,248,175,38,41,144,229,245,149,25,240,138,179,114,182,84,50,103,95,31,199,31,87,208,203,199,135,49,211,43,52,36,74,59,37,22,136,171,244,126,18,251,39,159,241,66,206,127,149,159,182,143,232,199,136,46,150,32,51,221,74,22,102,93,22,44,132,140,199,43,69,249,77,75,140,70,4,252,98,235,77,190,125,
18,56,21,10,244,42,2,246,62,127,241,123,137,22,247,219,177,160,84,18,10,84,97,251,127,102,16,209,181,100,94,56,238,209,207,76,189,95,15,165,139,143,189,96,225,55,112,178,27,218,198,223,251,52,123,94,130,220,142,216,116,237,18,254,49,59,128,41,29,15,179,164,85,76,167,166,151,39,221,2,190,68,167,26,177,114,141,4,67,25,69,182,38,166,160,27,151,148,108,48,227,60,112,48,22,159,76,127,251,63,254,177,113,217,197,95,179,109,128,138,99,27,249,10,174,155,129,80,39,165,252,85,60,131,183,98,107,68,207,19,233,
231,55,225,126,77,49,53,145,203,113,29,208,64,237,182,229,165,7,11,169,106,253,116,141,200,62,16,38,121,55,148,91,83,160,140,126,121,12,79,189,72,172,31,243,240,209,229,32,220,91,229,81,94,247,121,153,151,232,182,171,198,50,31,152,245,172,151,130,55,62,125,38,155,229,78,207,148,201,2,78,63,119,107,168,78,139,141,163,177,191,239,141,39,182,174,40,76,226,62,125,209,6,6,34,37,147,85,204,103,51,191,36,248,17,175,20,1,53,16,35,143,237,177,125,86,29,219,235,20,121,205,59,5,250,107,109,32,224,30,152,143,
113,151,95,85,19,254,164,135,124,68,136,199,29,31,244,91,10,84,127,101,210,70,226,195,140,70,166,54,217,165,84,42,165,175,100,234,124,121,105,53,101,118,174,101,220,147,68,161,37,0,182,220,142,221,155,230,115,164,10,214,208,120,91,152,66,27,81,184,48,84,70,7,128,153,217,218,249,226,70,130,200,156,61,227,21,164,137,193,221,119,10,134,204,23,20,17,90,94,105,204,39,99,1,64,153,45,213,19,247,97,194,49,35,125,255,195,139,63,209,175,208,147,189,244,204,24,211,99,142,18,92,130,254,182,231,235,93,10,127,
175,87,35,62,110,137,184,39,114,200,150,11,190,40,162,168,223,203,110,242,192,234,26,11,54,155,38,48,79,109,101,119,165,187,223,5,20,168,171,241,20,243,108,199,3,155,69,244,149,0,187,110,12,233,42,151,189,139,133,104,3,30,16,200,69,4,123,103,144,12,106,182,1,127,91,125,158,12,144,238,232,209,101,159,56,163,240,179,50,169,120,219,176,87,77,45,247,153,190,82,132,50,137,209,97,19,35,247,161,62,77,16,71,152,72,61,50,99,157,154,56,58,175,27,73,121,229,195,228,132,69,233,169,100,21,123,17,3,164,6,146,106,
196,29,3,250,217,164,23,171,203,14,242,239,249,169,116,138,209,98,113,181,122,35,162,216,46,230,4,155,142,118,216,232,229,28,12,158,153,126,149,171,172,231,99,211,57,114,136,183,114,74,35,233,115,127,253,157,38,49,136,141,25,161,255,232,110,101,208,166,186,226,12,185,19,155,53,93,155,39,161,7,124,213,52,223,125,211,242,253,22,13,131,115,167,198,188,90,209,63,224,92,112,118,220,165,31,164,43,58,197,77,17,247,77,164,74,77,218,18,187,41,76,189,127,98,18,226,231,71,115,236,68,183,111,50,168,88,247,9,
123,65,180,88,74,44,101,101,173,11];class Wp extends Yb{constructor(a,b,d){super(a,Vp,b,d)}}let Xp=[11,196,242,139,198,252,188,5,32,162,171,128,13,160,25,222,172,102,207,244,158,69,103,57,239,111,150,18,157,82,55,210,20,131,156,165,108,122,254,125,130,229,55,109,113,11,210,238,163,213,86,116,156,248,215,63,20,48,173,31,55,133,18,105,32,16,204,35,128,38,212,87,200,97,114,40,12,210,193,171,59,33,158,108,14,75,228,74,65,32,57,192,112,156,234,250,140,189,40,20,6,230,135,52,17,200,123,68,183,44,215,187,
234,2,13,169,234,94,115,60,6,107,224,118,254,88,2,235,134,36,120,5,85,94,126,222,223,101,105,227,147,199,64,185,246,143,183,210,30,37,127,226,79,156,118,147,208,131,51,248,232,217,206,181,218,58,61,112,244,227,68,45,41,206,69,12,45,163,205,75,6,23,167,145,250,237,92,84,164,240,253,216,54,85,7,108,62,255,42,217,3,27,0,196,94,28,241,120,80,92,89,135,228,125,2,3,242,39,116,64,248,216,177,122,66,178,180,9,7,33,186,208,213,188,59,78,243,95,123,28,142,45,99,130,7,167,194,156,238,199,10,71,141,251,221,158,
16,255,38,181,36,184,20,136,240,55,27,51,191,82,105,55,97,78,74,121,191,161,91,126,105,103,174,139,223,145,150,120,156,240,252,182,105,104,205,65,97,129,194,68,218,91,141,11,224,124,132,138,119,36,201,211,39,203,146,225,246,252,21,161,250,188,137,190,42,4,90,126,211,171,240,113,67,28,92,57,77,200,125,224,19,178,142,112,202,5,233,229,128,235,105,239,102,52,179,224,87,45,68,211,10,187,9,38,190,86,25,43,175,56,231,11,108,220,36,129,131,19,93,163,239,169,118,205,50,77,121,139,139,141,197,170,20,44,39,
19,97,205,228,8,106,67,210,135,111,127,141,185,175,123,26,226,42,29,217,16,99,9,46,157,232,22,3,105,174,73,144,23,110,55,84,46,4,116,39,113,205,58,158,242,7,208,75,162,55,115,35,52,124,235,114,178,55,43,98,17,100,33,134,237,190,230,60,184,192,104,146,52,58,79,174,180,81,155,114,0,153,113,90,51,86,150,254,136,205,104,39,11,190,187,233,80,81,81,56,18,222,148,116,155,156,33,132,226,127,84,34,83,28,249,153,18,197,10,116,102,125,45,47,36,235,46,212,166,209,3,125,132,237,124,163,68,197,202,232,152,234,
75,235,103,248,160,241,213,151,144,130,37,23,51,48,55,12,227,31,163,242,251,245,22,129,77,20,35,150,20,181,203,138,69,233,215,109,178,209,52,85,96,221,179,56,249,138,111,250,141,134,95,152,92,109,183,174,104,151,156,31,66,211,10,57,141,167,18,177,27,126,74,252,29,143,121,173,203,8,27,44,123,148,57,88,163,68,228,158,62,98,121,192,228,94,92,72,241,33,230,173,0,197,1,194,144,111,91,60,0,106,181,203,51,133,120,250,158,184,93,216,184,126,253,21,22,155,99,80,205,227,69,231,141,165,71,70,252,223,105,51,
93,22,165,135,233,177,164,139,53,5,85,151,134,214,165,249,100,24,186,207,245,149,68,218,204,252,32,190,90,48,76,57,31,201,15,52,130,135,152,206,63,198,100,126,36,2,104,116,0,160,163,186,2,91,165,57,149,163,12,239,121,152,209,224,136,248,135,136,46,150,32,51,154,6,105,0,71,30,44,175,147,139,34,91,184,78,31,145,18,3,250,122,166,47,252,109,19,40,10,123,163,99,76,133,119,37,180,38,207,79,171,185,188];class Yp extends Yb{constructor(a,b,d){super(a,Xp,b,d)}}let Zp=[11,196,242,139,198,252,188,5,32,162,171,
128,13,160,25,222,172,102,207,244,158,69,103,57,239,111,150,18,157,82,55,210,20,131,156,160,96,121,255,120,207,227,114,120,38,72,149,145,165,227,75,122,158,250,232,46,34,52,135,9,30,144,17,110,126,110,130,71,156,46,210,67,202,51,119,97,3,211,214,227,45,109,151,97,21,10,229,53,80,26,51,202,119,128,230,197,140,135,40,14,88,128,202,95,21,208,96,83,185,98,216,242,224,15,25,224,233,86,96,46,80,120,220,48,187,86,30,240,140,46,95,81,48,90,117,140,177,51,107,235,158,137,5,241,191,154,149,219,30,126,85,175,
10,216,63,139,216,151,122,251,224,202,220,227,221,53,122,34,213,224,94,45,14,200,68,31,61,175,208,17,120,82,244,138,208,165,21,19,236,232,180,217,50,74,70,126,114,227,62,192,124,9,85,148,33,77,255,117,75,102,87,151,255,87,74,74,181,111,108,9,249,220,174,59,80,254,168,29,30,94,171,133,133,195,105,64,254,68,65,18,158,54,73,203,65,175,151,170,236,138,17,119,128,237,214,189,28,250,38,149,97,242,81,212,254,57,18,120,155,64,96,108,75,78,74,121,191,243,30,42,60,103,165,196,160,195,216,99,182,173,214,182,
105,53,231,3,45,212,144,101,217,65,141,44,230,125,151,154,123,57,134,223,98,133,156,238,137,181,80,175,230,167,131,180,13,69,77,44,156,165,252,14,27,85,71,1,82,196,64,243,26,167,146,98,201,6,195,247,200,224,44,177,104,109,187,231,83,118,28,159,92,179,28,14,162,81,84,21,168,34,156,21,127,215,88,218,208,11,92,161,239,239,82,221,59,86,83,201,199,216,151,139,23,54,39,52,103,204,247,24,102,94,157,138,42,49,131,183,208,50,95,236,54,6,211,26,68,72,56,212,134,24,91,114,132,1,217,80,38,47,29,47,0,107,102,
99,129,33,140,243,74,251,89,247,103,12,114,58,113,240,72,188,39,48,72,89,45,102,206,245,247,231,56,167,129,122,222,47,40,78,227,159,64,206,34,127,203,127,87,40,108,152,238,147,231,46,104,89,182,180,232,86,89,91,57,10,222,202,59,199,135,60,199,189,40,84,125,28,84,162,210,91,143,34,106,117,118,3,125,126,237,60,131,173,153,69,49,212,204,117,163,31,239,202,232,152,234,3,162,32,176,184,184,196,154,131,144,115,6,53,122,55,69,166,19,230,183,175,244,1,156,11,37,121,134,121,152,142,158,125,229,150,44,183,
216,109,7,65,222,169,56,222,140,110,233,157,138,66,208,6,111,166,188,76,208,222,4,104,211,10,57,141,243,65,228,86,85,88,169,91,237,56,249,133,77,21,32,37,230,55,0,184,110,228,158,62,98,45,147,177,19,119,89,164,103,132,239,84,139,68,204,157,49,41,50,89,113,159,203,51,133,120,184,210,237,15,249,187,100,253,50,16,154,112,64,193,254,10,235,200,253,84,31,169,171,39,122,70,46,186,139,212,162,173,158,41,23,86,148,172,196,237,242,58,102,180,150,238,191,25,240,204,252,125,148,29,124,51,95,10,196,55,49,159,
138,144,255,126,205,43,49,42,17,59,60,77,139,177,239,64,36,224,98,205,234,70,199,103,139,218,206,207,178,217,255,32,134,59,25,221,74,22,102,82,19,20,170,142,134,42,106,249,64,80,222,28,21,169,50,235,4,237,56,81,87,76,32,251,42,6,173,105,54,191,8,136,5,245,206,239,176,9,116,24];class $p extends Yb{constructor(a,b,d){super(a,Zp,b,d)}}let aq=[11,196,242,139,198,252,188,5,32,162,171,128,13,160,25,222,172,102,207,244,158,69,103,57,239,111,150,18,157,82,55,210,20,131,156,190,100,112,230,97,199,225,96,74,
99,94,248,222,162,213,95,122,158,212,233,42,22,37,217,115,36,152,30,123,116,104,212,109,129,41,220,77,213,97,124,45,4,219,197,171,40,18,149,104,20,4,248,102,64,9,50,217,124,131,180,188,159,170,63,1,84,130,150,117,14,212,118,67,165,97,207,242,251,15,30,187,188,77,79,122,67,101,252,109,244,82,37,191,227,35,114,87,57,71,99,218,155,54,101,239,138,197,13,226,228,176,157,158,87,98,55,251,79,150,64,138,200,135,40,132,135,207,146,252,222,57,58,111,151,225,78,59,36,210,70,29,121,160,210,31,109,67,167,194,
177,236,91,108,164,229,130,211,59,66,93,18,107,226,54,210,51,8,77,217,19,73,187,33,30,59,9,135,162,49,5,11,225,111,119,11,247,218,129,115,83,205,170,21,4,69,210,133,134,245,109,15,177,9,81,81,203,105,42,158,12,255,151,165,230,205,5,92,196,251,211,187,27,214,43,186,91,233,85,192,229,15,71,38,220,20,38,101,44,78,7,60,251,186,75,103,108,53,166,220,186,208,194,120,207,230,159,248,22,32,142,124,96,157,222,60,191,65,145,6,239,125,151,147,50,58,130,207,110,131,223,231,137,238,28,182,216,167,198,191,37,67,
76,1,144,232,218,79,72,28,65,101,43,216,64,253,16,173,179,123,140,27,233,245,199,230,36,181,102,114,247,162,18,34,20,212,25,171,24,28,143,80,94,40,167,34,209,61,117,130,1,198,196,7,21,252,180,255,92,128,119,9,48,156,138,136,151,143,23,44,52,3,40,197,228,31,123,67,163,140,32,54,204,187,149,80,19,255,82,120,195,12,110,65,56,212,143,22,78,44,234,72,140,29,118,103,18,36,7,122,50,37,139,47,142,243,25,208,88,237,126,50,103,127,19,183,29,169,29,1,55,23,100,32,129,239,243,160,61,178,197,117,199,45,57,26,
165,135,92,218,59,0,197,54,13,96,40,141,212,221,131,103,46,22,228,191,167,73,20,86,62,11,147,217,116,205,203,110,134,249,51,6,123,23,86,231,157,8,144,83,126,115,118,35,96,36,229,36,220,228,143,71,45,223,129,48,236,5,145,202,188,208,184,70,241,104,255,188,181,146,210,206,144,53,77,101,120,38,8,245,80,230,165,160,183,83,202,79,127,57,214,126,242,150,208,40,239,148,35,163,201,97,74,70,214,181,63,240,147,33,253,149,140,77,197,82,126,189,231,7,196,212,80,14,151,24,57,144,243,81,234,66,24,19,236,2,137,
121,246,129,65,7,99,110,174,54,74,182,81,234,142,37,72,110,220,255,64,119,10,188,111,191,228,1,205,9,204,143,56,62,125,84,106,225,131,97,192,43,240,157,161,75,168,247,44,175,65,81,192,48,21,157,167,80,191,130,161,75,85,186,174,42,117,1,68,252,204,138,254,203,152,21,13,64,144,195,207,238,229,54,103,247,159,245,211,85,191,141,168,32,234,85,46,118,12,5,199,4,19,217,203,202,156,33,143,114,116,60,66,40,58,77,208,237,171,26,72,175,114,205,248,87,137,62,210,143,151,197,167,210,241,122,150,104,122,154,2,
70,102,83,19,36,141,136,199,42,79,229,71,86,194,109,31,236,80,166,17,230,109,1,40,28,46,224,56,20,230,47,100,254,116,208,76,169,157,241,175,3,70,85,31,38,245,58,33,80,145,237,8,22,71,224,158,156,31,249,81,87,247,230,199,237,96,167,123,63,243,79,156,206,203,160,54,124,68,253,215,132,235,57,185,92,238,55,59,210,104,71,26,183,180,71,12,255,224,192,65,154,72,244,8,164,10,248,46,207,30,92,1,80,244,31,189,138,88,216,218,63,100,227,116,57,119,94,135,5,126,255,32,191,163,61,209,194,88,248,112,139,173,43,
69,134,3,160,151,137,25,98,239,166,19,123,208,180,31,120,30,191,75,183,179,126,180,125,92,107,105,206,138,28,67,139,3,188,230,184,255,121,13,181,45,160,114,202,194,123,87,55,124,97,164,82,95,232,216,117,62,5,90,176,82,167,52,160,153,174,168,105,146,91,248,81,79,249,97,138,133,170,245,229,132,61,5,149,224,246,194,213,61,12,109,44,136,235,95,219,133,220,27,93,36,93,124,180,81,141,152,220,170,163,229,197,124,171,232,48,70,251,106,119,150,20,16,49,119,247,42,132,36,76,254,124,177,66,175,9,1,39,92,127,
195,171,198,34,2,64,144,179,72,40,151,110,89,229,42,125,33,238,16,220,228,51,203,8,1,68,145,253,133,118,93,163,129,22,13,248,65,12,4,63,101,210,70,170,138,203,14,246,54,194,195,27,107,241,175,35,171,49,52,106,121,45,36,152,85,215,132,78,167,34,18,167,245,152,133,134,170,120,182,10,146,191,37,2,205,47,125,20,203,44,88,81,32,150,223,220,218,238,254,30,212,167,221,115,156,82,226,137,220,221,97,3,139,202,33,9,27,26,126,40,215,25,126,9,82,208,49,217,14,161,81,196,61,60,87,254,213,194,81,216,161,151,209,
166,222,230,24,128,117,140,92,4,203,254,170,253,249,88,90,112,226,18,44,122,39,158,158,56,69,204,159,5,179,51,197,233,139,216,102,226,206,248,15,78,112,214,126,67,28,40,38,98,190,178,206,67,94,245,254,160,101,176,32,157,26,132,83,252,228,87,242,32,127,160,112,210,224,133,149,115,41,30,16,200,69,89,81,77,144,12,106,182,73,54,28,53,195,28,216,179,179,136,35,141,102,234,177,240,34,186,106,145,245,3,84,48,251,157,245,11,217,111,227,138,42,67,114,211,177,37,103,16,71,152,72,117,123,36,213,202,56,124,227,
84,8,45,229,149,165,214,69,244,169,55,68,62,94,104,228,74,205,123,222,17,7,172,158,227,74,206,149,67,175,171,251,185,121,151,223,63,35,229,32,49,190,209,120,137,69,213,214,19,150,187,177,28,12,158,153,126,149,171,167,234,120,129,109,32,157,180,75,66,56,233,115,127,230,157,32,34,143,156,31,230,168,174,125,118,195,249,243,165,81,246,10,144,15,103,139,55,173,7,59,136,69,172,54,132,165,140,78,77,230,33,169,129,188,71,209,109,161,8,57,57,199,143,31,164,43,58,130,1,110,145,31,229,13,46,149,94,244,106,76,
238,105,107,1,183,177,10,61,225,94,185,116,58,183,95,225,22,119,19,248,28,13,123,125,108,158,64,184,77,245,153,162,217,227,208,41,185,211,235,41,153,181,54,166,165,11,154,55,21,184,209,192,249,44,164,160,29,229,159,82,156,198,241,183,114,83,137,186,151,148,31,21,197,216,145,32,13,50,22,241,137,39,71,28,142,160,215,107,221,45,202,104,227,110,186,12,150,145,240,51,49,44,196,115,224,238,149,189,134,99,67,241,62,157,240,114,247,195,26,200,141,97,147,249,23,150,174,10,13,219,81,73,58,242,96,250,243,15,
49,218,58,230,104,252,175,150,123,86,185,84,90,198,6,36,0,99,72,28,166,238,115,231,171,249,179,71,174,68,156,227,17,198,79,73,142,99,144,20,80,62,80,191,142,46,71,9,243,6,8,214,116,72,190,106,161,19,185,100,9,187,64,94,86,203,174,156,245,222,95,54,30,148,19,11,50,112,96,61,237,159,173,7,154,127,175,79,48,97,89,78,126,66,171,204,158,195,27,226,205,222,157,89,251,90,125,37,212,27,97,3,141,247,175,50,121,7,187,68,196,181,202,167,189,57,84,81,222,23,27,84,130,176,98,66,240,207,18,23,28,163,163,194,45,
37,129,202,170,97,189,0,81,238,0,39,199,163,35,211,206,247,65,29,116,242,67,102,235,13,136,232,230,114,146,187,7,254,142,26,121,16,237,5,160,201,114,94,178,199,95,212,241,45,112,180,188,72,86,114,189,155,149,149,163,210,112,101,12,69,225,75,202,223,28,242,90,215,156,169,224,245,135,128,92,148,217,131,208,255,25,135,117,136,5,104,185,249,161,228,214,16,105,204,9,182,135,153,220,101,244,160,207,58,182,118,185,240,57,245,123,13,112,182,106,229,220,90,29,86,215,96,147,232,2,55,131,225,137,68,245,89,141,
252,97,3,129,155,216,223,98,116,45,78,85,141,161,74,215,7,150,171,225,59,78,221,152,236,14,117,100,208,158,86,13,185,124,87,157,111,40,187,182,124,173,71,173,23,199,52,155,190,134,11,23,64,25,215,39,115,231,173,77,72,114,54,252,116,178,59,221,106,241,119,254,30,226,241,204,233,113,197,96,146,0,41,67,3,231,126,12,218,202,22,171,114,249,176,134,160,19,216,31,229,118,226,62,242,126,126,42,127,130,68,218,218,81,202,106,217,191,25,177,82,97,81,36,232,137,58,90,216,190,117,235,20,194,144,76,178,27,213,
13,208,18,29,118,126,49,98,203,179,128,237,100,32,242,189,212,6,210,210,188,161,205,13,124,119,13,215,112,41,183,176,215,168,210,182,111,1,115,2,239,141,8,177,124,112,48,197,2,239,11,99,4,36,77,69,47,244,19,153,61,19,2,96,176,7,112,122,131,169,25,189,116,171,49,12,121,162,79,154,74,251,50,233,182,63,180,224,118,49,253,21,20,16,31,144,184,93,174,231,244,183,13,49,225,189,211,73,185,49,110,142,25,226,45,176,233,204,74,33,16,205,88,131,92,157,170,175,68,170,61,53,116,165,16,27,182,160,181,87,241,15,
151,85,107,76,167,129,25,172,127,184,138,153,222,228,125,64,44,45,32,12,227,148,106,152,83,240,166,54,235,32,190,12,242,164,123,189,53,194,141,104,43,202,110,4,168,119,245,232,179,178,198,1,224,87,86,160,31,19,140,233,102,191,204,4,98,138,163,191,106,24,213,47,208,82,137,132,131,16,253,84,25,144,90,159,148,16,196,84,166,61,160,101,229,227,93,118,59,87,66,16,128,59,96,131,250,20,184,150,205,91,227,201,62,35,79,180,172,173,85,197,106,153,238,229,60,204,65,193,230,94,101,177,134,6,165,53,171,142,208,
155,2,11,4,202,127,54,17,142,117,227,121,128,204,192,147,147,92,189,5,224,148,72,18,83,101,126,124,228,153,242,123,229,247,92,221,6,73,227,250,87,167,194,129,187,73,38,185,109,217,240,193,88,50,178,180,151,54,197,187,137,190,166,233,1,103,204,88,31,127,185,29,65,1,29,254,223,14,83,167,215,114,248,30,173,89,173,187,69,5,105,117,15,106,94,173,63,227,25,230,190,136,168,177,175,107,91,126,254,34,188,25,118,48,12,226,130,153,162,57,47,181,212,79,160,97,64,157,246,90,53,43,149,76,102,15,195,107,58,242,
84,172,29,81,198,113,81,251,138,182,154,111,30,171,129,56,17,45,214,153,112,117,203,174,40,38,234,236,32,4,112,225,26,187,195,246,252,9,218,69,160,223,178,54,148,81,8,134,151,75,248,63,224,240,48,75,250,221,85,46,100,50,3,70,64,102,111,160,155,233,59,147,184,57,61,6,126,79,176,16,185,94,166,33,135,78,42,75,140,208,140,44,153,187,64,103,119,160,236,16,239,74,218,219,212,207,110,53,30,76,248,40,111,98,44,20,113,204,233,109,135,96,107,39,163,203,125,45,157,152,71,239,175,174,159,147,80,111,93,38,253,
228,154,225,181,101,12,241,127,65,49,189,5,85,151,237,213,143,14,104,138,54,52,27,4,132,67,35,156,86,157,73,16,229,222,245,110,79,165,179,56,179,53,218,229,100,58,87,149,48,231,64,63,115,67,3,172,6,186,115,154,60,53,214,152,149,89,234,37,143,82,255,64,28,183,93,112,39,70,185,57,0,199,9,61,175,219,41,76,37,176,82,125,65,53,160,214,105,62,153,244,222,96,205,6,178,85,41,240,113,0,96,149,38,3,195,18,152,41,246,3,103,29,110,134,30,101,75,46,103,199,184,20,230,8,55,120,4,229,168,35,43,7,28,161,143,87,27,
87,79,255,186,44,195,158,155,181,119,81,172,217,107,95,98,55,243,186,66,105,48,224,123,232,84,156,20,10,156,208,204,52,34,228,136,97,242,200,246,211,67,202,40,241,91,92,253,9,54,72,131,221,106,178,32,44,182,4,225,193,37,20,249,249,231,10,206,18,71,254,221,187,172,88,204,6,127,138,102,7,208,75,147,219,199,177,79,36,170,101,207,177,109,95,143,217,41,199,80,183,201,2,254,12,55,23,198,14,255,69,245,138,155,129,227,167,168,130,156,135,14,96,93,48,99,143,107,126,92,117,143,112,108,193,228,84,13,41,186,
27,172,92,201,149,116,19,112,197,116,209,128,102,1,55,152,177,28,37,34,50,83,41,199,74,178,59,111,67,118,35,252,36,33,87,28,170,17,215,47,90,154,124,137,15,14,211,59,75,59,30,77,0,49,37,225,191,87,101,127,214,227,160,99,174,234,82,148,235,16,241,219,147,170,127,221,250,116,39,218,156,72,227,172,55,0,79,188,76,51,222,232,24,36,62,94,154,3,61,230,146,114,253,0,128,58,253,90,72,211,242,38,39,133,153,161,119,105,195,152,225,208,105,140,80,217,186,196,157,21,116,230,116,139,25,159,143,118,128,77,201,238,
247,228,15,168,4,133,148,21,148,12,44,241,7,115,17,129,176,202,46,130,122,129,235,141,223,85,21,199,65,181,169,52,174,161,153,62,25,164,115,213,89,138,199,103,79,200,165,135,249,244,27,209,178,240,129,211,61,9,111,157,147,119,36,119,255,110,130,84,49,210,225,247,100,26,121,127,163,160,26,79,99,24,77,65,32,178,109,36,27,253,173,110,183,11,14,211,57,130,254,124,104,165,219,31,70,97,14,194,39,61,26,141,125,228,126,194,184,101,160,204,106,128,144,106,103,171,18,246,129,220,85,172,151,123,5,73,155,192,
175,91,157,239,61,237,116,170,65,233,56,19,49,114,168,190,3,214,53,250,90,213,244,88,101,30,229,248,124,15,71,141,27,172,235,21,129,211,72,61,172,112,170,128,135,96,196,221,255,27,176,105,188,183,121,33,37,149,53,131,226,233,29,167,234,218,109,53,185,152,36,248,53,61,235,78,21,201,214,210,163,12,251,187,45,188,137,126,127,237,92,234,91,240,225,38,194,57,213,251,237,171,30,99,52,14,49,84,101,252,237,7,166,122,114,32,107,32,207,239,136,168,178,12,11,241,233,230,146,132,18,83,233,41,172,17,6,161,42,
113,87,40,255,185,1,146,128,5,240,126,131,71,42,54,124,205,2,122,71,30,222,229,40,134,142,102,97,239,151,177,1,230,231,49,123,219,28,129,91,152,112,13,154,81,197,226,255,112,158,178,177,55,181,108,138,185,245,29,186,21,73,188,209,154,200,89,116,235,198,144,36,87,248,22,7,200,122,7,148,44,42,87,140,238,204,95,231,252,0,136,0,22,39,70,123,125,165,113,227,172,146,163,128,158,36,52,91,19,36,245,27,150,138,141,11,67,239,224,65,24,116,101,7,39,46,142,172,164,243,148,0,33,226,59,47,203,137,156,241,66,250,
157,30,204,101,143,134,98,238,155,226,25,184,136,219,89,100,193,11,143,71,139,243,230,151,0,249,1,78,26,32,93,104,157,67,97,164,248,86,124,146,93,74,222,228,167,55,53,100,135,216,109,13,64,37,106,177,200,200,182,92,251,69,31,243,89,80,198,14,132,203,72,103,28,104,217,24,97,223,113,11,29,178,191,210,46,162,255,68,99,8,237,213,162,152,193,183,121,203,19,108,182,29,86,26,192,103,220,103,205,154,179,197,9,22,73,127,175,146,38,119,210,0,24,180,21,245,215,204,91,186,119,138,183,239,15,155,231,248,133,39,
24,101,144,236,10,230,54,174,227,73,21,110,10,160,241,232,131,14,212,127,232,59,122,65,146,54,163,9,189,190,121,88,170,62,194,14,204,152,245,38,131,37,91,81,72,114,29,115,239,182,56,44,156,159,177,180,82,160,93,97,86,183,236,50,95,85,39,71,181,225,152,143,63,123,117,34,44,109,160,166,229,240,91,138,102,54,180,173,44,50,80,42,124,7,50,124,211,239,21,94,197,185,239,213,107,142,64,95,124,125,17,180,97,189,101,52,48,19,112,12,70,9,212,177,54,118,66,84,147,236,248,26,124,95,103,135,254,124,49,112,186,
99,120,90,8,194,191,88,57,242,65,61,10,104,246,197,252,19,159,58,194,75,173,242,103,8,115,84,69,238,149,26,15,159,182,141,132,119,70,29,53,20,143,46,163,204,6,236,59,45,185,172,89,119,83,38,144,36,222,96,151,26,99,195,163,170,133,92,159,214,53,150,116,90,176,69,145,130,15,172,140,217,215,101,163,115,161,65,101,8,7,183,113,213,134,58,175,130,251,143,173,248,168,135,60,159,30,194,68,208,119,120,2,40,178,227,247,161,77,47,136,46,244,163,72,65,158,25,225,195,61,132,182,204,177,186,200,81,2,65,105,212,
72,94,203,232,217,182,123,251,228,160,1,161,204,123,20,37,1,77,208,179,45,149,181,122,102,190,123,213,164,231,41,216,130,234,248,208,251,252,220,84,209,67,47,61,220,5,142,162,26,236,121,142,248,132,255,65,122,203,196,102,191,187,2,195,127,255,193,92,49,91,186,154,39,156,29,211,172,49,104,245,114,153,223,211,199,249,35,130,160,128,0,152,176,183,20,236,113,193,108,26,255,11,237,102,133,245,94,115,114,10,89,229,214,221,99,149,30,99,37,246,10,26,26,39,92,123,170,73,211,127,227,54,30,86,133,159,112,225,
91,148,100,174,149,75,143,14,140,20,44,64,212,5,243,8,116,63,30,97,42,123,20,73,212,85,207,83,122,27,251,233,84,10,17,236,232,83,200,127,119,143,163,204,220,167,59,231,20,106,186,222,191,8,40,234,21,25,180,13,116,250,152,224,174,75,3,205,38,173,215,236,151,185,121,254,244,154,239,17,53,106,164,61,49,116,216,118,94,150,35,181,26,238,66,49,211,221,132,146,166,115,39,136,36,205,230,179,31,197,51,148,165,109,38,70,37,148,52,44,209,250,98,58,246,225,103,198,101,26,25,196,207,8,166,21,88,252,175,253,10,
88,107,157,19,225,61,12,246,221,37,239,186,167,137,142,135,222,128,174,62,95,216,38,141,157,45,232,97,217,173,203,234,116,129,69,206,189,94,221,12,54,139,186,247,184,16,200,121,244,104,8,7,35,111,47,188,10,140,92,73,143,206,203,72,122,184,20,102,197,130,64,150,63,96,239,8,132,111,217,84,91,198,32,43,100,138,241,15,160,42,190,253,193,184,164,124,29,210,96,67,224,221,182,29,218,129,149,29,128,174,98,88,88,125,56,40,255,120,5,0,87,174,42,150,90,112,201,183,169,19,57,195,191,12,58,244,235,132,25,145,
72,146,214,8,125,100,135,12,5,102,97,248,174,24,159,90,33,43,187,6,61,212,241,225,190,219,252,197,123,129,164,108,123,55,230,4,153,166,105,234,15,85,216,23,56,32,3,41,110,68,146,172,133,202,98,41,7,47,152,35,255,168,106,241,226,222,77,244,52,185,65,252,227,32,66,38,11,172,60,28,28,103,84,1,1,205,182,190,28,189,102,253,43,1,191,148,116,10,227,18,81,93,80,239,157,232,215,180,163,165,161,109,177,71,150,244,144,208,160,110,22,174,60,206,43,103,121,55,103,114,115,173,238,13,10,227,251,41,176,216,158,229,
216,55,234,128,128,20,167,106,181,86,163,130,215,110,149,191,10,227,215,8,214,154,178,181,15,19,0,247,250,97,74,43,157,55,94,174,41,41,9,199,97,20,91,32,18,10,43,98,240,247,203,20,250,117,160,44,229,202,187,64,54,124,15,184,169,129,27,160,240,26,61,255,60,166,60,144,209,84,55,187,186,168,13,124,125,29,17,100,249,227,62,205,78,179,163,168,139,168,21,38,83,239,151,74,43,66,2,92,72,71,94,216,134,238,20,45,158,213,164,73,57,80,47,198,184,130,223,227,71,132,133,235,177,85,174,142,124,172,200,54,229,40,
126,60,76,92,216,153,56,241,174,66,141,90,226,3,30,68,234,71,187,163,112,146,255,22,143,170,204,3,127,179,81,139,160,37,77,246,128,220,196,158,153,73,177,65,199,119,29,197,144,130,248,206,155,253,108,213,124,7,223,221,162,146,134,242,65,99,162,107,120,247,214,207,96,150,169,131,208,218,221,28,24,112,208,23,1,130,142,232,56,104,45,33,158,95,255,123,31,74,76,120,178,155,213,6,195,164,8,8,69,241,197,127,83,169,21,167,19,94,143,252,33,159,248,241,170,153,147,1,149,199,201,131,170,79,236,212,209,143,107,
98,24,123,56,33,193,85,247,64,225,135,210,78,145,57,16,145,71,170,20,133,87,235,4,166,239,100,82,235,81,50,223,9,193,52,49,86,129,190,196,82,165,107,63,115,161,98,33,20,193,29,42,151,205,252,124,72,245,48,181,67,7,13,21,127,59,226,188,144,129,112,244,192,121,213,80,42,196,1,13,107,108,78,0,40,121,225,148,237,234,209,216,238,9,147,226,254,96,89,212,72,193,106,75,135,74,227,67,255,92,191,81,188,124,226,149,152,142,15,159,195,238,114,55,255,166,157,230,59,148,170,166,151,65,213,104,253,253,112,150,82,
147,137,27,214,100,247,65,81,92,47,86,217,7,45,120,81,130,31,236,243,76,78,3,45,105,172,220,71,48,220,94,196,249,163,193,133,50,236,205,20,55,2,63,14,127,69,113,212,204,12,58,79,89,86,29,61,199,201,64,149,6,144,182,150,129,31,18,167,120,248,82,107,25,143,128,27,161,28,25,153,183,217,238,78,186,106,92,27,202,219,165,96,0,216,234,169,73,101,39,182,113,217,240,170,116,172,221,250,233,48,49,242,83,227,92,181,184,72,230,180,21,15,108,135,25,38,153,25,124,227,26,149,73,236,39,211,244,149,58,183,132,26,
223,219,174,144,117,233,219,165,205,157,159,222,184,52,47,241,201,123,65,24,44,55,215,177,168,250,179,115,190,227,123,158,163,179,224,69,196,66,207,254,243,101,221,193,140,250,4,28,222,52,96,138,160,33,218,64,118,214,234,201,152,148,91,178,111,107,144,142,6,182,102,72,188,34,213,181,26,223,58,255,103,81,17,47,169,11,245,224,123,148,215,237,186,107,75,152,90,202,166,22,149,197,5,246,238,78,76,229,106,199,94,127,195,0,45,82,6,159,103,96,138,231,71,46,107,59,216,39,43,12,221,27,214,56,155,145,66,187,
169,250,235,78,211,179,239,183,198,163,93,5,196,24,174,143,225,106,139,89,98,13,127,207,184,194,30,1,165,198,169,8,197,118,86,163,221,138,23,209,61,116,79,99,233,43,130,60,244,85,229,243,172,123,148,200,120,192,127,211,52,11,159,41,95,212,230,188,169,156,137,29,212,12,148,168,148,133,243,44,241,139,127,24,246,220,227,125,209,97,60,52,162,192,146,49,161,92,138,112,189,128,59,126,125,46,207,60,79,231,174,152,209,68,223,205,2,38,14,91,116,159,255,28,27,178,248,164,104,158,79,69,214,234,157,12,75,163,
83,253,245,202,61,213,176,6,197,230,29,208,166,253,194,254,235,29,141,241,70,249,15,62,0,148,163,135,52,122,40,96,87,31,179,152,51,216,133,184,122,198,203,60,115,218,191,193,16,178,25,148,252,112,104,103,252,36,92,221,28,179,43,199,198,151,128,100,252,217,161,249,34,201,172,118,52,180,252,104,7,223,44,116,102,212,21,40,224,184,55,163,210,21,207,161,239,51,54,155,41,133,18,67,48,3,165,130,251,4,79,214,57,72,130,157,212,144],bq=[0,1,3,4,6,7,9,10,12,13,15,16,18,19,21,22,24,26,29,31,34,36,39,41,44,46,
49,51,54,56,59,61,64,65,66,67,68,69,70,72,73,74,75,76,77,79,80,81,82,83,84,85,87,88,89,90,91,92,94,95,96,97,98,99,101,102,103,104,105,106,107,109,110,111,112,113,114,116,117,118,119,120,121,123,124,125,126,127,128,129,131,132,133,134,135,136,138,139,140,141,142,143,145,146,147,148,149,150,151,153,154,155,156,157,158,160,161,162,163,164,165,166,168,169,170,171,172,173,175,176,177,178,179,180,182,183,184,185,186,187,188,190,191,192,193,194,195,197,198,199,200,201,202,204,205,206,207,208,209,210,212,
213,214,215,216,217,219,220,221,222,223,224,226,226,226,227,227,227,228,228,228,229,229,229,230,230,231,231,231,232,232,232,233,233,233,234,234,235,235,235,236,236,236,237,237,237,238,238,239,239,239,240,240,240,241,241,241,242,242,243,243,243,244,244,244,245,245,245,246,246,246,247,247,247,248,248,248,249,249,249,250,250,250,251,251,251,252,252,252,253,253,253,254,254,254,255],ol=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,32,33,35,36,37,39,40,42,43,44,46,
47,49,50,51,53,54,56,57,58,59,61,62,63,64,66,67,68,69,71,72,73,74,76,77,78,79,81,82,83,84,86,87,88,90,91,92,93,95,96,97,98,100,101,102,103,105,106,107,108,110,111,112,113,115,116,117,118,120,121,122,124,125,126,127,129,130,131,132,134,135,136,137,139,140,141,142,144,145,146,147,149,150,151,152,154,155,156,158,159,160,161,163,164,165,166,168,169,170,171,173,174,175,176,178,179,180,181,183,184,185,186,188,189,190,192,193,194,195,197,198,199,200,202,203,204,205,207,208,209,210,212,213,214,215,217,218,
219,220,222,223,224,226,226,226,227,227,228,228,229,229,230,230,231,231,232,232,233,233,234,234,234,235,235,236,236,237,237,238,238,239,239,240,240,241,241,242,242,243,243,243,244,244,244,245,245,245,246,246,246,247,247,247,248,248,248,249,249,249,250,250,250,251,251,251,252,252,252,253,253,253,254,254,254,255],cq=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,35,36,37,38,39,40,41,43,44,45,46,47,48,50,51,52,53,54,55,56,58,59,60,61,62,63,65,66,67,68,69,70,72,
73,74,76,77,78,80,81,83,84,85,87,88,89,91,92,94,95,96,98,99,100,102,103,105,106,107,109,110,111,113,114,116,117,118,120,121,122,124,125,127,128,129,131,132,133,135,136,138,139,140,142,143,144,146,147,149,150,151,153,154,155,157,158,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,192,193,193,194,195,195,196,197,197,198,199,199,200,201,201,202,203,203,204,205,205,206,207,207,208,209,209,210,211,211,212,213,213,214,215,
215,216,217,217,218,219,219,220,221,221,222,223,223,224,225,225,226,227,227,228,229,229,230,231,231,232,233,233,234,235,235,236,237,237,238,239,239,240,241,241,242,243,243,244,245,245,246,247,247,248,249,249,250,251,251,252,253,253,254,255];class dq extends Yb{constructor(a,b,d,e){super(a,aq,d,e);this.lightLevel=.1;this.rednessLevel=.5;this.mskin_he_max=175/180*3.141593;this.mskin_he_min=115/180*3.141593;this.mskin_hc_max=173/180*3.141593;this.mskin_hc_min=116/180*3.141593;this.mskin_hc_axis=2.04203545;
this.mfacts_rotate_ge=this.mfacts_rotate_le=this.mfacts_rotate_c=0;this.tab_addr=null;this.lutTextures=[];this.inputTexture=b;this.init()}setUniforms(){var a=this.gl.getUniformLocation(this.program,"u_flipY"),b=this.gl.getUniformLocation(this.program,"u_denoiseLevel");this.gl.uniform1f(b,this.denoiseLevel);this.gl.uniform1f(a,1);a=this.gl.getUniformLocation(this.program,"light");this.gl.uniform1f(a,this.lightLevel);a=this.gl.getUniformLocation(this.program,"redness");this.gl.uniform1f(a,this.rednessLevel);
a=this.gl.getUniformLocation(this.program,"skin_he_max");b=this.gl.getUniformLocation(this.program,"skin_he_min");var d=this.gl.getUniformLocation(this.program,"skin_hc_max"),e=this.gl.getUniformLocation(this.program,"skin_hc_min");let f=this.gl.getUniformLocation(this.program,"skin_hc_axis"),g=this.gl.getUniformLocation(this.program,"facts_rotate_c"),k=this.gl.getUniformLocation(this.program,"facts_rotate_le"),h=this.gl.getUniformLocation(this.program,"facts_rotate_ge");this.gl.uniform1f(a,this.mskin_he_max);
this.gl.uniform1f(b,this.mskin_he_min);this.gl.uniform1f(d,this.mskin_hc_max);this.gl.uniform1f(e,this.mskin_hc_min);this.gl.uniform1f(f,this.mskin_hc_axis);this.gl.uniform1f(g,this.mfacts_rotate_c);this.gl.uniform1f(k,this.mfacts_rotate_le);this.gl.uniform1f(h,this.mfacts_rotate_ge);a=this.gl.getUniformLocation(this.program,"u_originImage");this.gl.activeTexture(this.gl.TEXTURE2);this.gl.bindTexture(this.gl.TEXTURE_2D,this.inputTexture);this.gl.uniform1i(a,2);a=["lighten_lut"];b=[this.gl.TEXTURE3];
for(d=0;d<a.length;d++)e=this.gl.getUniformLocation(this.program,a[d]),this.gl.activeTexture(b[d]),this.gl.bindTexture(this.gl.TEXTURE_2D,this.lutTextures[d]),this.gl.uniform1i(e,d+3)}setParameters(a){void 0!==a.denoiseLevel&&(this.denoiseLevel=a.denoiseLevel);void 0!==a.lightLevel&&(this.lightLevel=a.lightLevel);void 0!==a.rednessLevel&&(this.rednessLevel=a.rednessLevel,this.updateRedness(this.rednessLevel));a.lighteningContrastLevel&&this.updateLut(a.lighteningContrastLevel)}init(){this.tab_addr=
new Uint8Array(ol);let a=[this.tab_addr],b=[256],d=[1];for(let e=0;e<a.length;e++){let f=this.gl.createTexture();if(!f)throw new n(m.WEBGL_INTERNAL_ERROR,"create lut texture failed");this.gl.bindTexture(this.gl.TEXTURE_2D,f);this.gl.texImage2D(this.gl.TEXTURE_2D,0,this.gl.LUMINANCE,b[e],d[e],0,this.gl.LUMINANCE,this.gl.UNSIGNED_BYTE,a[e]);this.gl.texParameteri(this.gl.TEXTURE_2D,this.gl.TEXTURE_WRAP_S,this.gl.CLAMP_TO_EDGE);this.gl.texParameteri(this.gl.TEXTURE_2D,this.gl.TEXTURE_WRAP_T,this.gl.CLAMP_TO_EDGE);
this.gl.texParameteri(this.gl.TEXTURE_2D,this.gl.TEXTURE_MIN_FILTER,this.gl.LINEAR);this.gl.texParameteri(this.gl.TEXTURE_2D,this.gl.TEXTURE_MAG_FILTER,this.gl.LINEAR);this.lutTextures.push(f)}}updateRedness(a){var b=a;1<a&&(a=1);0>a&&(a=0);1<b&&(b=1);0>b&&(b=0);this.mfacts_rotate_c=.8*a;.8>b&&(b=0);this.mskin_he_max=175/180*3.141593;this.mskin_hc_max=173/180*3.141593;this.mskin_he_min=(115-4*b)/180*3.141593;this.mskin_hc_min=(116-4*b)/180*3.141593;this.mskin_hc_axis=(117-4*b)/180*3.141593;this.mskin_hc_axis<
this.mskin_hc_min&&(this.mskin_hc_axis=this.mskin_hc_min);1.5707965>this.mskin_hc_min&&(this.mskin_hc_min=1.5707965);1.5707965>this.mskin_hc_axis&&(this.mskin_hc_axis=1.5707965);1.5707965>this.mskin_he_min&&(this.mskin_he_min=1.5707965);3.141593<this.mskin_hc_max&&(this.mskin_hc_max=3.141593);3.141593<this.mskin_hc_axis&&(this.mskin_hc_axis=3.141593);3.141593<this.mskin_he_max&&(this.mskin_he_max=3.141593);a=this.mskin_he_max-this.mskin_hc_max;b=this.mskin_hc_max-this.mskin_hc_axis;this.mfacts_rotate_ge=
.01<a?this.mfacts_rotate_c*b/a:this.mfacts_rotate_c;a=this.mskin_hc_min-this.mskin_he_min;b=this.mskin_hc_axis-this.mskin_hc_min;this.mfacts_rotate_le=.01<a?this.mfacts_rotate_c*b/a:this.mfacts_rotate_c}updateLut(a){var b=null;if(0===a&&(b=ol),1===a&&(b=cq),2===a&&(b=bq),!b)throw new n(m.WEBGL_INTERNAL_ERROR,"invalid ylut_table value:"+a);this.tab_addr=new Uint8Array(b);a=[this.tab_addr];b=[256];let d=[1];for(let e=0;e<a.length;e++)this.gl.bindTexture(this.gl.TEXTURE_2D,this.lutTextures[e]),this.gl.texImage2D(this.gl.TEXTURE_2D,
0,this.gl.LUMINANCE,b[e],d[e],0,this.gl.LUMINANCE,this.gl.UNSIGNED_BYTE,a[e])}}class eq{constructor(){this.canvas=this.gl=null;this.programs=[];this.inputTexture=this.commonProgram=null;this.outputTextures=[];this.fbos=[];this.originalFrameHeight=this.originalFrameWidth=0;this.enableBeauty=!1;this.denoiseLevel=5;this.lightLevel=.35;this.rednessLevel=.5;this.lighteningContrastLevel=1}setEnableBeauty(a){this.enableBeauty=!!a}init(a,b,d){if(!ca.supportWebGL)throw new n(m.NOT_SUPPORTED,"your browser is not support webGL");
if(this.gl=d.getContext("webgl"),!this.gl)throw new n(m.WEBGL_INTERNAL_ERROR,"can not get webgl context");if(this.initGL(a,b),!this.inputTexture)throw new n(m.WEBGL_INTERNAL_ERROR,"can not find input texture");this.canvas=d;this.programs.push(new nl(this.gl));this.programs.push(new Wp(this.gl,a,b));this.programs.push(new Yp(this.gl,a,b));this.programs.push(new $p(this.gl,a,b));this.programs.push(new dq(this.gl,this.inputTexture,a,b));this.commonProgram=this.programs[0].program;this.setDenoiseLevel(this.denoiseLevel);
this.setLightLevel(this.lightLevel);this.setRednessLevel(this.rednessLevel);this.setContrastLevel(this.lighteningContrastLevel)}render(a){if(!this.gl||!this.commonProgram||!this.canvas)return void h.warning("video effect manager is not init!");var b=0;if(this.originalFrameHeight===a.videoWidth&&this.originalFrameWidth===a.videoHeight)b=2;else if(this.originalFrameHeight!==a.videoHeight||this.originalFrameWidth!==a.videoWidth){var d,e,f;if(h.debug(p(d=p(e=p(f="beauty effect: resolution changed ".concat(this.originalFrameWidth,
"x")).call(f,this.originalFrameHeight," -> ")).call(e,a.videoWidth,"x")).call(d,a.videoHeight)),0===a.videoHeight||0===a.videoWidth)return void h.debug("beauty effect: skip 0 resolution frame");this.canvas.width=a.videoWidth;this.canvas.height=a.videoHeight;a.setAttribute("width",a.videoWidth.toString());a.setAttribute("height",a.videoHeight.toString());this.release();this.init(a.videoWidth,a.videoHeight,this.canvas)}this.gl.viewport(0,0,a.videoWidth,a.videoHeight);this.gl.bindTexture(this.gl.TEXTURE_2D,
this.inputTexture);this.gl.texImage2D(this.gl.TEXTURE_2D,0,this.gl.RGBA,this.gl.RGBA,this.gl.UNSIGNED_BYTE,a);a=this.enableBeauty?this.programs.length-1:0;for(d=0;d<=a;d++)e=this.programs[d].program,this.gl.useProgram(e),e=this.gl.getUniformLocation(e,"u_image"),this.programs[d].setUniforms(),this.gl.bindFramebuffer(this.gl.FRAMEBUFFER,this.fbos[b+d%2]),this.gl.clearColor(0,0,0,1),this.gl.clear(this.gl.COLOR_BUFFER_BIT),this.gl.drawArrays(this.gl.TRIANGLES,0,6),this.gl.activeTexture(this.gl.TEXTURE0),
this.gl.bindTexture(this.gl.TEXTURE_2D,this.outputTextures[b+d%2]),this.gl.uniform1i(e,0);this.gl.useProgram(this.commonProgram);b=this.gl.getUniformLocation(this.commonProgram,"u_flipY");this.gl.uniform1f(b,-1);this.gl.bindFramebuffer(this.gl.FRAMEBUFFER,null);this.gl.clearColor(0,0,0,1);this.gl.clear(this.gl.COLOR_BUFFER_BIT);this.gl.drawArrays(this.gl.TRIANGLES,0,6)}setDenoiseLevel(a){var b;r(b=this.programs).call(b,b=>{b instanceof Yb&&b.setParameters({denoiseLevel:a})});this.denoiseLevel=a}setLightLevel(a){var b;
r(b=this.programs).call(b,b=>{b instanceof Yb&&b.setParameters({lightLevel:a})});this.lightLevel=a}setRednessLevel(a){var b;r(b=this.programs).call(b,b=>{b instanceof Yb&&b.setParameters({rednessLevel:a})});this.rednessLevel=a}setContrastLevel(a){var b;r(b=this.programs).call(b,b=>{b instanceof Yb&&b.setParameters({lighteningContrastLevel:a})});this.lighteningContrastLevel=a}setSize(a,b){var d;r(d=this.programs).call(d,d=>{d instanceof Yb&&d.setSize(a,b)})}release(){this.inputTexture=this.commonProgram=
this.gl=null;this.programs=[];this.outputTextures=[];this.fbos=[]}initGL(a,b){if(!this.gl)throw new n(m.WEBGL_INTERNAL_ERROR,"can not find webgl context");this.inputTexture=this.gl.createTexture();this.gl.bindTexture(this.gl.TEXTURE_2D,this.inputTexture);this.gl.texParameteri(this.gl.TEXTURE_2D,this.gl.TEXTURE_WRAP_S,this.gl.CLAMP_TO_EDGE);this.gl.texParameteri(this.gl.TEXTURE_2D,this.gl.TEXTURE_WRAP_T,this.gl.CLAMP_TO_EDGE);this.gl.texParameteri(this.gl.TEXTURE_2D,this.gl.TEXTURE_MIN_FILTER,this.gl.LINEAR);
this.gl.texParameteri(this.gl.TEXTURE_2D,this.gl.TEXTURE_MAG_FILTER,this.gl.LINEAR);for(let d=0;4>d;d++){let e=this.gl.createTexture();if(!e)throw new n(m.WEBGL_INTERNAL_ERROR,"create texture failed");this.gl.bindTexture(this.gl.TEXTURE_2D,e);this.gl.texParameteri(this.gl.TEXTURE_2D,this.gl.TEXTURE_WRAP_S,this.gl.CLAMP_TO_EDGE);this.gl.texParameteri(this.gl.TEXTURE_2D,this.gl.TEXTURE_WRAP_T,this.gl.CLAMP_TO_EDGE);this.gl.texParameteri(this.gl.TEXTURE_2D,this.gl.TEXTURE_MIN_FILTER,this.gl.LINEAR);
2>d?this.gl.texImage2D(this.gl.TEXTURE_2D,0,this.gl.RGBA,a,b,0,this.gl.RGBA,this.gl.UNSIGNED_BYTE,null):this.gl.texImage2D(this.gl.TEXTURE_2D,0,this.gl.RGBA,b,a,0,this.gl.RGBA,this.gl.UNSIGNED_BYTE,null);let f=this.gl.createFramebuffer();if(!f)throw new n(m.WEBGL_INTERNAL_ERROR,"create frame buffer failed");this.gl.bindFramebuffer(this.gl.FRAMEBUFFER,f);this.gl.framebufferTexture2D(this.gl.FRAMEBUFFER,this.gl.COLOR_ATTACHMENT0,this.gl.TEXTURE_2D,e,0);this.outputTextures.push(e);this.fbos.push(f)}this.gl.viewport(0,
0,a,b);this.originalFrameWidth=a;this.originalFrameHeight=b}}class fq{constructor(){this.recordedFrameCount=this.targetFrameRate=0;this.recordingTime=2}async startRecordBeautyEffectOutput(a,b=4){if(this.recordID)throw new n(m.UNEXPECTED_ERROR,"another beauty effect recording is in progress");let d=sa(6,"");return this.recordID=d,this.targetFrameRate=a,this.recordedFrameCount=0,this.recordingTime=b,await Gb(1E3*this.recordingTime),this.recordID!==d?(this.recordID=void 0,!0):(this.recordID=void 0,this.recordedFrameCount<
this.targetFrameRate*this.recordingTime/2?(h.warning("detect beauty effect overload, current framerate",this.recordedFrameCount/2),!1):(h.debug("beauty effect current framerate",this.recordedFrameCount/2),!0))}stopRecordBeautyEffectOutput(){this.recordedFrameCount=this.targetFrameRate=0;this.recordID=void 0}addFrame(){this.recordID&&(this.recordedFrameCount+=1)}}class gq extends Sp{constructor(){super();this.kind="video";this.fps=15;this.overloadDetector=new fq;this.enabled=!1;this.stopChromeBackgroundLoop=
null;this.lastRenderTime=0;this.fps=30;this.manager=new eq}async setBeautyEffectOptions(a,b){void 0!==b.smoothnessLevel&&W(b.smoothnessLevel,"options.smoothnessLevel",0,1,!1);void 0!==b.lighteningLevel&&W(b.lighteningLevel,"options.lighteningLevel",0,1,!1);void 0!==b.rednessLevel&&W(b.rednessLevel,"options.rednessLevel",0,1,!1);void 0!==b.lighteningContrastLevel&&Ua(b.lighteningContrastLevel,"options.lighteningContrastLevel",[0,1,2]);void 0!==b.smoothnessLevel&&this.manager.setDenoiseLevel(Math.max(.1,
10*b.smoothnessLevel));void 0!==b.lighteningLevel&&this.manager.setLightLevel(Math.max(.1,b.lighteningLevel/2));void 0!==b.rednessLevel&&this.manager.setRednessLevel(Math.max(.01,b.rednessLevel));void 0!==b.lighteningContrastLevel&&this.manager.setContrastLevel(b.lighteningContrastLevel);this.enabled!==a&&(this.manager.setEnableBeauty(a),this.enabled=a,a?this.input&&await this.startEffect():await this.stopEffect())}destroy(){this.onOutputChange=void 0;this.stopEffect();this.enabled=!1}async startEffect(){let a=
qa();if(!this.input)return void h.warning("video track is null, fail to start video effect!");if(this.output)return void h.warning("video effect is already enabled");let b=await this.renderWithWebGL();await this.updateOutput(b);h.info("start video effect, output:",this.output);this.overloadDetector.startRecordBeautyEffectOutput(this.fps).then(a=>{a||this.onOverload&&this.onOverload()});let d=()=>{requestAnimationFrame(d);const a=v(),b=1E3/this.fps,g=this.lastRenderTime?a-this.lastRenderTime:b;g<b||
(this.lastRenderTime=a-(g-b),this.video&&this.video.paused&&this.video.play(),this.enabled&&this.video&&(this.manager.render(this.video),this.output&&this.output.requestFrame&&this.output.requestFrame(),this.overloadDetector.addFrame()))};requestAnimationFrame(d);a.name===ba.CHROME&&document.addEventListener("visibilitychange",()=>{document.hidden?this.stopChromeBackgroundLoop=cf(()=>{this.enabled&&this.video&&this.manager.render(this.video);this.output&&this.output.requestFrame&&this.output.requestFrame();
this.overloadDetector.addFrame()},this.fps):this.stopChromeBackgroundLoop&&(this.stopChromeBackgroundLoop(),this.stopChromeBackgroundLoop=null)},!1)}async stopEffect(){h.info("stop video effect");this.overloadDetector.stopRecordBeautyEffectOutput();this.manager.release();this.canvas&&this.canvas.remove();this.video&&this.video.remove();this.video=this.canvas=void 0;await this.updateOutput(void 0)}async _setInput(a){this.enabled&&!this.video&&await this.startEffect()}_removeInput(){this.stopEffect()}async renderWithWebGL(){var a;
if(!this.input)throw new n(m.BEAUTY_PROCESSOR_INTERNAL_ERROR,"can not renderWithWebGL, no input");this.canvas&&(this.canvas.remove(),this.canvas=void 0);this.video&&(this.video.remove(),this.video=void 0);this.canvas=document.createElement("canvas");this.video=document.createElement("video");this.video.setAttribute("autoplay","");this.video.setAttribute("muted","");this.video.muted=!0;this.video.setAttribute("playsinline","");this.video.setAttribute("style","display:none");this.video.srcObject=new MediaStream([this.input]);
let b=new x(a=>{const b=()=>{this.video&&this.video.removeEventListener("playing",b);a()};this.video&&this.video.addEventListener("playing",b)}),d=this.input.getSettings(),e=d.width,f=d.height;if(d.frameRate&&this.fps!==d.frameRate&&(this.fps=d.frameRate,h.debug("beauty video processor: set fps to",this.fps)),h.debug(p(a="beauty video processor: width ".concat(e," height ")).call(a,f)),!e||!f)throw new n(m.BEAUTY_PROCESSOR_INTERNAL_ERROR,"can not get track resolution");this.canvas.width=e;this.canvas.height=
f;this.video.setAttribute("width",e.toString());this.video.setAttribute("height",f.toString());this.manager.init(e,f,this.canvas);this.video.play();await b;return this.canvas.captureStream(ca.supportRequestFrame?0:this.fps).getVideoTracks()[0]}}class Ta extends Ae{constructor(a,b,d,e){super(a,e);this.trackMediaType="video";this._enabled=!0;cd(a).then(([a,b])=>{this._videoHeight=b;this._videoWidth=a}).catch(tg);this._encoderConfig=b;this._optimizationMode=d}get isPlaying(){return!!this._player}play(a,
b={}){let d=t.reportApiInvoke(null,{tag:C.TRACER,name:A.LOCAL_VIDEO_TRACK_PLAY,options:[this.getTrackId(),"string"==typeof a?a:"HTMLElement",b]});if(!(a instanceof HTMLElement)){let b=document.getElementById(a.toString());var e;b?a=b:(h.warning(p(e="[track-".concat(this.getTrackId(),'] can not find "#')).call(e,a,'" element, use document.body')),a=document.body)}h.debug("[track-".concat(this.getTrackId(),"] start video playback"),z(b));a=Td({},this._getDefaultPlayerConfig(),{},b,{trackId:this.getTrackId(),
element:a});this._player?this._player.updateConfig(a):(this._player=new ll(a),this._player.updateVideoTrack(this._mediaStreamTrack));this._player.play();d.onSuccess()}stop(){let a=t.reportApiInvoke(null,{tag:C.TRACER,name:A.LOCAL_VIDEO_TRACK_STOP,options:[this.getTrackId()]});if(!this._player)return a.onSuccess();this._player.destroy();this._player=void 0;h.debug("[track-".concat(this.getTrackId(),"] stop video playback"));a.onSuccess()}async setEnabled(a){if(a!==this._enabled){h.info("[".concat(this.getTrackId(),
"] start setEnabled"),a);var b=await this._enabledMutex.lock();if(!a){this._originMediaStreamTrack.enabled=!1;try{await Xa(this,L.NEED_REMOVE_TRACK,this)}catch(d){throw h.error("[".concat(this.getTrackId(),"] setEnabled to false error"),d.toString()),b(),d;}return this._enabled=!1,h.info("[".concat(this.getTrackId(),"] setEnabled to false success")),b()}this._originMediaStreamTrack.enabled=!0;try{await Xa(this,L.NEED_ADD_TRACK,this)}catch(d){throw h.error("[".concat(this.getTrackId(),"] setEnabled to true error"),
d.toString()),b(),d;}h.info("[".concat(this.getTrackId(),"] setEnabled to true success"));this._enabled=!0;b()}}getStats(){fd(()=>{h.warning("[deprecated] LocalVideoTrack.getStats will be removed in the future, use AgoraRTCClient.getLocalVideoStats instead")},"localVideoTrackGetStatsWarning");return jc(this,L.GET_STATS)||Td({},xe)}async setBeautyEffect(a,b={}){let d=t.reportApiInvoke(null,{tag:C.TRACER,name:A.LOCAL_VIDEO_TRACK_BEAUTY,options:[this.getTrackId(),a,b]});if(a||this._videoBeautyProcessor){if(qa().os===
X.IOS||qa().os===X.ANDROID)throw a=new n(m.INVALID_OPERATION,"can not enable beauty effect on mobile device"),d.onError(a),a;if(!this._enabled&&a)throw a=new n(m.TRACK_IS_DISABLED,"can not enable beauty effect when track is disabled"),d.onError(a),a;h.info("[".concat(this.getTrackId(),"] start setBeautyEffect"),a,z(b));try{this._videoBeautyProcessor?await this._videoBeautyProcessor.setBeautyEffectOptions(a,b):(this._videoBeautyProcessor=new gq,this._videoBeautyProcessor.onOverload=()=>{eb(()=>this.emit(xd.BEAUTY_EFFECT_OVERLOAD))},
await this._videoBeautyProcessor.setBeautyEffectOptions(a,b),await this._registerTrackProcessor(this._videoBeautyProcessor))}catch(e){throw h.error("[".concat(this.getTrackId(),"] setBeautyEffect error"),e.toString()),d.onError(e),e;}h.info("[".concat(this.getTrackId(),"] setBeautyEffect success"));d.onSuccess()}}getCurrentFrameData(){return this._player?this._player.getCurrentFrame():new ImageData(2,2)}clone(a,b,d){let e=this._mediaStreamTrack.clone();return new Ta(e,a,b,d)}async setOptimizationMode(a){var b;
if("motion"===a||"detail"===a||"balanced"===a){try{await Xa(this,L.SET_OPTIMIZATION_MODE,a)}catch(d){throw h.error("[".concat(this.getTrackId(),"] set optimization mode failed"),d.toString()),d;}this._optimizationMode=a;h.info(p(b="[".concat(this.getTrackId(),"] set optimization mode success (")).call(b,a,")"))}else h.error(m.INVALID_PARAMS,"optimization mode must be motion, detail or balanced")}_updatePlayerSource(){this._player&&this._player.updateVideoTrack(this._mediaStreamTrack)}_getDefaultPlayerConfig(){return{fit:"contain"}}}
class pl extends Ta{constructor(a,b,d,e,f){super(a,b.encoderConfig?xc(b.encoderConfig):{},e,f);this._enabled=!0;this._deviceName="default";this._config=b;this._constraints=d;this._deviceName=a.label;this._config.encoderConfig&&(this._encoderConfig=xc(this._config.encoderConfig))}async setDevice(a){var b;let d=t.reportApiInvoke(null,{tag:C.TRACER,name:A.CAM_VIDEO_TRACK_SET_DEVICE,options:[this.getTrackId(),a]});if(h.info(p(b="[track-".concat(this.getTrackId(),"] set device to ")).call(b,a)),this._enabled)try{let d=
await ib.getDeviceById(a);b={};b.video=Td({},this._constraints);b.video.deviceId={exact:a};b.video.facingMode=void 0;this._originMediaStreamTrack.stop();let f=null;try{f=await Hb(b,this.getTrackId())}catch(g){throw h.error("[".concat(this.getTrackId(),"] setDevice failed"),g.toString()),f=await Hb({video:this._constraints},this.getTrackId()),await this._updateOriginMediaStreamTrack(f.getVideoTracks()[0],!1),g;}await this._updateOriginMediaStreamTrack(f.getVideoTracks()[0],!1);cd(this._originMediaStreamTrack).then(([a,
b])=>{this._videoHeight=b;this._videoWidth=a});this._deviceName=d.label;this._config.cameraId=a;this._constraints.deviceId={exact:a}}catch(e){throw d.onError(e),h.error("[".concat(this.getTrackId(),"] setDevice error"),e.toString()),e;}else try{this._deviceName=(await ib.getDeviceById(a)).label,this._config.cameraId=a,this._constraints.deviceId={exact:a}}catch(e){throw d.onError(e),h.error("[track-".concat(this.getTrackId(),"] setDevice error"),e.toString()),e;}h.info("[".concat(this.getTrackId(),
"] setDevice success"));d.onSuccess()}async setEnabled(a){if(a!==this._enabled){h.info("[".concat(this.getTrackId(),"] start setEnabled"),a);var b=await this._enabledMutex.lock();if(!a){this._originMediaStreamTrack.onended=null;this._originMediaStreamTrack.stop();this._enabled=!1;try{await Xa(this,L.NEED_REMOVE_TRACK,this)}catch(e){throw h.error("[".concat(this.getTrackId(),"] setEnabled to false error"),e.toString()),b(),e;}return h.info("[".concat(this.getTrackId(),"] setEnabled to false success")),
b()}a=Td({},this._constraints);var d=ib.searchDeviceIdByName(this._deviceName);d&&!a.deviceId&&(a.deviceId={exact:d});try{let a=await Hb({video:this._constraints},this.getTrackId());await this._updateOriginMediaStreamTrack(a.getVideoTracks()[0],!1);await Xa(this,L.NEED_ADD_TRACK,this)}catch(e){throw h.error("[".concat(this.getTrackId(),"] setEnabled true error"),e.toString()),b(),e;}cd(this._originMediaStreamTrack).then(([a,b])=>{this._videoHeight=b;this._videoWidth=a});h.info("[".concat(this.getTrackId(),
"] setEnabled to true success"));this._enabled=!0;b()}}async setEncoderConfiguration(a){let b=t.reportApiInvoke(null,{tag:C.TRACER,name:A.CAM_VIDEO_TRACK_SET_ENCODER_CONFIG,options:[this.getTrackId(),a]});if(!this._enabled)throw a=new n(m.TRACK_IS_DISABLED,"can not set encoder configuration when track is disabled"),b.onError(a),a;a=xc(a);let d=JSON.parse(z(this._config));d.encoderConfig=a;let e=mf(d);h.debug("[".concat(this.getTrackId(),"] setEncoderConfiguration applyConstraints"),z(a),z(e));try{await this._originMediaStreamTrack.applyConstraints(e),
cd(this._originMediaStreamTrack).then(([a,b])=>{this._videoHeight=b;this._videoWidth=a})}catch(f){throw a=new n(m.UNEXPECTED_ERROR,f.toString()),h.error("[track-".concat(this.getTrackId(),"] applyConstraints error"),a.toString()),b.onError(a),a;}this._config=d;this._constraints=e;this._encoderConfig=a;try{await Xa(this,L.NEED_RENEGOTIATE)}catch(f){return b.onError(f),f.throw()}b.onSuccess()}_getDefaultPlayerConfig(){return{mirror:!0,fit:"cover"}}}class ql extends kl{constructor(a,b,d,e){super(b,b.stringUid||
b.uid);this.type="pub";this.detecting=!1;this.renegotiateWithGateway=async()=>(h.debug("[pc-".concat(this.pc.ID,"] renegotiate start")),new x(async(a,b)=>{this.connectionState="connecting";let d=e=>{"connected"===e&&(this.off(H.CONNECTION_STATE_CHANGE,d),a());"disconnected"===e&&(this.off(H.CONNECTION_STATE_CHANGE,d),b(new n(m.OPERATION_ABORTED,"renegotiate abort")))};this.on(H.CONNECTION_STATE_CHANGE,d);var e=await this.pc.createOfferSDP();this.audioTrack&&this.audioTrack._encoderConfig&&(e=nf(e,
this.audioTrack._encoderConfig));await this.pc.setOfferSDP(e);let f=await Na(this,H.NEED_RENEGOTIATE,e);e=zm(e,this.updateAnswerSDP(f.sdp));await this.pc.setAnswerSDP(e);h.debug("[pc-".concat(this.pc.ID,"] renegotiate success"));this.connectionState="connected"}));this.handleStreamRenegotiate=(a,b)=>{"connected"===this.connectionState?this.renegotiateWithGateway().then(a).catch(b):a()};this.handleReplaceTrack=(a,b,d)=>{if(this.audioTrack instanceof Uc&&"audio"===a.kind)return x.resolve();this.pc.replaceTrack(a).then(a=>
a?this.renegotiateWithGateway():x.resolve()).then(b).catch(d)};this.handleCloseAudioTrack=a=>{};this.handleCloseVideoTrack=()=>{this.lowStreamConnection&&this.lowStreamConnection.videoTrack&&this.lowStreamConnection.videoTrack.close()};this.handleGetSessionID=a=>{a(this.joinInfo.sid)};this.handleGetLocalVideoStats=a=>{a(this.statsCollector.getLocalVideoTrackStats(this.connectionId))};this.handleGetLocalAudioStats=a=>{a(this.statsCollector.getLocalAudioTrackStats(this.connectionId))};this.handleSetOptimizationMode=
(a,b,d)=>{this.pc.setRtpSenderParameters({},"detail"===a?"maintain-resolution":"motion"===a?"maintain-framerate":a).then(b).catch(d)};this.isLowStreamConnection=!!e;this.codec=d;this.statsCollector=a;this.statsCollector.addLocalConnection(this)}getAllTracks(){let a=[];return this.videoTrack&&a.push(this.videoTrack),this.audioTrack&&this.audioTrack instanceof Uc?a=p(a).call(a,this.audioTrack.trackList):this.audioTrack&&a.push(this.audioTrack),a}async addTracks(a){let b=ca;if("connecting"===this.connectionState)try{return await this.createWaitConnectionConnectedPromise(),
await this.addTracks(a)}catch(g){throw new n(m.OPERATION_ABORTED,"publish abort");}var d=!1;let e=this.getAllTracks();a=Oh(a=P(a).call(a,a=>-1===D(e).call(e,a)));for(let e=0;e<a.length;e+=1){var f=a[e];if(!(f instanceof Ae))return(new n(m.INVALID_LOCAL_TRACK)).throw();if(f instanceof Ta&&this.disabledVideoTrack){if(this.disabledVideoTrack!==f)return(new n(m.EXIST_DISABLED_VIDEO_TRACK)).throw();this.disabledVideoTrack=void 0}if(f instanceof Ta&&this.videoTrack)return(new n(m.CAN_NOT_PUBLISH_MULTIPLE_VIDEO_TRACKS)).throw();
if(f instanceof db&&this.audioTrack)if(this.audioTrack instanceof Uc)this.audioTrack.addAudioTrack(f);else{if(!b.webAudioMediaStreamDest)throw new n(m.NOT_SUPPORTED,"your browser is not support audio mixing");d=new Uc;d.addAudioTrack(this.audioTrack);d.addAudioTrack(f);d=await this.addTrackWithPC(d)}else f instanceof Ta&&this.isLowStreamConnection?(d=this.lowStreamParameter||{width:160,height:120,framerate:15,bitrate:50},b.supportDualStreamEncoding?(h.debug("[".concat(this.connectionId,"] creating low stream using rtp encoding.")),
this.lowStreamEncoding=Rl(d,f),f=f.clone({bitrateMax:d.bitrate,bitrateMin:d.bitrate})):(h.debug("[".concat(this.connectionId,"] creating low stream using canvas.")),f=Am(f,d),f=new Ta(f,{bitrateMax:d.bitrate,bitrateMin:d.bitrate})),f._hints.push(qb.LOW_STREAM),d=await this.addTrackWithPC(f)):(this.detecting=!0,Fc(()=>{this.detecting=!1},8E3),d=await this.addTrackWithPC(f))}d&&await this.renegotiateWithGateway();r(a).call(a,a=>this.bindTrackEvents(a))}async removeTracks(a,b){let d=this.getAllTracks();
a=Oh(a=P(a).call(a,a=>-1!==D(d).call(d,a)||a===this.disabledVideoTrack));let e=[];for(let d=0;d<a.length;d+=1){let f=a[d];if(this.unbindTrackEvents(f),this.audioTrack instanceof Uc&&f instanceof db)this.audioTrack.removeAudioTrack(f),0===this.audioTrack.trackList.length&&(e.push(this.audioTrack),this.audioTrack=void 0);else if(f instanceof db)e.push(f),this.audioTrack=void 0;else if(f instanceof Ta){if(b){if(this.disabledVideoTrack===f)return void(this.disabledVideoTrack=void 0)}else this.disabledVideoTrack=
this.videoTrack;e.push(f);this.isLowStreamConnection&&f.close();this.videoTrack=void 0}}if(this.videoTrack||this.audioTrack){if(0!==e.length){if("connecting"===this.connectionState)try{await this.createWaitConnectionConnectedPromise()}catch(g){return}for(let a of e){var f;h.debug(p(f="[".concat(this.connectionId,"] remove ")).call(f,a.trackMediaType," from pc"));await this.pc.removeTrack(a._mediaStreamTrack)}await this.renegotiateWithGateway()}}else await this.closeP2PConnection()}startP2PConnection(){return new x(async(a,
b)=>{if(!this.audioTrack&&!this.videoTrack)return b(new n(m.UNEXPECTED_ERROR,"no track to publish"));let d=e=>{var f;"connected"===e&&(t.publish(this.joinInfo.sid,{lts:this.startTime,succ:!0,ec:null,audioName:this.audioTrack&&this.audioTrack.getTrackLabel(),videoName:this.videoTrack&&this.videoTrack.getTrackLabel(),screenshare:!(!this.videoTrack||-1===D(f=this.videoTrack._hints).call(f,qb.SCREEN_TRACK)),audio:!!this.audioTrack,video:!!this.videoTrack,p2pid:this.pc.ID,publishRequestid:this.ID}),this.off(H.CONNECTION_STATE_CHANGE,
d),a());if("disconnected"===e){if(this.off(H.CONNECTION_STATE_CHANGE,d),this.disconnectedReason)return b(this.disconnectedReason);b(new n(m.OPERATION_ABORTED,"publish abort"))}};this.on(H.CONNECTION_STATE_CHANGE,d);this.disconnectedReason=void 0;this.connectionState="connecting";this.startTime=v();try{!this.pc.videoTrack&&this.videoTrack&&await this.pc.addTrack(this.videoTrack._mediaStreamTrack);!this.pc.audioTrack&&this.audioTrack&&await this.pc.addTrack(this.audioTrack._mediaStreamTrack);var e=
await this.pc.createOfferSDP();this.audioTrack&&this.audioTrack._encoderConfig&&(e=nf(e,this.audioTrack._encoderConfig));await this.pc.setOfferSDP(e);h.debug("[".concat(this.connectionId,"] create and set offer success"));e={messageType:"OFFER",sdp:e,offererSessionId:104,retry:!0};ca.supportDualStreamEncoding&&this.isLowStreamConnection&&this.lowStreamEncoding&&this.videoTrack&&await this.setLowStreamEncoding(this.lowStreamEncoding,this.videoTrack);let a=await Na(this,H.NEED_ANSWER,e),b=this.updateAnswerSDP(a.sdp);
await this.pc.setAnswerSDP(b);h.debug("[".concat(this.connectionId,"] set answer success"));await this.icePromise;this.connectionState="connected";this.startUploadStats()}catch(g){var f;this.off(H.CONNECTION_STATE_CHANGE,d);this.connectionState="disconnected";t.publish(this.joinInfo.sid,{lts:this.startTime,succ:!1,ec:g.code,audioName:this.audioTrack&&this.audioTrack.getTrackLabel(),videoName:this.videoTrack&&this.videoTrack.getTrackLabel(),screenshare:!(!this.videoTrack||-1===D(f=this.videoTrack._hints).call(f,
qb.SCREEN_TRACK)),audio:!!this.audioTrack,video:!!this.videoTrack,p2pid:this.pc.ID,publishRequestid:this.ID});h.error("[".concat(this.connectionId,"] connection error"),g.toString());b(g)}})}async closeP2PConnection(a){let b=this.getAllTracks();var d;(r(b).call(b,a=>{this.unbindTrackEvents(a)}),this.isLowStreamConnection&&this.videoTrack&&this.videoTrack.close(),this.videoTrack=void 0,this.audioTrack instanceof Uc)&&r(d=this.audioTrack.trackList).call(d,a=>{this.audioTrack.removeAudioTrack(a)});this.audioTrack=
void 0;this.stopUploadStats();this.statsCollector.removeConnection(this.connectionId);await this.closePC(a);this.connectionState="disconnected";this.removeAllListeners()}getNetworkQuality(){var a,b=this.pc.getStats();if(!b.videoSend[0]&&!b.audioSend[0])return 1;var d=jc(this,H.NEED_SIGNAL_RTT),e=b.videoSend[0]?b.videoSend[0].rttMs:void 0;let f=b.audioSend[0]?b.audioSend[0].rttMs:void 0;e=e&&f?(e+f)/2:e||f;d=70*b.sendPacketLossRate/50+.3*((e&&d?(e+d)/2:e||d)||0)/1500;d=.17>d?1:.36>d?2:.59>d?3:.1>d?
4:5;return this.videoTrack&&this.videoTrack._encoderConfig&&-1===D(a=this.videoTrack._hints).call(a,qb.SCREEN_TRACK)&&(a=this.videoTrack._encoderConfig.bitrateMax,b=b.bitrate.actualEncoded,a&&b)?(b=(1E3*a-b)/(1E3*a),No[.15>b?0:.3>b?1:.45>b?2:.6>b?3:4][d]):d}uploadStats(a,b){let d=this.audioTrack?Ll(a,this.audioTrack):void 0,e=this.videoTrack?Kl(a,this.videoTrack):void 0,f=Lh(a,b),g=Jl(a);d&&eb(()=>this.emit(H.NEED_UPLOAD,Ab.PUBLISH_STATS,d));e&&eb(()=>this.emit(H.NEED_UPLOAD,Ab.PUBLISH_STATS,Bm({},
e,{},f)));g&&eb(()=>this.emit(H.NEED_UPLOAD,Ab.PUBLISH_STATS,g))}uploadSlowStats(a){let b=Lh(a);b&&eb(()=>this.emit(H.NEED_UPLOAD,Ab.PUBLISH_STATS,b))}uploadRelatedStats(a){let b=Ol(a);b&&eb(()=>{this.emit(H.NEED_UPLOAD,Ab.PUBLISH_RELATED_STATS,b)})}bindTrackEvents(a){this.isLowStreamConnection||(a instanceof db?(a.addListener(L.GET_STATS,this.handleGetLocalAudioStats),a.addListener(L.NEED_CLOSE,this.handleCloseAudioTrack)):a instanceof Ta&&(a.addListener(L.GET_STATS,this.handleGetLocalVideoStats),
a.addListener(L.NEED_CLOSE,this.handleCloseVideoTrack),a.addListener(L.SET_OPTIMIZATION_MODE,this.handleSetOptimizationMode)),a.addListener(L.NEED_RENEGOTIATE,this.handleStreamRenegotiate),a.addListener(L.NEED_REPLACE_TRACK,this.handleReplaceTrack),a.addListener(L.NEED_SESSION_ID,this.handleGetSessionID))}unbindTrackEvents(a){this.isLowStreamConnection||(a instanceof db?(a.off(L.GET_STATS,this.handleGetLocalAudioStats),a.off(L.NEED_CLOSE,this.handleCloseAudioTrack)):a instanceof Ta&&(a.off(L.GET_STATS,
this.handleGetLocalVideoStats),a.off(L.NEED_CLOSE,this.handleCloseVideoTrack)),a.off(L.NEED_RENEGOTIATE,this.handleStreamRenegotiate),a.off(L.NEED_REPLACE_TRACK,this.handleReplaceTrack),a.off(L.NEED_SESSION_ID,this.handleGetSessionID))}async addTrackWithPC(a){if("connecting"===this.connectionState)return(new n(m.INVALID_OPERATION,"last publish operation has not finished")).throw();var b=this.videoTrack;let d=!1;this.audioTrack&&a instanceof db?(this.audioTrack=a,h.debug("[".concat(this.connectionId,
"] replace pc audio track")),d=await this.pc.replaceTrack(a._mediaStreamTrack)):this.videoTrack&&a instanceof Ta?(this.videoTrack=a,h.debug("[".concat(this.connectionId,"] replace pc video track")),d=await this.pc.replaceTrack(a._mediaStreamTrack)):a instanceof db?(this.audioTrack=a,h.debug("[".concat(this.connectionId,"] add audio track to pc")),await this.pc.addTrack(a._mediaStreamTrack),d=!0):a instanceof Ta&&(this.videoTrack=a,h.debug("[".concat(this.connectionId,"] add video track to pc")),await this.pc.addTrack(a._mediaStreamTrack),
d=!0);a=ca;this.videoTrack!==b&&this.videoTrack&&a.supportSetRtpSenderParameters&&(b={},a="balanced",this.videoTrack._encoderConfig&&(b.maxBitrate=this.videoTrack._encoderConfig.bitrateMax?1E3*this.videoTrack._encoderConfig.bitrateMax:void 0),"motion"===this.videoTrack._optimizationMode?a="maintain-framerate":"detail"===this.videoTrack._optimizationMode&&(a="maintain-resolution"),h.debug("[".concat(this.connectionId,"] set pc rtp sender"),b,a),await this.pc.setRtpSenderParameters(b,a));return"disconnected"!==
this.connectionState&&d}updateAnswerSDP(a){var b,d;a=a.replace(/a=x-google-flag:conference\r\n/g,"");this.videoTrack&&D(b=this.videoTrack._hints).call(b,qb.SCREEN_TRACK);if(this.videoTrack&&this.videoTrack._encoderConfig&&-1===D(d=this.videoTrack._hints).call(d,qb.SCREEN_TRACK)){{b=this.codec;var e=this.videoTrack._encoderConfig,f=ca;d=e.bitrateMin;e=e.bitrateMax;let q=a.match(/m=video.*\r\n/)||a.match(/m=video.*\n/);if(q&&0<q.length&&f.supportMinBitrate&&d){f=null;var g,k;if("h264"===b?f=a.match(/a=rtpmap:(\d+) H264\/90000\r\n/)||
a.match(/a=rtpmap:(\d+) H264\/90000\n/):"vp8"===b&&(f=a.match(/a=rtpmap:(\d+) VP8\/90000\r\n/)||a.match(/a=rtpmap:(\d+) VP8\/90000\n/)),f&&f[1])a=a.replace(q[0],p(g=p(k="".concat(q[0],"a=fmtp:")).call(k,f[1]," x-google-min-bitrate=")).call(g,d,"\r\n"))}if(q&&0<q.length&&e){var h,l;g="AS";qa().name===ba.FIREFOX&&(e=1E3*(e>>>0),g="TIAS");a=a.replace(q[0],p(h=p(l="".concat(q[0],"b=")).call(l,g,":")).call(h,e,"\r\n"))}}}this.audioTrack&&this.audioTrack._encoderConfig&&(a=nf(a,this.audioTrack._encoderConfig));
h=a;l=qa();return h=l.name!==ba.SAFARI&&l.os!==X.IOS?h:h.replace(/a=.*video-orientation\r\n/g,"")}createPC(){this.pc=new hl({turnServer:this.joinInfo.turnServer});this.updateICEPromise()}async closePC(a){return this.pc.onICEConnectionStateChange=void 0,this.pc.close(),!a&&await Na(this,H.NEED_UNPUB)}onPCDisconnected(a){var b;t.publish(this.joinInfo.sid,{lts:this.startTime,succ:!1,ec:a.code,audioName:this.audioTrack&&this.audioTrack.getTrackLabel(),videoName:this.videoTrack&&this.videoTrack.getTrackLabel(),
screenshare:!(!this.videoTrack||-1===D(b=this.videoTrack._hints).call(b,qb.SCREEN_TRACK)),audio:!!this.audioTrack,video:!!this.videoTrack,p2pid:this.pc.ID,publishRequestid:this.ID})}async setLowStreamEncoding(a,b){try{let d=await this.pc.setRtpEncodingParameters(a),e=b.getMediaStreamTrack();if(a.scaleResolutionDownBy&&d.encodings[0].scaleResolutionDownBy!==a.scaleResolutionDownBy){let d=b._videoHeight||e.getSettings().height,g=b._videoWidth||e.getSettings().width;d&&g&&await e.applyConstraints({height:d/
a.scaleResolutionDownBy,width:g/a.scaleResolutionDownBy})}a.maxFramerate&&d.encodings[0].maxFramerate!==a.maxFramerate&&await e.applyConstraints({frameRate:a.maxFramerate})}catch(d){if(d instanceof n)throw d;throw new n(m.LOW_STREAM_ENCODING_ERROR,d.message);}}}class rl extends Yk{constructor(a,b,d){super(a);this._isDestroyed=!1;this._userId=b;this._uintId=d}getUserId(){return this._userId}_updateOriginMediaStreamTrack(a){this._mediaStreamTrack=this._originMediaStreamTrack=a;this._updatePlayerSource()}_destroy(){this._isDestroyed=
!0;h.info("[track-".concat(this.getTrackId(),"] is destroyed"));this.stop()}}class Bd extends rl{constructor(a,b,d){super(a,b,d);this.trackMediaType="video";cd(a).then(([a,b])=>{this._videoHeight=b;this._videoWidth=a}).catch(tg)}get isPlaying(){return!!this._player}getStats(){fd(()=>{h.warning("[deprecated] RemoteVideoTrack.getStats will be removed in the future, use AgoraRTCClient.getRemoteVideoStats instead")},"remoteVideoTrackGetStatsWarning");return jc(this,L.GET_STATS)||of({},jg)}play(a,b={}){let d=
t.reportApiInvoke(null,{tag:C.TRACER,name:A.REMOTE_VIDEO_TRACK_PLAY,options:[this.getTrackId(),"string"==typeof a?a:"HTMLElement",b]});if("string"==typeof a){let b=document.getElementById(a);var e;b?a=b:(h.warning(p(e="[track-".concat(this.getTrackId(),'] can not find "#')).call(e,a,'" element, use document.body')),a=document.body)}h.debug("[track-".concat(this.getTrackId(),"] start video playback"),z(b));a=of({fit:"cover"},b,{trackId:this.getTrackId(),element:a});this._player?this._player.updateConfig(a):
(this._player=new ll(a),this._player.updateVideoTrack(this._mediaStreamTrack),this._player.onFirstVideoFrameDecoded=()=>{this.emit(ye.FIRST_FRAME_DECODED)});this._player.play();d.onSuccess()}stop(){let a=t.reportApiInvoke(null,{tag:C.TRACER,name:A.REMOTE_VIDEO_TRACK_STOP,options:[this.getTrackId()]});if(!this._player)return a.onSuccess();this._player.destroy();this._player=void 0;h.debug("[track-".concat(this.getTrackId(),"] stop video playback"));a.onSuccess()}getCurrentFrameData(){return this._player?
this._player.getCurrentFrame():new ImageData(2,2)}_updatePlayerSource(){h.debug("[track-".concat(this.getTrackId(),"] update player source track"));this._player&&this._player.updateVideoTrack(this._mediaStreamTrack)}}class Cd extends rl{constructor(a,b,d){super(a,b,d);this.trackMediaType="audio";this._useAudioElement=!1;this._source=new $k(a,!0);this._source.once(ob.RECEIVE_TRACK_BUFFER,()=>{this.emit(ye.FIRST_FRAME_DECODED)});ca.webAudioWithAEC||(this._useAudioElement=!0)}get isPlaying(){return this._useAudioElement?
rb.isPlaying(this.getTrackId()):this._source.isPlayed}setAudioFrameCallback(a,b=4096){if(!a)return this._source.removeAllListeners(ob.ON_AUDIO_BUFFER),void this._source.stopGetAudioBuffer();this._source.startGetAudioBuffer(b);this._source.removeAllListeners(ob.ON_AUDIO_BUFFER);this._source.on(ob.ON_AUDIO_BUFFER,b=>a(b))}setVolume(a){let b=t.reportApiInvoke(null,{tag:C.TRACER,name:A.REMOTE_AUDIO_SET_VOLUME,options:[this.getTrackId(),a]},300);this._useAudioElement?rb.setVolume(this.getTrackId(),a):
this._source.setVolume(a/100);b.onSuccess()}async setPlaybackDevice(a){let b=t.reportApiInvoke(null,{tag:C.TRACER,name:A.REMOTE_AUDIO_SET_OUTPUT_DEVICE,options:[this.getTrackId(),a]});if(!this._useAudioElement)throw new n(m.NOT_SUPPORTED,"your browser does not support setting the audio output device");try{await rb.setSinkID(this.getTrackId(),a)}catch(d){throw b.onError(d),d;}b.onSuccess()}getVolumeLevel(){return this._source.getAudioLevel()}getStats(){fd(()=>{h.warning("[deprecated] RemoteAudioTrack.getStats will be removed in the future, use AgoraRTCClient.getRemoteAudioStats instead")},
"remoteAudioTrackGetStatsWarning");return jc(this,L.GET_STATS)||of({},ig)}play(){let a=t.reportApiInvoke(null,{tag:C.TRACER,name:A.REMOTE_AUDIO_TRACK_PLAY,options:[this.getTrackId()]});h.debug("[".concat(this.getTrackId(),"] start audio playback"));this._useAudioElement?(h.debug("[track-".concat(this.getTrackId(),"] use audio element to play")),rb.play(this._mediaStreamTrack,this.getTrackId())):this._source.play();a.onSuccess()}stop(){let a=t.reportApiInvoke(null,{tag:C.TRACER,name:A.REMOTE_AUDIO_TRACK_STOP,
options:[this.getTrackId()]});h.debug("[".concat(this.getTrackId(),"] stop audio playback"));this._useAudioElement?rb.stop(this.getTrackId()):this._source.stop();a.onSuccess()}_destroy(){super._destroy();this._source.destroy()}_isFreeze(){return this._source.isFreeze}_updatePlayerSource(){h.debug("[track-".concat(this.getTrackId(),"] update player source track"));this._source.updateTrack(this._mediaStreamTrack);this._useAudioElement&&rb.updateTrack(this.getTrackId(),this._mediaStreamTrack)}}class hq extends kl{constructor(a,
b,d,e){super(d,a.uid);this.type="sub";this.unusedTracks=[];this.onTrack=a=>{var b,d;if("audio"===a.kind&&!this.subscribeOptions.audio||"video"===a.kind&&!this.subscribeOptions.video)return this.unusedTracks.push(a),void h.debug(p(d="[".concat(this.connectionId,"] unused ontrack event, kind: ")).call(d,a.kind));h.debug(p(b="[".concat(this.connectionId,"] emit pc ontrack after subscribe ")).call(b,a.kind),a);b="audio"===a.kind?this.user._audioTrack:this.user._videoTrack;var e,f;b?b._updateOriginMediaStreamTrack(a):
"audio"===a.kind?(this.user._audioTrack=new Cd(a,this.getUserId(),this.user._uintid),h.info(p(e="[".concat(this.connectionId,"] create remote audio track: ")).call(e,this.user._audioTrack.getTrackId())),this.bindTrackEvents(this.user._audioTrack)):(this.user._videoTrack=new Bd(a,this.getUserId(),this.user._uintid),h.info(p(f="[".concat(this.connectionId,"] create remote video track: ")).call(f,this.user._videoTrack.getTrackId())),this.bindTrackEvents(this.user._videoTrack))};this.handleGetRemoteAudioStats=
a=>{a(this.statsCollector.getRemoteAudioTrackStats(this.connectionId))};this.handleGetRemoteVideoStats=a=>{a(this.statsCollector.getRemoteVideoTrackStats(this.connectionId))};this.handleGetSessionID=a=>{a(this.joinInfo.sid)};this.user=a;this.statsCollector=b;this.statsCollector.addRemoteConnection(this);this.subscribeOptions=e}async startP2PConnection(){return new x(async(a,b)=>{let d=e=>{if("connected"===e&&(t.subscribe(this.joinInfo.sid,{lts:this.startTime,succ:!0,video:this.subscribeOptions.video,
audio:this.subscribeOptions.audio,peerid:this.user.uid,ec:null,subscribeRequestid:this.ID,p2pid:this.pc.ID}),this.off(H.CONNECTION_STATE_CHANGE,d),a()),"disconnected"===e){if(this.off(H.CONNECTION_STATE_CHANGE,d),this.disconnectedReason)return b(this.disconnectedReason);b(new n(m.OPERATION_ABORTED,"subscribe abort"))}};if(this.on(H.CONNECTION_STATE_CHANGE,d),this.disconnectedReason=void 0,this.connectionState="connecting",this.startTime=v(),!this.subscribeOptions)return void b(new n(m.UNEXPECTED_ERROR,
"no subscribe options"));let e=new MediaStream,f=new x(a=>{this.pc.onTrack=(b,d)=>{var f,g;if("audio"===b.kind&&!this.subscribeOptions.audio||"video"===b.kind&&!this.subscribeOptions.video)return this.unusedTracks.push(b),void h.debug(p(g="[".concat(this.connectionId,"] unused ontrack event ")).call(g,b.kind));e.addTrack(b);g={audio:0<e.getAudioTracks().length,video:0<e.getVideoTracks().length};h.debug(p(f="[".concat(this.connectionId,"] subscribe ontrack: ")).call(f,b.kind),d,b);a:{b=this.subscribeOptions;
var k,l;d=vd(k=S(g)).call(k);k=vd(l=S(b)).call(l);for(l=0;l<d.length;l+=1){if(d[l]!==k[l]){g=!1;break a}if(g[d[l]]!==b[d[l]]){g=!1;break a}}g=!0}g&&(this.pc.onTrack=this.onTrack,h.debug("[".concat(this.connectionId,"] get all subscribed tracks")),a(e))}});try{let a=ym(mi(await this.pc.createOfferSDP()));await this.pc.setOfferSDP(a);h.debug("[".concat(this.connectionId,"] create and set offer success"));let b=await Na(this,H.NEED_ANSWER,{messageType:"OFFER",sdp:a,offererSessionId:104,retry:!0});await this.pc.setAnswerSDP(mi(b.sdp));
h.debug("[".concat(this.connectionId,"] set answer success"));let d=await x.all([f,this.icePromise]),e=d[0].getAudioTracks()[0],l=d[0].getVideoTracks()[0];var g,k;e&&(this.user._audioTrack?this.user._audioTrack._updateOriginMediaStreamTrack(e):(this.user._audioTrack=new Cd(e,this.getUserId(),this.user._uintid),h.info(p(g="[".concat(this.connectionId,"] create remote audio track: ")).call(g,this.user._audioTrack.getTrackId())),this.bindTrackEvents(this.user._audioTrack)));l&&(this.user._videoTrack?
this.user._videoTrack._updateOriginMediaStreamTrack(l):(this.user._videoTrack=new Bd(l,this.getUserId(),this.user._uintid),h.info(p(k="[".concat(this.connectionId,"] create remote video track: ")).call(k,this.user._videoTrack.getTrackId())),this.bindTrackEvents(this.user._videoTrack)));this.connectionState="connected";this.startUploadStats()}catch(q){this.off(H.CONNECTION_STATE_CHANGE,d),this.connectionState="disconnected",t.subscribe(this.joinInfo.sid,{lts:this.startTime,succ:!1,video:this.subscribeOptions.video,
audio:this.subscribeOptions.audio,peerid:this.user.uid,ec:q.code,subscribeRequestid:this.ID,p2pid:this.pc.ID}),b(q)}})}async closeP2PConnection(a){"disconnected"!==this.connectionState&&(this.stopUploadStats(),this.statsCollector.removeConnection(this.connectionId),this.connectionState="disconnected",await this.setSubscribeOptions({audio:!1,video:!1}),await this.closePC(a),this.removeAllListeners())}getNetworkQuality(){var a=this.pc.getStats();if(!a.audioRecv[0]&&!a.videoRecv[0])return 1;var b=jc(this,
H.NEED_SIGNAL_RTT),d=a.rtt;b=(d&&b?(d+b)/2:d||b)||0;d=a.audioRecv[0]?a.audioRecv[0].jitterMs:void 0;a=a.recvPacketLossRate;let e=70*a/50+.3*b/1500;d&&(e=60*a/50+.2*b/1500+.2*d/400);return.1>e?1:.17>e?2:.36>e?3:.59>e?4:5}uploadStats(a){let b=this.user.audioTrack?Nl(a,this.user.audioTrack):void 0,d=this.user.videoTrack?Ml(a,this.user.videoTrack):void 0;b&&eb(()=>this.emit(H.NEED_UPLOAD,Ab.SUBSCRIBE_STATS,b));d&&eb(()=>this.emit(H.NEED_UPLOAD,Ab.SUBSCRIBE_STATS,d))}uploadSlowStats(a){}uploadRelatedStats(a,
b){let d=!0===this.pc._statsFilter.videoIsReady,e=Ql(a,this.getUserId(),this.user.audioTrack),f=Pl(d,a,this.getUserId(),b,this.user.videoTrack);e&&eb(()=>{this.emit(H.NEED_UPLOAD,Ab.SUBSCRIBE_RELATED_STATS,e)});f&&eb(()=>{this.emit(H.NEED_UPLOAD,Ab.SUBSCRIBE_RELATED_STATS,f)})}emitOnTrackFromUnusedTracks(){if(this.subscribeOptions){var a=this.subscribeOptions.video;if(this.subscribeOptions.audio){var b;let a=U(b=this.unusedTracks).call(b,a=>"audio"===a.kind&&"live"===a.readyState);ed(this.unusedTracks,
a);a&&this.onTrack(a)}if(a){var d;a=U(d=this.unusedTracks).call(d,a=>"video"===a.kind&&"live"===a.readyState);ed(this.unusedTracks,a);a&&this.onTrack(a)}}}async setSubscribeOptions(a){var b,d,e,f;if(a.audio!==this.subscribeOptions.audio||a.video!==this.subscribeOptions.video){if("connecting"===this.connectionState)try{await this.createWaitConnectionConnectedPromise()}catch(g){throw new n(m.OPERATION_ABORTED,"can not update subscribe options, operation abort");}a.audio===this.subscribeOptions.audio&&
a.video===this.subscribeOptions.video||(h.debug(p(b=p(d=p(e=p(f="[".concat(this.connectionId,"] update subscribe options [a: ")).call(f,this.subscribeOptions.audio,", v: ")).call(e,this.subscribeOptions.video,"] -> [a: ")).call(d,a.audio,", v: ")).call(b,a.video,"]")),this.subscribeOptions=a,!a.audio&&this.user._audioTrack&&(this.unusedTracks.push(this.user._audioTrack._originMediaStreamTrack),this.user._audioTrack._destroy(),this.unbindTrackEvents(this.user._audioTrack),this.user._audioTrack=void 0),
!a.video&&this.user._videoTrack&&(this.unusedTracks.push(this.user._videoTrack._originMediaStreamTrack),this.user._videoTrack._destroy(),this.unbindTrackEvents(this.user._videoTrack),this.user._videoTrack=void 0),this.emitOnTrackFromUnusedTracks())}}createPC(){this.pc=new il({turnServer:this.joinInfo.turnServer});this.pc.onFirstAudioDecoded=()=>{t.firstRemoteFrame(this.joinInfo.sid,Ga.FIRST_AUDIO_DECODE,ua.FIRST_AUDIO_DECODE,{peer:this.user._uintid,subscribeElapse:v()-this.startTime,subscribeRequestid:this.ID,
p2pid:this.pc.ID})};this.pc.onFirstAudioReceived=()=>{t.firstRemoteFrame(this.joinInfo.sid,Ga.FIRST_AUDIO_RECEIVED,ua.FIRST_AUDIO_RECEIVED,{peer:this.user._uintid,subscribeElapse:v()-this.startTime,subscribeRequestid:this.ID,p2pid:this.pc.ID})};this.pc.onFirstVideoDecoded=(a,b)=>{t.firstRemoteFrame(this.joinInfo.sid,Ga.FIRST_VIDEO_DECODE,ua.FIRST_VIDEO_DECODE,{peer:this.user._uintid,videowidth:a,videoheight:b,subscribeElapse:v()-this.startTime,subscribeRequestid:this.ID,p2pid:this.pc.ID})};this.pc.onFirstVideoReceived=
()=>{t.firstRemoteFrame(this.joinInfo.sid,Ga.FIRST_VIDEO_RECEIVED,ua.FIRST_VIDEO_RECEIVED,{peer:this.user._uintid,subscribeElapse:v()-this.startTime,subscribeRequestid:this.ID,p2pid:this.pc.ID})};this.updateICEPromise()}async closePC(a){return(this.pc.audioTrack&&this.pc.audioTrack.stop(),this.pc.videoTrack&&this.pc.videoTrack.stop(),this.pc.onTrack=void 0,this.pc.onICEConnectionStateChange=void 0,this.pc.close(),a)?!1:await Na(this,H.NEED_UNSUB)}onPCDisconnected(a){t.subscribe(this.joinInfo.sid,
{lts:this.startTime,succ:!1,video:this.subscribeOptions.video,audio:this.subscribeOptions.audio,peerid:this.user.uid,ec:a.code,subscribeRequestid:this.ID,p2pid:this.pc.ID})}bindTrackEvents(a){a instanceof Cd?a.addListener(L.GET_STATS,this.handleGetRemoteAudioStats):a instanceof Bd&&a.addListener(L.GET_STATS,this.handleGetRemoteVideoStats)}unbindTrackEvents(a){a instanceof Cd?a.off(L.GET_STATS,this.handleGetRemoteAudioStats):a instanceof Bd&&a.off(L.GET_STATS,this.handleGetRemoteVideoStats)}}class iq extends cb{constructor(a,
b,d,e){super();this.reconnectMode="retry";this.commandReqId=this.reqId=0;this.handleWebSocketOpen=()=>{this.reconnectMode="retry";this.startPingPong()};this.handleWebSocketMessage=a=>{if(a.data){a=JSON.parse(a.data);var b;a.requestId?this.emit(p(b="@".concat(a.requestId,"-")).call(b,a.sid),a):this.serviceMode===oa.INJECT?this.emit(pb.INJECT_STREAM_STATUS,a):(t.workerEvent(this.spec.sid,{actionType:"status",serverCode:a.code,workerType:this.serviceMode===oa.TRANSCODE?1:2}),this.emit(pb.PUBLISH_STREAM_STATUS,
a))}};this.spec=b;this.token=a;this.serviceMode=e;this.websocket=new ug("live-streaming",d);this.websocket.on(T.CONNECTED,this.handleWebSocketOpen);this.websocket.on(T.ON_MESSAGE,this.handleWebSocketMessage);this.websocket.on(T.REQUEST_NEW_URLS,(a,b)=>{Na(this,pb.REQUEST_NEW_ADDRESS).then(a).catch(b)});this.websocket.on(T.RECONNECTING,()=>{this.websocket.reconnectMode=this.reconnectMode})}init(a){return this.websocket.init(a)}async request(a,b,d,e){this.reqId+=1;"request"===a&&(this.commandReqId+=
1);let f=this.commandReqId,g=this.reqId;if(!g||!this.websocket)throw new n(m.UNEXPECTED_ERROR);var k=pf({command:a,sdkVersion:"4.3.0"===fb?"0.0.1":fb,seq:g,requestId:g,allocate:d,cname:this.spec.cname,appId:this.spec.appId,sid:this.spec.sid,uid:this.spec.uid.toString(),ts:Math.floor(v()/1E3)},b);if("closed"===this.websocket.state)throw new n(m.WS_DISCONNECT);let h=()=>new x((a,b)=>{this.websocket.once(T.CLOSED,()=>b(new n(m.WS_ABORT)));this.websocket.once(T.CONNECTED,a)});"connected"!==this.websocket.state&&
await h();k.clientRequest&&(k.clientRequest.workerToken=this.token);let l=new x((a,b)=>{var d;const e=()=>{b(new n(m.WS_ABORT))};this.websocket.once(T.RECONNECTING,e);this.websocket.once(T.CLOSED,e);this.once(p(d="@".concat(g,"-")).call(d,this.spec.sid),b=>{a(b)})});e&&t.workerEvent(this.spec.sid,pf({},e,{requestId:f,actionType:"request",payload:z(b.clientRequest),serverCode:0,code:0}));let r=v();this.websocket.sendMessage(k);k=null;try{k=await l}catch(ia){if("closed"===this.websocket.state)throw ia;
return await h(),await this.request(a,b,d)}return e&&t.workerEvent(this.spec.sid,pf({},e,{requestId:f,actionType:"response",payload:z(k.serverResponse),serverCode:k.code,success:200===k.code,responseTime:v()-r})),200!==k.code&&this.handleResponseError(k),k}tryNextAddress(){this.reconnectMode="tryNext";this.websocket.reconnect("tryNext")}close(){let a="4.3.0"===fb?"0.0.1":fb;this.reqId+=1;"connected"===this.websocket.state?(this.websocket.sendMessage({command:"request",appId:this.spec.appId,cname:this.spec.cname,
uid:this.spec.uid.toString(),sdkVersion:a,sid:this.spec.sid,seq:this.reqId,ts:Math.floor(v()/1E3),requestId:this.reqId,clientRequest:{command:"DestroyWorker"}}),this.websocket.close(!1,!0)):this.websocket.close(!1);this.pingpongTimer&&(window.clearInterval(this.pingpongTimer),this.pingpongTimer=void 0)}handleResponseError(a){switch(a.code){case la.LIVE_STREAM_RESPONSE_ALREADY_EXISTS_STREAM:return void h.warning("live stream response already exists stream");case la.LIVE_STREAM_RESPONSE_TRANSCODING_PARAMETER_ERROR:case la.LIVE_STREAM_RESPONSE_BAD_STREAM:case la.LIVE_STREAM_RESPONSE_WM_PARAMETER_ERROR:return(new n(m.LIVE_STREAMING_INVALID_ARGUMENT,
"",{code:a.code})).throw();case la.LIVE_STREAM_RESPONSE_WM_WORKER_NOT_EXIST:if("UnpublishStream"===a.serverResponse.command||"UninjectStream"===a.serverResponse.command)break;throw new n(m.LIVE_STREAMING_INTERNAL_SERVER_ERROR,"live stream response wm worker not exist",{retry:!0});case la.LIVE_STREAM_RESPONSE_NOT_AUTHORIZED:return(new n(m.LIVE_STREAMING_PUBLISH_STREAM_NOT_AUTHORIZED,"",{code:a.code})).throw();case la.LIVE_STREAM_RESPONSE_FAILED_LOAD_IMAGE:var b=new n(m.LIVE_STREAMING_WARN_FAILED_LOAD_IMAGE);
return this.emit(pb.WARNING,b,a.serverResponse.url);case la.LIVE_STREAM_RESPONSE_REQUEST_TOO_OFTEN:return b=new n(m.LIVE_STREAMING_WARN_FREQUENT_REQUEST),this.emit(pb.WARNING,b,a.serverResponse.url);case la.LIVE_STREAM_RESPONSE_NOT_FOUND_PUBLISH:throw new n(m.LIVE_STREAMING_INTERNAL_SERVER_ERROR,"live stream response wm worker not exist",{retry:!0});case la.LIVE_STREAM_RESPONSE_NOT_SUPPORTED:return(new n(m.LIVE_STREAMING_TRANSCODING_NOT_SUPPORTED,"",{code:a.code})).throw();case la.LIVE_STREAM_RESPONSE_MAX_STREAM_NUM:return b=
new n(m.LIVE_STREAMING_WARN_STREAM_NUM_REACH_LIMIT),this.emit(pb.WARNING,b,a.serverResponse.url);case la.LIVE_STREAM_RESPONSE_INTERNAL_SERVER_ERROR:return(new n(m.LIVE_STREAMING_INTERNAL_SERVER_ERROR,"",{code:a.code})).throw();case la.LIVE_STREAM_RESPONSE_RESOURCE_LIMIT:throw new n(m.LIVE_STREAMING_INTERNAL_SERVER_ERROR,"live stream resource limit",{retry:!0,changeAddress:!0});case la.LIVE_STREAM_RESPONSE_WORKER_LOST:case la.LIVE_STREAM_RESPONSE_WORKER_QUIT:if("UnpublishStream"===a.serverResponse.command||
"UninjectStream"===a.serverResponse.command)break;throw new n(m.LIVE_STREAMING_INTERNAL_SERVER_ERROR,"error fail send message",{retry:!0,changeAddress:!0});case la.ERROR_FAIL_SEND_MESSAGE:if("UnpublishStream"===a.serverResponse.command||"UninjectStream"===a.serverResponse.command)break;if("UpdateTranscoding"===a.serverResponse.command||"ControlStream"===a.serverResponse.command)return(new n(m.LIVE_STREAMING_INTERNAL_SERVER_ERROR,"error fail send message",{code:a.code})).throw();throw new n(m.LIVE_STREAMING_INTERNAL_SERVER_ERROR,
"error fail send message",{retry:!0,changeAddress:!0});case la.PUBLISH_STREAM_STATUS_ERROR_PUBLISH_BROKEN:case la.PUBLISH_STREAM_STATUS_ERROR_RTMP_CONNECT:case la.PUBLISH_STREAM_STATUS_ERROR_RTMP_HANDSHAKE:case la.PUBLISH_STREAM_STATUS_ERROR_RTMP_PUBLISH:return(new n(m.LIVE_STREAMING_CDN_ERROR,"",{code:a.code})).throw()}}startPingPong(){this.pingpongTimer&&window.clearInterval(this.pingpongTimer);this.pingpongTimer=window.setInterval(()=>{"connected"===this.websocket.state&&this.request("ping",{}).catch(tg)},
6E3)}}class jq extends cb{constructor(a,b=Ra,d=Ra){super();this.retryTimeout=1E4;this.streamingTasks=new Z;this.isStartingStreamingTask=!1;this.taskMutex=new fc("live-streaming");this.cancelToken=Ib.CancelToken.source();this.injectConfig=ac({},pp);this.injectLoopTimes=0;this.lastTaskId=1;this.statusError=new Z;this.spec=a;this.httpRetryConfig=d;this.wsRetryConfig=b}async setTranscodingConfig(a){var b;let d=ac({},op,{},a);var e,f;66!==d.videoCodecProfile&&77!==d.videoCodecProfile&&100!==d.videoCodecProfile&&
(h.debug(p(e="[".concat(this.spec.clientId,"] set transcoding config, fix video codec profile: ")).call(e,d.videoCodecProfile," -> 100")),d.videoCodecProfile=100);(d.transcodingUsers||(d.transcodingUsers=d.userConfigs),d.transcodingUsers)&&(d.transcodingUsers=y(f=d.transcodingUsers).call(f,a=>ac({},np,{},a,{zOrder:a.zOrder?a.zOrder+1:1})));El(d);a=[];var g,k;d.images&&a.push(...y(g=d.images).call(g,a=>ac({},kg,{},a,{zOrder:255})));(d.backgroundImage&&(a.push(ac({},kg,{},d.backgroundImage,{zOrder:0})),
delete d.backgroundImage),d.watermark&&(a.push(ac({},kg,{},d.watermark,{zOrder:255})),delete d.watermark),d.images=a,d.transcodingUsers)&&(d.userConfigs=y(k=d.transcodingUsers).call(k,a=>ac({},a)),d.userCount=d.transcodingUsers.length,delete d.transcodingUsers);g=y(b=d.userConfigs||[]).call(b,a=>"number"==typeof a.uid?x.resolve(a.uid):fi(a.uid,this.spec,this.cancelToken.token,this.httpRetryConfig));b=await x.all(g);if(r(b).call(b,(a,b)=>{d.userConfigs&&d.userConfigs[b]&&(d.userConfigs[b].uid=a)}),
this.transcodingConfig=d,this.connection)try{var l,m,n;let a=await this.connection.request("request",{clientRequest:{command:"UpdateTranscoding",transcodingConfig:this.transcodingConfig}},!1,{command:"UpdateTranscoding",workerType:1,requestByUser:!0,tid:y(l=Qb(uc(m=this.streamingTasks).call(m))).call(l,a=>a.taskId).join("#")});h.debug(p(n="[".concat(this.spec.clientId,"] update live transcoding config success, code: ")).call(n,a.code,", config:"),z(this.transcodingConfig))}catch(F){var t;if(!F.data||
!F.data.retry)throw F;F.data.changeAddress&&this.connection.tryNextAddress();r(t=this.streamingTasks).call(t,a=>{h.warning("[".concat(this.spec.clientId,"] live streaming receive error"),F.toString(),"try to republish",a.url);this.startLiveStreamingTask(a.url,a.mode,F).then(()=>{var b;h.debug(p(b="[".concat(this.spec.clientId,"] live streaming republish ")).call(b,a.url," success"))}).catch(b=>{h.error("[".concat(this.spec.clientId,"] live streaming republish failed"),a.url,b.toString());this.onLiveStreamError&&
this.onLiveStreamError(a.url,b)})})}}setInjectStreamConfig(a,b){this.injectConfig=Qa({},this.injectConfig,a);this.injectLoopTimes=b}async startLiveStreamingTask(a,b,d){var e,f,g,k;if(U(e=Qb(uc(f=this.streamingTasks).call(f))).call(e,a=>a.mode===oa.INJECT)&&b===oa.INJECT)return(new n(m.LIVE_STREAMING_TASK_CONFLICT,"inject stream over limit")).throw();if(!this.transcodingConfig&&b===oa.TRANSCODE)throw new n(m.INVALID_OPERATION,"[LiveStreaming] no transcoding config found, can not start transcoding streaming task");
e={command:"PublishStream",ts:v(),url:a,uid:this.spec.uid.toString(),autoDestroyTime:30};h.debug(p(g=p(k="[".concat(this.spec.clientId,"] start live streaming ")).call(k,a,", mode: ")).call(g,b));g=await this.taskMutex.lock();if(!this.connection&&d)return void g();if(this.streamingTasks.get(a)&&!d)return g(),(new n(m.LIVE_STREAMING_TASK_CONFLICT)).throw();try{this.connection||(this.connection=await this.connect(b))}catch(w){throw g(),w;}switch(b){case oa.TRANSCODE:e.transcodingConfig=ac({},this.transcodingConfig);
break;case oa.INJECT:e={cname:this.spec.cname,command:"InjectStream",sid:this.spec.sid,transcodingConfig:this.injectConfig,ts:v(),url:a,loopTimes:this.injectLoopTimes}}this.uapResponse&&this.uapResponse.vid&&(e.vid=this.uapResponse.vid);this.isStartingStreamingTask=!0;k=this.lastTaskId++;try{var l;let f=new x((b,e)=>{Gb(this.retryTimeout).then(()=>{if(d)return e(d);const b=this.statusError.get(a);return b?(this.statusError.delete(a),e(b)):void 0})}),q=await x.race([this.connection.request("request",
{clientRequest:e},!0,{url:a,command:"PublishStream",workerType:b===oa.TRANSCODE?1:2,requestByUser:!d,tid:k.toString()}),f]);this.isStartingStreamingTask=!1;h.debug(p(l="[".concat(this.spec.clientId,"] live streaming started, code: ")).call(l,q.code));this.streamingTasks.set(a,{clientRequest:e,mode:b,url:a,taskId:k});g()}catch(w){if(g(),this.isStartingStreamingTask=!1,!w.data||!w.data.retry||d)throw w;return w.data.changeAddress?(this.connection.tryNextAddress(),await this.startLiveStreamingTask(a,
b,w)):await this.startLiveStreamingTask(a,b,w)}}stopLiveStreamingTask(a){return new x((b,d)=>{let e=this.streamingTasks.get(a);if(!e||!this.connection)return(new n(m.UNEXPECTED_ERROR,"can not find streaming task to stop")).throw();let f=e.mode;e.abortTask=()=>{h.debug("[".concat(this.spec.clientId,"] stop live streaming success(worker exception)"));this.streamingTasks.delete(a);b()};this.connection.request("request",{clientRequest:{command:f===oa.INJECT?"UninjectStream":"UnpublishStream",url:e.url}},
!1,{url:a,command:"UnPublishStream",workerType:f===oa.TRANSCODE?1:2,requestByUser:!0,tid:(this.lastTaskId++).toString()}).then(d=>{var e;h.debug(p(e="[".concat(this.spec.clientId,"] stop live streaming success, code: ")).call(e,d.code));this.streamingTasks.delete(a);0===this.streamingTasks.size&&f!==oa.INJECT&&(this.connection&&this.connection.close(),this.connection=void 0);b();f===oa.INJECT&&this.onInjectStatusChange&&this.onInjectStatusChange(5,this.spec.uid,a)}).catch(d)})}async controlInjectStream(a,
b,d,e){let f=this.streamingTasks.get(a);if(!f||!this.connection||f.mode!==oa.INJECT)throw new n(m.INVALID_OPERATION,"can not find inject stream task to control");return(await this.connection.request("request",{clientRequest:{command:"ControlStream",url:a,control:b,audioVolume:d,position:e}})).serverResponse}resetAllTask(){var a;let b=Qb(uc(a=this.streamingTasks).call(a));this.terminate();for(let a of b)this.startLiveStreamingTask(a.url,a.mode).catch(b=>{this.onLiveStreamError&&this.onLiveStreamError(a.url,
b)})}terminate(){this.cancelToken&&this.cancelToken.cancel();this.streamingTasks=new Z;this.isStartingStreamingTask=!1;this.statusError=new Z;this.cancelToken=Ib.CancelToken.source();this.uapResponse=void 0;this.connection&&this.connection.close();this.connection=void 0}async connect(a){if(this.connection)throw new n(m.UNEXPECTED_ERROR,"live streaming connection has already connected");let b=await Na(this,Tc.REQUEST_WORKER_MANAGER_LIST,a);return this.uapResponse=b,this.connection=new iq(b.workerToken,
this.spec,this.wsRetryConfig,a),this.connection.on(pb.WARNING,(a,b)=>this.onLiveStreamWarning&&this.onLiveStreamWarning(b,a)),this.connection.on(pb.PUBLISH_STREAM_STATUS,a=>this.handlePublishStreamServer(a)),this.connection.on(pb.INJECT_STREAM_STATUS,a=>this.handleInjectStreamServerStatus(a)),this.connection.on(pb.REQUEST_NEW_ADDRESS,(b,e)=>{if(!this.connection)return e(new n(m.UNEXPECTED_ERROR,"can not get new live streaming address list"));Na(this,Tc.REQUEST_WORKER_MANAGER_LIST,a).then(a=>{this.uapResponse=
a;b(a.addressList)}).catch(e)}),await this.connection.init(b.addressList),this.connection}handlePublishStreamServer(a){var b=a.serverStatus&&a.serverStatus.url||"empty_url";let d=this.streamingTasks.get(b);switch(a.code){case la.PUBLISH_STREAM_STATUS_ERROR_PUBLISH_BROKEN:case la.PUBLISH_STREAM_STATUS_ERROR_RTMP_CONNECT:case la.PUBLISH_STREAM_STATUS_ERROR_RTMP_HANDSHAKE:case la.PUBLISH_STREAM_STATUS_ERROR_RTMP_PUBLISH:{let e=new n(m.LIVE_STREAMING_CDN_ERROR,"",{code:a.code});if(d)return h.error(e.toString()),
this.onLiveStreamError&&this.onLiveStreamError(b,e);if(!this.isStartingStreamingTask)break;this.statusError.set(b,e)}case la.LIVE_STREAM_RESPONSE_WORKER_LOST:case la.LIVE_STREAM_RESPONSE_WORKER_QUIT:var e;if(this.connection){this.connection.tryNextAddress();b=Qb(uc(e=this.streamingTasks).call(e));for(let d of b)d.abortTask?d.abortTask():(h.warning("[".concat(this.spec.clientId,"] publish stream status code"),a.code,"try to republish",d.url),this.startLiveStreamingTask(d.url,d.mode,new n(m.LIVE_STREAMING_INTERNAL_SERVER_ERROR,
"",{code:a.code})).then(()=>{h.debug("[".concat(this.spec.clientId,"] republish live stream success"),d.url)}).catch(a=>{h.error(a.toString());this.onLiveStreamError&&this.onLiveStreamError(d.url,a)}))}}}handleInjectStreamServerStatus(a){let b=Number(a.uid),d=a.serverStatus&&a.serverStatus.url;switch(a.code){case 200:return void(this.onInjectStatusChange&&this.onInjectStatusChange(0,b,d));case 451:return this.onInjectStatusChange&&this.onInjectStatusChange(1,b,d),void this.streamingTasks.delete(d);
case 453:return this.onInjectStatusChange&&this.onInjectStatusChange(2,b,d),void this.streamingTasks.delete(d);case 470:return this.onInjectStatusChange&&this.onInjectStatusChange(10,b,d),void this.streamingTasks.delete(d);case 499:return this.onInjectStatusChange&&this.onInjectStatusChange(3,b,d),void this.streamingTasks.delete(d);default:return void h.debug("inject stream server status",a)}}hasUrl(a){return this.streamingTasks.has(a)}}class si{constructor(){this.destChannelMediaInfos=new Z}setSrcChannelInfo(a){Hh(a);
this.srcChannelMediaInfo=a}addDestChannelInfo(a){Hh(a);this.destChannelMediaInfos.set(a.channelName,a)}removeDestChannelInfo(a){Me(a);this.destChannelMediaInfos.delete(a)}getSrcChannelMediaInfo(){return this.srcChannelMediaInfo}getDestChannelMediaInfo(){return this.destChannelMediaInfos}}class kq extends cb{constructor(a,b,d){super();this.requestId=1;this.onOpen=()=>{this.emit("open");this.startHeartBeatCheck()};this.onClose=a=>{this.emit("close");this.dispose()};this.onMessage=a=>{a=JSON.parse(a.data);
if(!a||"serverResponse"!==a.command||!a.requestId)return a&&"serverStatus"===a.command&&a.serverStatus&&a.serverStatus.command?(this.emit("status",a.serverStatus),void this.emit(a.serverStatus.command,a.serverStatus)):void 0;this.emit("req_".concat(a.requestId),a)};this.joinInfo=a;this.clientId=b;this.ws=new ug("cross-channel-".concat(this.clientId),d);this.ws.on(T.RECONNECTING,()=>{this.ws.reconnectMode="retry";this.emit("reconnecting")});this.ws.on(T.CONNECTED,this.onOpen);this.ws.on(T.ON_MESSAGE,
this.onMessage);this.ws.on(T.CLOSED,this.onClose)}isConnect(){return"connected"===this.ws.state}sendMessage(a){let b=this.requestId++;return a.requestId=b,a.seq=b,this.ws.sendMessage(a),b}waitStatus(a){return new x((b,d)=>{let e=window.setTimeout(()=>{d(new n(m.TIMEOUT,"wait status timeout, status: ".concat(a)))},5E3);this.once(a,f=>{window.clearTimeout(e);f.state&&0!==f.state?d(new n(m.CROSS_CHANNEL_WAIT_STATUS_ERROR,"wait status error, status: ".concat(a))):b()});this.once("dispose",()=>{window.clearTimeout(e);
d(new n(m.WS_ABORT))})})}async request(a){if("closed"===this.ws.state)throw new n(m.WS_DISCONNECT);let b=()=>new x((a,b)=>{this.ws.once(T.CLOSED,()=>b(new n(m.WS_ABORT)));this.ws.once(T.CONNECTED,a)});"connected"!==this.ws.state&&await b();let d=this.sendMessage(a);a=await new x((a,b)=>{const e=()=>{b(new n(m.WS_ABORT))};this.ws.once(T.RECONNECTING,e);this.ws.once(T.CLOSED,e);this.once("req_".concat(d),a);Gb(3E3).then(()=>{this.removeAllListeners("req_".concat(d));this.ws.off(T.RECONNECTING,e);this.ws.off(T.CLOSED,
e);b(new n(m.TIMEOUT,"cross channel ws request timeout"))})});if(!a||200!==a.code)throw new n(m.CROSS_CHANNEL_SERVER_ERROR_RESPONSE,"response: ".concat(z(a)));return a}async connect(a){this.ws.removeAllListeners(T.REQUEST_NEW_URLS);this.ws.on(T.REQUEST_NEW_URLS,b=>{b(a)});await this.ws.init(a)}dispose(){this.clearHeartBeatCheck();this.emit("dispose");this.removeAllListeners();this.ws.close()}sendPing(a){let b=this.requestId++;return a.requestId=b,this.ws.sendMessage(a),b}startHeartBeatCheck(){this.heartBeatTimer=
window.setInterval(()=>{this.sendPing({command:"ping",appId:this.joinInfo.appId,cname:this.joinInfo.cname,uid:this.joinInfo.uid.toString(),sid:this.joinInfo.sid,ts:+new Date,requestId:0})},3E3)}clearHeartBeatCheck(){window.clearInterval(this.heartBeatTimer);this.heartBeatTimer=void 0}}class lq extends cb{constructor(a,b,d,e){super();this.cancelToken=Ib.CancelToken.source();this.requestId=0;this._state="RELAY_STATE_IDLE";this.errorCode="RELAY_OK";this.onStatus=a=>{var b;h.debug(p(b="[".concat(this.clientId,
"] ChannelMediaStatus: ")).call(b,z(a)));a&&a.command&&("onAudioPacketReceived"===a.command&&this.emit("event","PACKET_RECEIVED_AUDIO_FROM_SRC"),"onVideoPacketReceived"===a.command&&this.emit("event","PACKET_RECEIVED_VIDEO_FROM_SRC"),"onSrcTokenPrivilegeDidExpire"===a.command&&(this.errorCode="SRC_TOKEN_EXPIRED",this.state="RELAY_STATE_FAILURE"),"onDestTokenPrivilegeDidExpire"===a.command&&(this.errorCode="DEST_TOKEN_EXPIRED",this.state="RELAY_STATE_FAILURE"))};this.onReconnect=async()=>{h.debug("[".concat(this.clientId,
"] ChannelMediaSocket disconnect, reconnecting"));this.emit("event","NETWORK_DISCONNECTED");this.state="RELAY_STATE_IDLE";this.prevChannelMediaConfig&&this.sendStartRelayMessage(this.prevChannelMediaConfig).catch(a=>{"RELAY_STATE_IDLE"!==this.state&&(h.error("auto restart channel media relay failed",a.toString()),this.errorCode="SERVER_CONNECTION_LOST",this.state="RELAY_STATE_FAILURE")})};this.joinInfo=a;this.clientId=b;this.signal=new kq(this.joinInfo,this.clientId,d);this.httpRetryConfig=e}set state(a){a!==
this._state&&("RELAY_STATE_FAILURE"!==a&&(this.errorCode="RELAY_OK"),this.emit("state",a,this.errorCode),this._state=a)}get state(){return this._state}async startChannelMediaRelay(a){if("RELAY_STATE_IDLE"!==this.state)throw new n(m.INVALID_OPERATION);this.state="RELAY_STATE_CONNECTING";await this.connect();h.debug("[".concat(this.clientId,"] startChannelMediaRelay: connect success"));try{await this.sendStartRelayMessage(a)}catch(b){if(b.data&&b.data.serverResponse&&"SetSourceChannel"===b.data.serverResponse.command)throw new n(m.CROSS_CHANNEL_FAILED_JOIN_SRC);
if(b.data&&b.data.serverResponse&&"SetDestChannelStatus"===b.serverResponse.command)throw new n(m.CROSS_CHANNEL_FAILED_JOIN_DEST);if(b.data&&b.data.serverResponse&&"StartPacketTransfer"===b.serverResponse.command)throw new n(m.CROSS_CHANNEL_FAILED_PACKET_SENT_TO_DEST);throw b;}this.prevChannelMediaConfig=a}async updateChannelMediaRelay(a){if("RELAY_STATE_RUNNING"!==this.state)throw new n(m.INVALID_OPERATION);await this.sendUpdateMessage(a);this.prevChannelMediaConfig=a}async stopChannelMediaRelay(){await this.sendStopRelayMessage();
h.debug("[".concat(this.clientId,"] stopChannelMediaRelay: send stop message success"));this.state="RELAY_STATE_IDLE";this.dispose()}dispose(){h.debug("[".concat(this.clientId,"] disposeChannelMediaRelay"));this.cancelToken.cancel();this.cancelToken=Ib.CancelToken.source();this.state="RELAY_STATE_IDLE";this.emit("dispose");this.signal.dispose();this.prevChannelMediaConfig=void 0}async connect(){let a=await um(this.joinInfo,this.cancelToken.token,this.httpRetryConfig);this.workerToken=a.workerToken;
await this.signal.connect(a.addressList);this.emit("event","NETWORK_CONNECTED");this.signal.on("status",this.onStatus);this.signal.on("reconnecting",this.onReconnect)}async sendStartRelayMessage(a){var b=this.genMessage(Ia.StopPacketTransfer);await this.signal.request(b);await this.signal.waitStatus("Normal Quit");h.debug("[".concat(this.clientId,"] startChannelMediaRelay: StopPacketTransfer success"));b=this.genMessage(Ia.SetSdkProfile,a);await this.signal.request(b);h.debug("[".concat(this.clientId,
"] startChannelMediaRelay: SetSdkProfile success"));b=this.genMessage(Ia.SetSourceChannel,a);await this.signal.request(b);await this.signal.waitStatus("SetSourceChannelStatus");this.emit("event","PACKET_JOINED_SRC_CHANNEL");h.debug("[".concat(this.clientId,"] startChannelMediaRelay: SetSourceChannel success"));b=this.genMessage(Ia.SetSourceUserId,a);await this.signal.request(b);h.debug("[".concat(this.clientId,"] startChannelMediaRelay: SetSourceUserId success"));b=this.genMessage(Ia.SetDestChannel,
a);await this.signal.request(b);await this.signal.waitStatus("SetDestChannelStatus");this.emit("event","PACKET_JOINED_DEST_CHANNEL");h.debug("[".concat(this.clientId,"] startChannelMediaRelay: SetDestChannel success"));a=this.genMessage(Ia.StartPacketTransfer,a);await this.signal.request(a);this.emit("event","PACKET_SENT_TO_DEST_CHANNEL");this.state="RELAY_STATE_RUNNING";h.debug("[".concat(this.clientId,"] startChannelMediaRelay: StartPacketTransfer success"))}async sendUpdateMessage(a){a=this.genMessage(Ia.UpdateDestChannel,
a);await this.signal.request(a);this.emit("event","PACKET_UPDATE_DEST_CHANNEL");h.debug("[".concat(this.clientId,"] sendUpdateMessage: UpdateDestChannel success"))}async sendStopRelayMessage(){let a=this.genMessage(Ia.StopPacketTransfer);await this.signal.request(a);h.debug("[".concat(this.clientId,"] sendStopRelayMessage: StopPacketTransfer success"))}genMessage(a,b){let d=[],e=[],f=[];this.requestId+=1;let g={appId:this.joinInfo.appId,cname:this.joinInfo.cname,uid:this.joinInfo.uid.toString(),sdkVersion:fb,
sid:this.joinInfo.sid,ts:v(),requestId:this.requestId,seq:this.requestId,allocate:!0,clientRequest:{}};"4.3.0"===g.sdkVersion&&(g.sdkVersion="0.0.1");let h=null,l=null;switch(a){case Ia.SetSdkProfile:return g.clientRequest={command:"SetSdkProfile",type:"multi_channel"},g;case Ia.SetSourceChannel:if(l=b&&b.getSrcChannelMediaInfo(),!l)throw new n(m.UNEXPECTED_ERROR,"can not find source config");return g.clientRequest={command:"SetSourceChannel",uid:"0",channelName:l.channelName,token:l.token||this.joinInfo.appId},
g;case Ia.SetSourceUserId:if(l=b&&b.getSrcChannelMediaInfo(),!l)throw new n(m.UNEXPECTED_ERROR,"can not find source config");return g.clientRequest={command:"SetSourceUserId",uid:l.uid+""},g;case Ia.SetDestChannel:if(h=b&&b.getDestChannelMediaInfo(),!h)throw new n(m.UNEXPECTED_ERROR,"can not find dest config");return r(h).call(h,a=>{d.push(a.channelName);e.push(a.uid+"");f.push(a.token||this.joinInfo.appId)}),g.clientRequest={command:"SetDestChannel",channelName:d,uid:e,token:f},g;case Ia.StartPacketTransfer:return g.clientRequest=
{command:"StartPacketTransfer"},g;case Ia.Reconnect:return g.clientRequest={command:"Reconnect"},g;case Ia.StopPacketTransfer:return g.clientRequest={command:"StopPacketTransfer"},g;case Ia.UpdateDestChannel:if(h=b&&b.getDestChannelMediaInfo(),!h)throw new n(m.UNEXPECTED_ERROR,"can not find dest config");return r(h).call(h,a=>{d.push(a.channelName);e.push(a.uid+"");f.push(a.token||this.joinInfo.appId)}),g.clientRequest={command:"UpdateDestChannel",channelName:d,uid:e,token:f},g}return g}}class mq{constructor(a,
b){this._trust_stream_added_state_=this._trust_video_mute_state_=this._trust_audio_mute_state_=this._trust_video_enabled_state_=this._trust_audio_enabled_state_=this._trust_in_room_=!0;this._video_muted_=this._audio_muted_=!1;this._video_enabled_=this._audio_enabled_=!0;this._video_added_=this._audio_added_=!1;this.uid=a;this._uintid=b}get hasVideo(){return this._video_enabled_&&!this._video_muted_&&this._video_added_}get hasAudio(){return this._audio_enabled_&&!this._audio_muted_&&this._audio_added_}get audioTrack(){if(this.hasAudio)return this._audioTrack}get videoTrack(){if(this.hasVideo)return this._videoTrack}}
class nq extends cb{constructor(a){var b,d,e,f;let g;if(super(),this._users=[],this._sessionId=null,this._bindEnabledTracks=[],this._leaveMutex=new fc("client-leave"),this._publishMutex=new fc("client-publish"),this._subscribeMutex=new Z,this._remoteStream=new Z,this._encryptionMode="none",this._encryptionSecret=null,this._turnServer={servers:[],mode:"auto"},this._cloudProxyServerMode="disabled",this._isDualStreamEnabled=!1,this._streamFallbackTypeCacheMap=new Z,this._remoteStreamTypeCacheMap=new Z,
this._axiosCancelSource=Ib.CancelToken.source(),this._networkQualitySensitivity="normal",this._handleLocalTrackEnable=(a,b,d)=>{this.publish(a,!1).then(b).catch(d)},this._handleLocalTrackDisable=(a,b,d)=>{this.unpublish(a,!1).then(b).catch(d)},this._handleUserOnline=a=>{var b;this.isStringUID&&"string"!=typeof a.uid&&h.error("[".concat(this._clientId,"] StringUID is Mixed with UintUID"));let d=U(b=this._users).call(b,b=>b.uid===a.uid);d?d._trust_in_room_=!0:(b=new mq(a.uid,a.uint_id||a.uid),this._users.push(b),
h.debug("[".concat(this._clientId,"] user online"),a.uid),this.emit(Q.USER_JOINED,b))},this._handleUserOffline=a=>{var b;let d=U(b=this._users).call(b,b=>b.uid===a.uid);d&&(this._handleRemoveStream(a),ed(this._users,d),this._remoteStreamTypeCacheMap.delete(d.uid),this._streamFallbackTypeCacheMap.delete(d.uid),h.debug("[".concat(this._clientId,"] user offline"),a.uid,"reason:",a.reason),this.emit(Q.USER_LEAVED,d,a.reason))},this._handleAddAudioOrVideoStream=(a,b,d)=>{var e,f,g;let k=U(e=this._users).call(e,
a=>a.uid===b);if(!k)return void h.error("[".concat(this._clientId,"] can not find target user!(on_add_stream)"));h.debug(p(f=p(g="[".concat(this._clientId,"] stream added with uid ")).call(g,b,", type ")).call(f,a));e="audio"===a?k.hasAudio:k.hasVideo;var l,q;(k._uintid||(k._uintid=d||b),k._trust_stream_added_state_=!0,"audio"===a?k._audio_added_=!0:k._video_added_=!0,("audio"===a?k.hasAudio:k.hasVideo)&&!e)&&(h.info(p(l=p(q="[".concat(this._clientId,"] remote user ")).call(q,k.uid," published ")).call(l,
a)),this.emit(Q.USER_PUBLISHED,k,a));"video"===a?t.onGatewayStream(this._sessionId,Ga.ON_ADD_VIDEO_STREAM,ua.ON_ADD_VIDEO_STREAM,{peer:d||b}):t.onGatewayStream(this._sessionId,Ga.ON_ADD_AUDIO_STREAM,ua.ON_ADD_AUDIO_STREAM,{peer:d||b});(a=this._remoteStream.get(b))&&a.readyToReconnect&&"connecting"===a.connectionState&&a.reconnectPC().catch(a=>{h.error("[".concat(this._clientId,"] resubscribe error"),a.toString())})},this._handleRemoveStream=a=>{var b,d;let e=U(b=this._users).call(b,b=>b.uid===a.uid);
if(!e)return void h.warning("[".concat(this._clientId,"] can not find target user!(on_remove_stream)"));h.debug(p(d="[".concat(this._clientId,"] stream removed with uid ")).call(d,a.uid));b=()=>{};e.hasAudio&&e.hasVideo?b=()=>{var a,b;h.info(p(a="[".concat(this._clientId,"] remote user ")).call(a,e.uid," unpublished audio track"));this.emit(Q.USER_UNPUBLISHED,e,"audio");h.info(p(b="[".concat(this._clientId,"] remote user ")).call(b,e.uid," unpublished video track"));this.emit(Q.USER_UNPUBLISHED,e,
"video")}:e.hasVideo?b=()=>{var a;h.info(p(a="[".concat(this._clientId,"] remote user ")).call(a,e.uid," unpublished video track"));this.emit(Q.USER_UNPUBLISHED,e,"video")}:e.hasAudio&&(b=()=>{var a;h.info(p(a="[".concat(this._clientId,"] remote user ")).call(a,e.uid," unpublished audio track"));this.emit(Q.USER_UNPUBLISHED,e,"audio")});e._trust_stream_added_state_=!0;e._audio_added_=!1;e._video_added_=!1;(d=this._remoteStream.get(e.uid))&&(d.closeP2PConnection(),this._remoteStream.delete(e.uid));
t.onGatewayStream(this._sessionId,Ga.ON_REMOVE_STREAM,ua.ON_REMOVE_STREAM,{peer:a.uint_id||a.uid});b()},this._handleSetStreamLocalEnable=(a,b,d)=>{var e,f,g,k,l,q;let m=U(e=this._users).call(e,a=>a.uid===b);if(!m)return void h.error("[".concat(this._clientId,"] can not find target user!(disable_local)"));h.debug(p(f=p(g=p(k="[".concat(this._clientId,"] local ")).call(k,a," ")).call(g,d?"enabled":"disabled"," with uid ")).call(f,b));e="audio"===a?m.hasAudio:m.hasVideo;if("audio"===a){m._trust_audio_enabled_state_=
!0;var n=m._audio_enabled_;if(m._audio_enabled_=d,m._audio_enabled_===n)return;var r,w;d=m._audio_enabled_?"enable-local-audio":"disable-local-audio";h.debug(p(r=p(w="[".concat(this._clientId,"] user-info-updated, uid: ")).call(w,b,", msg: ")).call(r,d));this.emit(Q.USER_INFO_UPDATED,b,d)}else{m._trust_video_enabled_state_=!0;r=m._video_enabled_;if(m._video_enabled_=d,m._video_enabled_===r)return;var t;d=m._video_enabled_?"enable-local-video":"disable-local-video";h.debug(p(n=p(t="[".concat(this._clientId,
"] user-info-update, uid: ")).call(t,b,", msg: ")).call(n,d));this.emit(Q.USER_INFO_UPDATED,b,d)}d="audio"===a?m.hasAudio:m.hasVideo;if(e!==d){var u,E;if(!e&&d)return h.info(p(u=p(E="[".concat(this._clientId,"] remote user ")).call(E,b," published ")).call(u,a)),void this.emit(Q.USER_PUBLISHED,m,a);if(u=this._remoteStream.get(b))E=Ec({},u.subscribeOptions),E.audio=!!m.hasAudio&&E.audio,E.video=!!m.hasVideo&&E.video,E.audio||E.video?u.setSubscribeOptions(E):(u.closeP2PConnection().catch(a=>{h.warning("close sub pc error",
a)}),this._remoteStream.delete(m.uid));h.info(p(l=p(q="[".concat(this._clientId,"] remote user ")).call(q,m.uid," unpublished ")).call(l,a));this.emit(Q.USER_UNPUBLISHED,m,a)}},this._handleMuteStream=(a,b,d)=>{var e,f,g;h.debug("[".concat(this._clientId,"] receive mute message"),a,b,d);let k=U(e=this._users).call(e,b=>b.uid===a);var l;if(!k)return void h.warning(p(l="[".concat(this._clientId,"] can not find remote user, ignore mute event, uid: ")).call(l,a));e="audio"===b?k.hasAudio:k.hasVideo;if("audio"===
b){k._trust_audio_mute_state_=!0;var m=k._audio_muted_;if(k._audio_muted_=d,k._audio_muted_===m)return;var q,n;d=k._audio_muted_?"mute-audio":"unmute-audio";h.debug(p(q=p(n="[".concat(this._clientId,"] user-info-update, uid: ")).call(n,a,", msg: ")).call(q,d));this.emit(Q.USER_INFO_UPDATED,a,d)}else{k._trust_video_mute_state_=!0;q=k._video_muted_;if(k._video_muted_=d,k._video_muted_===q)return;var r;d=k._video_muted_?"mute-video":"unmute-video";h.debug(p(m=p(r="[".concat(this._clientId,"] user-info-update, uid: ")).call(r,
a,", msg: ")).call(m,d));this.emit(Q.USER_INFO_UPDATED,a,d)}d="audio"===b?k.hasAudio:k.hasVideo;if(e!==d){var t,w;if(!e&&d)return h.info(p(t=p(w="[".concat(this._clientId,"] remote user ")).call(w,a," published ")).call(t,b)),void this.emit(Q.USER_PUBLISHED,k,b);if(t=this._remoteStream.get(a))w=Ec({},t.subscribeOptions),w.audio=!!k.hasAudio&&w.audio,w.video=!!k.hasVideo&&w.video,"video"===b&&t.pc._statsFilter.setVideoIsReady(!1),w.audio||w.video?t.setSubscribeOptions(w):(t.closeP2PConnection().catch(a=>
{h.warning("close sub pc error",a)}),this._remoteStream.delete(k.uid));h.info(p(f=p(g="[".concat(this._clientId,"] remote user ")).call(g,a," unpublished ")).call(f,b));this.emit(Q.USER_UNPUBLISHED,k,b)}},this._handleP2PLost=a=>{h.debug("[".concat(this._clientId,"] receive p2p lost"),a);let b=null;if(this._highStream&&this._highStream.pc.ID===a.p2pid)b=this._highStream;else if(this._lowStream&&this._lowStream.pc.ID===a.p2pid)b=this._lowStream;else{var d;r(d=this._remoteStream).call(d,d=>{d.pc.ID===
a.p2pid&&(b=d)})}b?b.emit(H.GATEWAY_P2P_LOST,a.p2pid):h.warning("P2PLost stream not found",a)},this._handleTokenWillExpire=()=>{h.debug("[".concat(this._clientId,"] received message onTokenPrivilegeWillExpire"));this.emit(Q.ON_TOKEN_PRIVILEGE_WILL_EXPIRE)},this._handleBeforeUnload=a=>{void 0!==a.returnValue&&""!==a.returnValue||(this.leave(),h.info("[".concat(this._clientId,"] auto leave onbeforeunload")))},this._handleUpdateNetworkQuality=()=>{var a;if("normal"!==this._networkQualitySensitivity){if(navigator&&
void 0!==navigator.onLine&&!navigator.onLine)return void this.emit(Q.NETWORK_QUALITY,{downlinkNetworkQuality:6,uplinkNetworkQuality:6});var b={downlinkNetworkQuality:0,uplinkNetworkQuality:0};this._highStream&&!this._highStream.detecting&&(b.uplinkNetworkQuality=this._highStream.getNetworkQuality());var d=0;r(a=this._remoteStream).call(a,a=>d+=a.getNetworkQuality());0<this._remoteStream.size&&(b.downlinkNetworkQuality=Math.round(d/this._remoteStream.size));this.emit(Q.NETWORK_QUALITY,b)}},this._codec=
a.codec,this._mode=a.mode,a.proxyServer&&(this._proxyServer=a.proxyServer,t.setProxyServer(this._proxyServer),h.setProxyServer(this._proxyServer)),a.turnServer&&(this._turnServer=Ec({},this._turnServer,{mode:"manual"},a.turnServer)),this._clientId=sa(5,"client-"),h.info(p(b=p(d=p(e=p(f="[".concat(this._clientId,"] Initializing AgoraRTC client v")).call(f,fb," build: ")).call(e,"v4.3.0-0-g0586d79(1/27/2021, 4:10:54 PM)",", mode: ")).call(d,this._mode,", codec: ")).call(b,this._codec)),a.clientRoleOptions)try{Gh(a.clientRoleOptions),
g=Qa({},a.clientRoleOptions)}catch(q){var k;h.warning(p(k="[".concat(this._clientId,"] ")).call(k,q.toString()))}this._statsCollector=new bd(this._clientId);this._statsCollector.onStatsException=(a,b,d)=>{var e,f,g;h.debug(p(e=p(f=p(g="[".concat(this._clientId,"] receive exception msg, code: ")).call(g,a,", msg: ")).call(f,b,", uid: ")).call(e,d));this.emit(Q.EXCEPTION,{code:a,msg:b,uid:d})};this._statsCollector.onUploadPublishDuration=(a,b,d,e)=>{var f;let g=U(f=this._users).call(f,b=>b.uid===a);
g&&t.peerPublishStatus(this._sessionId,{subscribeElapse:e,audioPublishDuration:b,videoPublishDuration:d,peer:g._uintid})};this._gateway=new Mp({clientId:this._clientId,mode:this._mode,codec:this._codec,websocketRetryConfig:a.websocketRetryConfig||Ra,httpRetryConfig:a.httpRetryConfig||Ra,forceWaitGatewayResponse:void 0===a.forceWaitGatewayResponse||a.forceWaitGatewayResponse,statsCollector:this._statsCollector,role:a.role,clientRoleOptions:g});this._config=a;this._configDistribute=new Np(this);this._handleGatewayEvents();
mk.push(this)}get connectionState(){return this._gateway.state}get remoteUsers(){return this._users}get localTracks(){return this._highStream?this._highStream.getAllTracks():[]}get uid(){return this._uid}get channelName(){return this._channelName}get isStringUID(){return!!this._joinInfo&&!!this._joinInfo.stringUid}async join(a,b,d,e,f){var g;let k=t.reportApiInvoke(this._sessionId,{name:A.JOIN,options:[a,b,d,e],tag:C.TRACER});try{if(!d&&null!==d)throw new n(m.INVALID_PARAMS,"Invalid token: ".concat(d,
". If you don not use token, set it to null"));d&&Ma(d,"token",1,2047);Me(b);e&&Ne(e);f&&Ma(f,"optionalInfo",1,2047)}catch(F){throw k.onError(F),F;}if(h.info(p(g="[".concat(this._clientId,"] start join channel ")).call(g,b)),this._leaveMutex.isLocked)h.debug("[".concat(this._clientId,"] join: waiting leave operation")),(await this._leaveMutex.lock())(),h.debug("[".concat(this._clientId,"] join: continue"));if("DISCONNECTED"!==this.connectionState)throw a=new n(m.INVALID_OPERATION,"[".concat(this._clientId,
"] Client already in connecting/connected state")),k.onError(a),a;this._sessionId||(this._sessionId=sa(32,"").toUpperCase());this._gateway.state="CONNECTING";let l={clientId:this._clientId,appId:a,sid:this._sessionId,cname:b,uid:"string"!=typeof e?e:null,turnServer:this._turnServer,proxyServer:this._proxyServer,token:d||a,cloudProxyServer:this._cloudProxyServerMode,optionalInfo:f};"string"==typeof e&&(l.stringUid=e,this._uintUid?(l.uid=this._uintUid,this._uintUid=void 0):l.uid=0);"none"!==this._encryptionMode&&
this._encryptionSecret&&(l.aesmode=this._encryptionMode,l.aespassword=this._encryptionSecret);this._startSession(this._sessionId,{channel:b,appId:a});Fc(()=>{"CONNECTING"===this.connectionState&&t.joinChannelTimeout(this._sessionId,5)},5E3);try{var r;if(await sm(l,this._axiosCancelSource.token,this._config.httpRetryConfig||Ra),l.stringUid&&!l.uid){var u;let a=await fi(l.stringUid,l,this._axiosCancelSource.token,this._config.httpRetryConfig||Ra);h.debug(p(u="getUserAccount Success ".concat(l.stringUid,
" => ")).call(u,a));l.uid=a}let e=await ei(l,this._axiosCancelSource.token,this._config.httpRetryConfig||Ra);var v;l.proxyServer&&(e.gatewayInfo.gatewayAddrs=y(v=e.gatewayInfo.gatewayAddrs).call(v,a=>{var b,d;a=a.split(":");return p(b=p(d="".concat(l.proxyServer,"/ws/?h=")).call(d,a[0],"&p=")).call(b,a[1])}));this._configDistribute.updateConfig(this._clientId,e.configDistribute);this._key=d||a;this._joinInfo=Ec({},l,{cid:e.gatewayInfo.cid,uid:l.uid?l.uid:e.gatewayInfo.uid,vid:e.gatewayInfo.vid,apResponse:e.gatewayInfo.res,
uni_lbs_ip:e.gatewayInfo.uni_lbs_ip,gatewayAddrs:e.gatewayInfo.gatewayAddrs});let f=await this._gateway.join(this._joinInfo,this._key);return k.onSuccess(f),this._appId=a,this._channelName=l.cname,this._uid=f,this._networkQualityInterval&&window.clearInterval(this._networkQualityInterval),this._networkQualityInterval=window.setInterval(this._handleUpdateNetworkQuality,2E3),window.addEventListener("beforeunload",this._handleBeforeUnload),h.info(p(r="[".concat(this._clientId,"] Joining channel success: ")).call(r,
b)),f}catch(F){throw h.error("[".concat(this._clientId,"] Joining channel failed, rollback"),F),F.code!==m.OPERATION_ABORTED&&(this._gateway.state="DISCONNECTED",this._reset()),k.onError(F),F;}}async leave(){let a=t.reportApiInvoke(this._sessionId,{name:A.LEAVE,options:[],tag:C.TRACER});h.info("[".concat(this._clientId,"] Leaving channel"));window.removeEventListener("beforeunload",this._handleBeforeUnload);this._reset();let b=await this._leaveMutex.lock();if("DISCONNECTED"===this.connectionState)return h.info("[".concat(this._clientId,
"] Leaving channel repeated, success")),b(),a.onSuccess();await this._gateway.leave("CONNECTED"!==this.connectionState);h.info("[".concat(this._clientId,"] Leaving channel success"));b();a.onSuccess()}async publish(a,b=!0){var d,e;hc(a)||(a=[a]);let f=t.reportApiInvoke(this._sessionId,{name:A.PUBLISH,options:y(a).call(a,a=>a?Object(a).toString():"null"),tag:C.TRACER});if(0===a.length)return a=new n(m.INVALID_PARAMS,"track list is empty"),f.onError(a),a.throw();if("live"===this._mode&&"audience"===
this._gateway.role)return a=new n(m.INVALID_OPERATION,"audience can not publish stream"),f.onError(a),a.throw();for(let d of a){if(!(d instanceof Ae))return a=new n(m.INVALID_PARAMS,"pamameter is not local track"),f.onError(a),a.throw();if(!d._enabled&&b)return a=new n(m.TRACK_IS_DISABLED,"can not publish a disabled track: ".concat(d.getTrackId())),f.onError(a),a.throw()}h.info(p(d="[".concat(this._clientId,"] Publishing tracks, id ")).call(d,y(a).call(a,a=>"".concat(a.getTrackId()," "))));b&&r(a).call(a,
a=>{var b;-1===D(b=this._bindEnabledTracks).call(b,a)&&(a.addListener(L.NEED_ADD_TRACK,this._handleLocalTrackEnable),a.addListener(L.NEED_REMOVE_TRACK,this._handleLocalTrackDisable),this._bindEnabledTracks.push(a))});d=await this._publishMutex.lock();try{let b=await this._publishHighStream(a),e=(b.audioTrack,b.videoTrack);this._isDualStreamEnabled&&e&&!this._lowStream&&await this._publishLowStream(e);d();f.onSuccess()}catch(g){throw d(),b&&r(a).call(a,a=>{var b,d;let e=D(b=this._bindEnabledTracks).call(b,
a);-1!==e&&(a.off(L.NEED_ADD_TRACK,this._handleLocalTrackEnable),a.off(L.NEED_REMOVE_TRACK,this._handleLocalTrackDisable),Ka(d=this._bindEnabledTracks).call(d,e,1))}),f.onError(g),h.error("[".concat(this._clientId,"] publish error"),g.toString()),g;}h.info(p(e="[".concat(this._clientId,"] Publish success, id ")).call(e,y(a).call(a,a=>"".concat(a.getTrackId()," "))))}async unpublish(a,b=!0){var d,e,f;if(!this._highStream)return void h.warning("[".concat(this._clientId,"] Could not find tracks to unpublish"));
var g=this._highStream.getAllTracks();a?hc(a)||(a=[a]):a=this._highStream.getAllTracks();g=Vl(g,a);let k=t.reportApiInvoke(this._sessionId,{name:A.UNPUBLISH,options:y(a).call(a,a=>a.getTrackId()),tag:C.TRACER});h.info(p(d=p(e="[".concat(this._clientId,"] Unpublish tracks, tracks ")).call(e,y(a).call(a,a=>"".concat(a.getTrackId()," ")),", isClosePC: ")).call(d,g));d=g?void 0:await this._publishMutex.lock();if(!this._highStream)return h.warning("[".concat(this._clientId,"] Could not find tracks to unpublish")),
void(d&&d());try{this._lowStream&&0<P(a).call(a,a=>"video"===a.trackMediaType).length&&(await this._lowStream.closeP2PConnection(),this._lowStream=void 0),g?await this._highStream.closeP2PConnection():await this._highStream.removeTracks(a,b),d&&d()}catch(q){if(q.code!==m.OPERATION_ABORTED)throw k.onError(q),h.error("[".concat(this._clientId,"] unpublish error"),q.toString()),d&&d(),q;h.debug("[".concat(this._clientId,"] ignore unpub operation abort"));d&&d()}this._highStream&&"disconnected"===this._highStream.connectionState&&
(this._highStream=void 0,this._lowStream=void 0);b&&r(a).call(a,a=>{var b,d;let e=D(b=this._bindEnabledTracks).call(b,a);-1!==e&&(a.off(L.NEED_ADD_TRACK,this._handleLocalTrackEnable),a.off(L.NEED_REMOVE_TRACK,this._handleLocalTrackDisable),Ka(d=this._bindEnabledTracks).call(d,e,1))});h.info(p(f="[".concat(this._clientId,"] Unpublish success,tracks ")).call(f,y(a).call(a,a=>"".concat(a.getTrackId()))));k.onSuccess()}async subscribe(a,b){var d,e,f,g;Ua(b,"mediaType",["audio","video"]);let k=t.reportApiInvoke(this._sessionId,
{name:A.SUBSCRIBE,options:[a.uid,b],tag:C.TRACER});if(!this._joinInfo)throw b=new n(m.INVALID_OPERATION,"Can't subscribe stream, not joined"),k.onError(b),b;if("CONNECTED"!==this.connectionState&&"RECONNECTING"!==this.connectionState)throw b=new n(m.INVALID_OPERATION,"Can't subscribe stream in ".concat(this.connectionState," state")),k.onError(b),b;if(!U(d=this._users).call(d,b=>b===a)){var l;b=new n(m.INVALID_REMOTE_USER,"user is not in the channel");throw h.error(p(l="[".concat(this._clientId,"] can not subscribe ")).call(l,
a.uid,", this user is not in the channel")),k.onError(b),b;}if(!a.hasAudio&&!a.hasVideo){var r;b=new n(m.INVALID_REMOTE_USER,"user is not published");throw h.error(p(r="[".concat(this._clientId,"] can not subscribe ")).call(r,a.uid,", user is not published")),k.onError(b),b;}l={audio:"audio"===b,video:"video"===b};if(!a.hasAudio&&l.audio||!a.hasVideo&&l.video){var u,v;var F=new n(m.REMOTE_USER_IS_NOT_PUBLISHED);throw h.error(p(u=p(v="[".concat(this._clientId,"] can not subscribe ")).call(v,a.uid,
" with mediaType ")).call(u,b,", remote track is not published")),k.onError(F),F;}(u=this._subscribeMutex.get(a.uid))||(u=new fc("sub-".concat(a.uid)),this._subscribeMutex.set(a.uid,u));h.info(p(e=p(f="[".concat(this._clientId,"] subscribe user ")).call(f,a.uid,", mediaType: ")).call(e,b));e=await u.lock();f=this._remoteStream.get(a.uid);try{if(f)l.audio=l.audio||f.subscribeOptions.audio,l.video=l.video||f.subscribeOptions.video,await this._gateway.subscribeChange(f,l);else{f=new hq(a,this._statsCollector,
this._joinInfo,l);this._remoteStream.set(a.uid,f);try{await this._gateway.subscribe(f)}catch(za){throw this._remoteStream.delete(a.uid),za;}f.on(H.CONNECTION_STATE_CHANGE,(b,d)=>{"connecting"===b?this.emit(Q.MEDIA_RECONNECT_START,a.uid):"connected"===b&&this.emit(Q.MEDIA_RECONNECT_END,a.uid)})}e()}catch(za){var x;throw k.onError(za),e(),h.error(p(x="[".concat(this._clientId,"] subscribe user ")).call(x,a.uid," error"),za),za;}h.info(p(F=p(g="[".concat(this._clientId,"] subscribe success user ")).call(g,
a.uid,", mediaType: ")).call(F,b));this._defaultStreamFallbackType&&this.setStreamFallbackOption(a.uid,this._defaultStreamFallbackType).catch(a=>{h.warning("[".concat(this._clientId,"] auto set fallback failed"),a)});b="audio"===b?a.audioTrack:a.videoTrack;return b?(k.onSuccess(b.getTrackId()),b):(b=new n(m.UNEXPECTED_ERROR,"can not find remote track in user object"),k.onError(b),b.throw())}async unsubscribe(a,b){var d,e,f,g,k;b&&Ua(b,"mediaType",["audio","video"]);let l=t.reportApiInvoke(this._sessionId,
{name:A.UNSUBSCRIBE,options:[a.uid,b],tag:C.TRACER});if(!U(d=this._users).call(d,b=>b===a)){var r;b=new n(m.INVALID_REMOTE_USER,"user is not in the channel");throw h.error(p(r="[".concat(this._clientId,"] can not subscribe ")).call(r,a.uid,", user is not in the channel")),l.onError(b),b;}h.info(p(e=p(f="[".concat(this._clientId,"] unsubscribe uid: ")).call(f,a.uid,", mediaType: ")).call(e,b));(r=this._subscribeMutex.get(a.uid))||(r=new fc("sub-".concat(a.uid)),this._subscribeMutex.set(a.uid,r));r=
await r.lock();d=this._remoteStream.get(a.uid);var u;if(!d)return h.warning(p(u="[".concat(this._clientId,"]: you have not subscribe the remote user ")).call(u,a.uid)),l.onSuccess(),void r();u=Ec({},d.subscribeOptions);"audio"===b?u.audio=!1:"video"===b?(u.video=!1,d.pc._statsFilter.setVideoIsReady(!1)):(u.audio=!1,u.video=!1);try{u.audio||u.video?await this._gateway.subscribeChange(d,u):(await d.closeP2PConnection(),this._remoteStream.delete(a.uid)),r()}catch(F){var v;if(F.code!==m.OPERATION_ABORTED)throw l.onError(F),
r(),h.error(p(v="[".concat(this._clientId,"] unsubscribe user ")).call(v,a.uid," error"),F.toString()),F;r();h.debug("[".concat(this._clientId,"] ignore unsub operation abort"))}h.info(p(g=p(k="[".concat(this._clientId,"] unsubscribe success uid: ")).call(k,a.uid,", mediaType: ")).call(g,b));l.onSuccess()}setLowStreamParameter(a){if(!a)throw new n(m.INVALID_PARAMS);null==a.width||W(a.width,"streamParameter.width");null==a.height||W(a.height,"streamParameter.height");null==a.framerate||W(a.framerate,
"streamParameter.framerate");null==a.bitrate||W(a.bitrate,"streamParameter.bitrate");let b=t.reportApiInvoke(this._sessionId,{name:A.SET_LOW_STREAM_PARAMETER,options:[a],tag:C.TRACER});(!a.width&&a.height||a.width&&!a.height)&&h.warning("[".concat(this._clientId,"] The width and height parameters take effect only when both are set"));h.info("[".concat(this._clientId,"] set low stream parameter to"),z(a));this._lowStreamParameter=a;b.onSuccess()}async enableDualStream(){let a=t.reportApiInvoke(this._sessionId,
{name:A.ENABLE_DUAL_STREAM,options:[],tag:C.TRACER});if(!ca.supportDualStream){t.streamSwitch(this._sessionId,{lts:v(),isdual:!0,succ:!1});var b=new n(m.NOT_SUPPORTED,"Your browser is not support dual stream");throw a.onError(b),b;}if(this._isDualStreamEnabled)throw b=new n(m.INVALID_OPERATION,"Dual stream is already enabled"),a.onError(b),b;if(this._highStream&&"connected"===this._highStream.connectionState&&this._highStream.videoTrack)try{await this._publishLowStream(this._highStream.videoTrack)}catch(d){throw t.streamSwitch(this._sessionId,
{lts:v(),isdual:!0,succ:!1}),a.onError(d),d;}this._isDualStreamEnabled=!0;t.streamSwitch(this._sessionId,{lts:v(),isdual:!0,succ:!0});h.info("[".concat(this._clientId,"] enable dual stream"));a.onSuccess()}async disableDualStream(){let a=t.reportApiInvoke(this._sessionId,{name:A.DISABLE_DUAL_STREAM,options:[],tag:C.TRACER});if(this._lowStream)try{await this._lowStream.closeP2PConnection()}catch(b){throw t.streamSwitch(this._sessionId,{lts:v(),isdual:!1,succ:!1}),a.onError(b),b;}this._lowStream=void 0;
this._isDualStreamEnabled=!1;this._highStream&&(this._highStream.lowStreamConnection=void 0);t.streamSwitch(this._sessionId,{lts:v(),isdual:!1,succ:!0});h.info("[".concat(this._clientId,"] disable dual stream"));a.onSuccess()}async setClientRole(a,b){Ua(a,"role",["audience","host"]);b&&Gh(b);let d=t.reportApiInvoke(this._sessionId,{name:A.SET_CLIENT_ROLE,options:[a,b],tag:C.TRACER});if("rtc"===this._mode)return h.warning("[".concat(this._clientId,"]rtc mode can not use setClientRole")),a=new n(m.INVALID_OPERATION,
"rtc mode can not use setClientRole"),d.onError(a),a.throw();if(b&&b.level&&"host"===a)return a=new n(m.INVALID_OPERATION,"host mode can not set audience latency level"),d.onError(a),a.throw();try{var e,f;if("audience"===a&&this._highStream){let a=new n(m.INVALID_OPERATION,"can not set client role to audience when publishing stream");return d.onError(a),a.throw()}await this._gateway.setClientRole(a,b);h.info(p(e=p(f="[".concat(this._clientId,"] set client role to ")).call(f,a,", level: ")).call(e,
b&&b.level));d.onSuccess()}catch(g){throw d.onError(g),g;}}setProxyServer(a){Ma(a,"proxyServer");let b=t.reportApiInvoke(this._sessionId,{name:A.SET_PROXY_SERVER,options:[a],tag:C.TRACER});if("DISCONNECTED"!==this.connectionState)throw new n(m.INVALID_OPERATION,"Set proxy server before join channel");if("disabled"!==this._cloudProxyServerMode)throw new n(m.INVALID_OPERATION,"You have already set the proxy");this._proxyServer=a;t.setProxyServer(this._proxyServer);h.setProxyServer(this._proxyServer);
b.onSuccess()}setTurnServer(a){hc(a)||(a=[a]);r(a).call(a,a=>Fh(a));let b=t.reportApiInvoke(this._sessionId,{name:A.SET_TURN_SERVER,options:a,tag:C.TRACER});if("DISCONNECTED"!==this.connectionState)throw new n(m.INVALID_OPERATION,"Set turn server before join channel");if("disabled"!==this._cloudProxyServerMode)throw new n(m.INVALID_OPERATION,"You have already set the proxy");this._turnServer={servers:a,mode:"manual"};h.info("[".concat(this._clientId,"] Set turnserver."));b.onSuccess()}startProxyServer(a){let b=
t.reportApiInvoke(this._sessionId,{name:A.START_PROXY_SERVER,options:[],tag:C.TRACER});if("DISCONNECTED"!==this.connectionState)throw a=new n(m.INVALID_OPERATION,"Start proxy server before join channel"),b.onError(a),a;if(this._proxyServer||"manual"===this._turnServer.mode)throw a=new n(m.INVALID_OPERATION,"You have already set the proxy"),b.onError(a),a;let d=[1,2,3,4];if(void 0===a&&(a=1),a&&-1===D(d).call(d,a))throw a=new n(m.INVALID_PARAMS,"proxy server mode must be ".concat(d.join("|"))),b.onError(a),
a;this._cloudProxyServerMode=2===a?"443only":3===a?"proxy3":4===a?"proxy4":"normal";h.info("[".concat(this._clientId,"] set cloud proxy server mode to"),this._cloudProxyServerMode);b.onSuccess()}stopProxyServer(){let a=t.reportApiInvoke(this._sessionId,{name:A.STOP_PROXY_SERVER,options:[],tag:C.TRACER});if("DISCONNECTED"!==this.connectionState)throw new n(m.INVALID_OPERATION,"Stop proxy server after leave channel");t.setProxyServer();h.setProxyServer();this._cloudProxyServerMode="disabled";h.info("[".concat(this._clientId,
"] set cloud proxy server mode to"),this._cloudProxyServerMode);this._proxyServer=void 0;this._turnServer={mode:"auto",servers:[]};a.onSuccess()}async setRemoteVideoStreamType(a,b){var d,e;Ua(b,"streamType",[0,1]);let f=t.reportApiInvoke(this._sessionId,{name:A.SET_REMOTE_VIDEO_STREAM_TYPE,options:[a,b],tag:C.TRACER});try{await this._gateway.setRemoteVideoStreamType(a,b)}catch(g){throw f.onError(g),h.error("[".concat(this._clientId,"] set remote video stream type error"),g.toString()),g;}h.info(p(d=
p(e="[".concat(this._clientId,"] set remote ")).call(e,a," video stream type to ")).call(d,b));this._remoteStreamTypeCacheMap.set(a,b);f.onSuccess()}async setStreamFallbackOption(a,b){var d,e;Ua(b,"fallbackType",[0,1,2]);let f=t.reportApiInvoke(this._sessionId,{name:A.SET_STREAM_FALLBACK_OPTION,options:["too long to show",b],tag:C.TRACER});try{await this._gateway.setStreamFallbackOption(a,b)}catch(g){throw f.onError(g),h.error("[".concat(this._clientId,"] set stream fallback option"),g.toString()),
g;}h.info(p(d=p(e="[".concat(this._clientId,"] set remote ")).call(e,a," stream fallback type to ")).call(d,b));this._streamFallbackTypeCacheMap.set(a,b);f.onSuccess()}setEncryptionConfig(a,b){Ua(a,"encryptionMode",["aes-128-xts","aes-256-xts","aes-128-ecb","sm4-128-ecb","none"]);Ma(b,"secret");/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*,.<>?/:;'"|{}\[\]])(?=.{8,})/.test(b)||h.warning("The secret is not strong:\n      The secret must contain at least 1 lowercase alphabetical character,\n      The secret must contain at least 1 uppercase alphabetical character,\n      The secret must contain at least 1 numeric character,\n      The secret must contain at least one special character,\n      The secret must be eight characters or longer.\n      ");
let d=t.reportApiInvoke(this._sessionId,{name:A.SET_ENCRYPTION_CONFIG,options:[a],tag:C.TRACER});this._encryptionMode=a;this._encryptionSecret=b;d.onSuccess()}async renewToken(a){Ma(a,"token",1,2047);let b=t.reportApiInvoke(this._sessionId,{name:A.RENEW_TOKEN,options:[a],tag:C.TRACER});if(!this._key)return a=new n(m.INVALID_OPERATION,"renewToken should not be called before user join"),b.onError(a),a.throw();this._key=a;try{await this._gateway.renewToken(a)}catch(d){throw b.onError(d),h.error("[".concat(this._clientId,
"] renewToken failed"),d.toString()),d;}h.debug("[".concat(this._clientId,"] renewToken success"));b.onSuccess()}enableAudioVolumeIndicator(){let a=t.reportApiInvoke(this._sessionId,{name:A.ENABLE_AUDIO_VOLUME_INDICATOR,options:[],tag:C.TRACER});if(this._audioVolumeIndicationInterval)return h.warning("you have already enabled audio volume indicator!"),a.onSuccess();this._audioVolumeIndicationInterval=window.setInterval(()=>{var a,d,e;let f=vd(a=y(d=Qb(uc(e=this._remoteStream).call(e))).call(d,a=>
({level:a.user.audioTrack?100*a.user.audioTrack._source.getAudioAvgLevel():0,uid:a.getUserId()}))).call(a,(a,b)=>a.level-b.level);this._highStream&&this._highStream.audioTrack&&(f.push({level:100*this._highStream.audioTrack._source.getAudioAvgLevel(),uid:this._highStream._userId}),f=vd(f).call(f,(a,b)=>a.level-b.level));this.emit(Q.VOLUME_INDICATOR,f)},u.AUDIO_VOLUME_INDICATION_INTERVAL||2E3);a.onSuccess()}getRTCStats(){let a=this._statsCollector.getRTCStats(),b=this._gateway.getInChannelInfo();return a.Duration=
Math.round(b.duration/1E3),a}startLiveStreaming(a,b){let d=t.reportApiInvoke(this._sessionId,{name:A.START_LIVE_STREAMING,options:[a,b],tag:C.TRACER});if(!b){if("h264"!==this._codec)return a=new n(m.LIVE_STREAMING_INVALID_RAW_STREAM,"raw streaming is only support h264"),d.onError(a),x.reject(a);if(!this._highStream)return a=new n(m.LIVE_STREAMING_INVALID_RAW_STREAM,"can not find stream to raw streaming"),d.onError(a),x.reject(a)}if(this._liveRawStreamingClient&&this._liveRawStreamingClient.hasUrl(a)||
this._liveTranscodeStreamingClient&&this._liveTranscodeStreamingClient.hasUrl(a))return a=new n(m.LIVE_STREAMING_TASK_CONFLICT),d.onError(a),x.reject(a);b=b?oa.TRANSCODE:oa.RAW;return this._createLiveStreamingClient(b).startLiveStreamingTask(a,b).then(()=>d.onSuccess()).catch(a=>{throw d.onError(a),a;})}setLiveTranscoding(a){let b=t.reportApiInvoke(this._sessionId,{name:A.SET_LIVE_TRANSCODING,options:[a],tag:C.TRACER});return this._createLiveStreamingClient(oa.TRANSCODE).setTranscodingConfig(a).then(()=>
b.onSuccess()).catch(a=>{throw b.onError(a),a;})}stopLiveStreaming(a){var b;let d=t.reportApiInvoke(this._sessionId,{name:A.STOP_LIVE_STREAMING,options:[a],tag:C.TRACER}),e=P(b=[this._liveRawStreamingClient,this._liveTranscodeStreamingClient]).call(b,b=>b&&b.hasUrl(a));return e.length?x.all(y(e).call(e,b=>b&&b.stopLiveStreamingTask(a))).then(()=>d.onSuccess()).catch(a=>{throw d.onError(a),a;}):(b=new n(m.INVALID_PARAMS,"can not find live streaming url to stop"),d.onError(b),x.reject(b))}async addInjectStreamUrl(a,
b){let d=t.reportApiInvoke(this._sessionId,{name:A.ADD_INJECT_STREAM_URL,options:[a,b],tag:C.TRACER});try{if(!this._joinInfo)throw new n(m.INVALID_OPERATION,"can not addInjectStreamUrl, no joininfo");let d=this._createLiveStreamingClient(oa.INJECT);d.setInjectStreamConfig(b,0);await d.startLiveStreamingTask(a,oa.INJECT)}catch(e){throw d.onError(e),e;}d.onSuccess()}async removeInjectStreamUrl(){let a=t.reportApiInvoke(this._sessionId,{name:A.REMOVE_INJECT_STREAM_URL,options:[],tag:C.TRACER});try{var b,
d;let a=this._createLiveStreamingClient(oa.INJECT),f=U(b=Qb(uc(d=a.streamingTasks).call(d))).call(b,a=>a.mode===oa.INJECT);if(!this._joinInfo||!f)throw new n(m.INVALID_OPERATION,"can remove addInjectStreamUrl, no joininfo or inject task");await a.stopLiveStreamingTask(f.url)}catch(e){throw a.onError(e),e;}a.onSuccess()}async startChannelMediaRelay(a){let b=t.reportApiInvoke(this._sessionId,{name:A.START_CHANNEL_MEDIA_RELAY,options:[a],tag:C.TRACER});try{ri(a),await this._createChannelMediaRelayClient().startChannelMediaRelay(a)}catch(d){return b.onError(d),
d.throw()}b.onSuccess()}async updateChannelMediaRelay(a){let b=t.reportApiInvoke(this._sessionId,{name:A.UPDATE_CHANNEL_MEDIA_RELAY,options:[a],tag:C.TRACER});try{ri(a),await this._createChannelMediaRelayClient().updateChannelMediaRelay(a)}catch(d){return b.onError(d),d.throw()}b.onSuccess()}async stopChannelMediaRelay(){let a=t.reportApiInvoke(this._sessionId,{name:A.STOP_CHANNEL_MEDIA_RELAY,options:[],tag:C.TRACER});try{await this._createChannelMediaRelayClient().stopChannelMediaRelay()}catch(b){return a.onError(b),
b.throw()}a.onSuccess()}sendStreamMessage(a){if(!this._joinInfo)throw new n(m.INVALID_OPERATION,"can not send data stream, not joined");"string"==typeof a&&(a=(new TextEncoder).encode(a));if(1024<(new Blob([a])).size)throw new n(m.INVALID_PARAMS,"stream message out of range.");return this._gateway.signal.request(ea.DATA_STREAM,{payload:Ze(a)})}sendMetadata(a){if(!this._joinInfo)throw new n(m.INVALID_OPERATION,"can not send metadata, not joined");if(1024<(new Blob([a])).size)throw new n(m.METADATA_OUT_OF_RANGE);
return this._gateway.signal.request(ea.SEND_METADATA,{session_id:this._joinInfo.sid,metadata:Ze(a)})}async sendCustomReportMessage(a){hc(a)||(a=[a]);r(a).call(a,Dl);let b=t.reportApiInvoke(this._sessionId,{name:A.SEND_CUSTOM_REPORT_MESSAGE,options:[],tag:C.TRACER});if(!this._joinInfo)return a=new n(m.INVALID_OPERATION,"can not send custom report, not joined"),b.onError(a),a.throw();await t.sendCustomReportMessage(this._joinInfo.sid,a)}getLocalAudioStats(){return this._highStream?this._statsCollector.getLocalAudioTrackStats(this._highStream.connectionId):
we}getRemoteAudioStats(){var a;let b={};return r(a=this._remoteStream).call(a,(a,e)=>{b[e]=this._statsCollector.getRemoteAudioTrackStats(a.connectionId)}),b}getLocalVideoStats(){return this._highStream?this._statsCollector.getLocalVideoTrackStats(this._highStream.connectionId):xe}getRemoteVideoStats(){var a;let b={};return r(a=this._remoteStream).call(a,(a,e)=>{b[e]=this._statsCollector.getRemoteVideoTrackStats(a.connectionId)}),b}getRemoteNetworkQuality(){var a;let b={};return r(a=this._remoteStream).call(a,
(a,e)=>{b[e]=this._statsCollector.getRemoteNetworkQualityStats(a.connectionId)}),b}_reset(){var a,b,d;h.debug("[".concat(this._clientId,"] reset client"));this._axiosCancelSource.cancel();this._axiosCancelSource=Ib.CancelToken.source();this._streamFallbackTypeCacheMap=new Z;this._remoteStreamTypeCacheMap=new Z;this._defaultStreamFallbackType=this._proxyServer=this._joinInfo=void 0;this._sessionId=null;this._statsCollector.reset();this._channelName=this._uid=this._appId=this._key=void 0;r(a=this._users).call(a,
a=>{a.audioTrack&&(a.audioTrack.stop(),a.audioTrack._isDestroyed=!0);a.videoTrack&&(a.videoTrack.stop(),a.videoTrack._isDestroyed=!0)});this._users=[];this._audioVolumeIndicationInterval&&(window.clearInterval(this._audioVolumeIndicationInterval),this._audioVolumeIndicationInterval=void 0);this._highStream&&(this._highStream.closeP2PConnection(!0),this._highStream=void 0);r(b=this._bindEnabledTracks).call(b,a=>{a.off(L.NEED_ADD_TRACK,this._handleLocalTrackEnable);a.off(L.NEED_REMOVE_TRACK,this._handleLocalTrackDisable)});
this._bindEnabledTracks=[];this._lowStream&&(this._lowStream.closeP2PConnection(!0),this._lowStream=void 0);r(d=this._remoteStream).call(d,a=>{a.closeP2PConnection(!0)});this._remoteStream=new Z;this._publishMutex=new fc("client-publish");this._subscribeMutex=new Z;this._networkQualityInterval&&(window.clearInterval(this._networkQualityInterval),this._networkQualityInterval=void 0);this._injectStreamingClient&&(this._injectStreamingClient.terminate(),this._injectStreamingClient.removeAllListeners(),
this._injectStreamingClient=void 0);this._liveRawStreamingClient&&(this._liveRawStreamingClient.terminate(),this._liveRawStreamingClient.removeAllListeners(),this._liveRawStreamingClient=void 0);this._liveTranscodeStreamingClient&&(this._liveTranscodeStreamingClient.terminate(),this._liveTranscodeStreamingClient.removeAllListeners(),this._liveTranscodeStreamingClient=void 0);this._channelMediaRelayClient&&(this._channelMediaRelayClient.dispose(),this._channelMediaRelayClient=void 0)}_startSession(a,
b){var d,e,f;let g=a||sa(32,"").toUpperCase();a?h.debug(p(d="[".concat(this._clientId,"] new Session ")).call(d,g)):h.debug(p(e=p(f="[".concat(this._clientId,"] renewSession ")).call(f,this._sessionId," => ")).call(e,g));this._sessionId=g;b?t.sessionInit(this._sessionId,{lts:(new Date).getTime(),cname:b.channel,appid:b.appId,mode:this._mode}):this._joinInfo?t.sessionInit(this._sessionId,{lts:(new Date).getTime(),cname:this._joinInfo.cname,appid:this._joinInfo.appId,mode:this._mode}):this._gateway.joinInfo&&
t.sessionInit(this._sessionId,{lts:(new Date).getTime(),cname:this._gateway.joinInfo.cname,appid:this._gateway.joinInfo.appId,mode:this._mode});this._joinInfo&&(this._joinInfo.sid=g);this._gateway.joinInfo&&(this._gateway.joinInfo.sid=g)}async _publishHighStream(a){if(!this._joinInfo)throw new n(m.INVALID_OPERATION,"Can't publish stream, haven't joined yet!");if("CONNECTED"!==this.connectionState&&"RECONNECTING"!==this.connectionState)throw new n(m.INVALID_OPERATION,"can not publish stream in ".concat(this.connectionState,
" state"));if("auto"===this._turnServer.mode&&u.FORCE_TURN&&!u.TURN_ENABLE_TCP&&!u.TURN_ENABLE_UDP)throw new n(m.UNEXPECTED_ERROR,"force TURN With No TURN Configuration");if(h.debug("[".concat(this._clientId,"] publish high stream")),this._highStream)return await this._highStream.addTracks(a),this._highStream;this._highStream=new ql(this._statsCollector,this._joinInfo,this._codec);await this._highStream.addTracks(a);try{await this._gateway.publish(this._highStream,"high")}catch(b){throw this._highStream=
void 0,b;}return this._highStream.on(H.CONNECTION_STATE_CHANGE,(a,d)=>{this._highStream&&("connected"===a?this.emit(Q.MEDIA_RECONNECT_END,this._highStream.getUserId()):"connecting"===a&&this.emit(Q.MEDIA_RECONNECT_START,this._highStream.getUserId()))}),this._highStream}async _publishLowStream(a){if(!this._joinInfo)throw new n(m.INVALID_OPERATION,"Can't publish stream, haven't joined yet!");if("CONNECTED"!==this.connectionState&&"RECONNECTING"!==this.connectionState)throw new n(m.INVALID_OPERATION,
"can not publish stream in ".concat(this.connectionState," state"));if(!this._highStream||"connected"!==this._highStream.connectionState)throw new n(m.UNEXPECTED_ERROR,"Could not find high stream");if(this._lowStream)return(new n(m.UNEXPECTED_ERROR,"[".concat(this._clientId,"] Can't publish low stream when stream already publish"))).throw();h.debug("[".concat(this._clientId,"] publish low stream"));this._lowStream=new ql(this._statsCollector,this._joinInfo,this._codec,!0);this._lowStream.lowStreamParameter=
this._lowStreamParameter;await this._lowStream.addTracks([a]);try{await this._gateway.publish(this._lowStream,"low")}catch(b){throw this._lowStream=void 0,b;}this._highStream.lowStreamConnection=this._lowStream}_createLiveStreamingClient(a){if(!this._joinInfo||!this._appId)return(new n(m.INVALID_OPERATION,"can not create live streaming client, please join channel first")).throw();let b=()=>new jq(this._joinInfo,this._config.websocketRetryConfig||Ra,this._config.httpRetryConfig||Ra),d=a=>{a.onLiveStreamError=
(a,b)=>{t.reportApiInvoke(this._sessionId,{name:A.ON_LIVE_STREAM_ERROR,options:[a,b],tag:C.TRACER}).onSuccess();this.emit(Q.LIVE_STREAMING_ERROR,a,b)};a.onLiveStreamWarning=(a,b)=>{t.reportApiInvoke(this._sessionId,{name:A.ON_LIVE_STREAM_WARNING,options:[a,b],tag:C.TRACER}).onSuccess();this.emit(Q.LIVE_STREAMING_WARNING,a,b)};a.on(Tc.REQUEST_WORKER_MANAGER_LIST,(a,b,d)=>{if(!this._joinInfo)return d(new n(m.INVALID_OPERATION,"can not find join info to get worker manager"));gi(a,this._joinInfo,this._axiosCancelSource.token,
Ra).then(b).catch(d)})};switch(a){case oa.RAW:return this._liveRawStreamingClient||(this._liveRawStreamingClient=b(),d(this._liveRawStreamingClient)),this._liveRawStreamingClient;case oa.TRANSCODE:return this._liveTranscodeStreamingClient||(this._liveTranscodeStreamingClient=b(),d(this._liveTranscodeStreamingClient)),this._liveTranscodeStreamingClient;case oa.INJECT:return this._injectStreamingClient||(this._injectStreamingClient=b(),this._injectStreamingClient.on(Tc.REQUEST_WORKER_MANAGER_LIST,(a,
b,d)=>{if(!this._joinInfo)return d(new n(m.INVALID_OPERATION,"can not find join info to get worker manager"));gi(a,this._joinInfo,this._axiosCancelSource.token,Ra).then(b).catch(d)}),this._injectStreamingClient.onInjectStatusChange=(a,b,d)=>{this.emit(Q.INJECT_STREAM_STATUS,a,b,d)}),this._injectStreamingClient}}_createChannelMediaRelayClient(){return this._joinInfo?(this._channelMediaRelayClient||(this._channelMediaRelayClient=new lq(this._joinInfo,this._clientId,this._config.websocketRetryConfig||
Ra,this._config.httpRetryConfig||Ra),this._channelMediaRelayClient.on("state",a=>{"RELAY_STATE_FAILURE"===a&&this._channelMediaRelayClient&&this._channelMediaRelayClient.dispose();this.emit(Q.CHANNEL_MEDIA_RELAY_STATE,a)}),this._channelMediaRelayClient.on("event",a=>{this.emit(Q.CHANNEL_MEDIA_RELAY_EVENT,a)})),this._channelMediaRelayClient):(new n(m.INVALID_OPERATION,"can not create channel media relay client, please join channel first")).throw()}_handleGatewayEvents(){this._gateway.on(Aa.DISCONNECT_P2P,
()=>{var a;h.debug("[".concat(this._clientId,"] start full reconnect"));this._highStream&&"disconnected"!==this._highStream.connectionState&&(h.debug("[".concat(this._clientId,"] ready to reconnect high stream")),this._highStream.readyToReconnectPC());this._lowStream&&"disconnected"!==this._lowStream.connectionState&&(h.debug("[".concat(this._clientId,"] ready to reconnect low stream")),this._lowStream.readyToReconnectPC());r(a=this._remoteStream).call(a,(a,d)=>{var b;h.debug(p(b="[".concat(this._clientId,
"] ready to reconnect remote stream ")).call(b,d));a.readyToReconnectPC()})});this._gateway.on(Aa.CONNECTION_STATE_CHANGE,(a,b,d)=>{var e,f;let g=()=>{this.emit(Q.CONNECTION_STATE_CHANGE,a,b,d)};if(h.info(p(e=p(f="[".concat(this._clientId,"] connection state change: ")).call(f,b," -> ")).call(e,a)),"DISCONNECTED"===a)return this._reset(),void g();var k,l;if("RECONNECTING"===a)this._highStream&&"connecting"===this._highStream.connectionState&&(h.debug("[".concat(this._clientId,"] ready to reconnect high stream")),
this._highStream.readyToReconnectPC()),this._lowStream&&"connecting"===this._lowStream.connectionState&&(h.debug("[".concat(this._clientId,"] ready to reconnect low stream")),this._lowStream.readyToReconnectPC()),r(k=this._remoteStream).call(k,(a,b)=>{var d;"connecting"===a.connectionState&&(h.debug(p(d="[".concat(this._clientId,"] ready to reconnect remote stream ")).call(d,b)),a.readyToReconnectPC())}),r(l=this._users).call(l,a=>{a._trust_in_room_=!1;a._trust_audio_enabled_state_=!1;a._trust_video_enabled_state_=
!1;a._trust_audio_mute_state_=!1;a._trust_video_mute_state_=!1;a._trust_stream_added_state_=!1}),this._userOfflineTimeout&&window.clearTimeout(this._userOfflineTimeout),this._streamRemovedTimeout&&window.clearTimeout(this._streamRemovedTimeout),this._streamRemovedTimeout=this._userOfflineTimeout=void 0;else if("CONNECTED"===a){var m,n;r(m=this._streamFallbackTypeCacheMap).call(m,(a,b)=>{this._gateway.setStreamFallbackOption(b,a).catch(a=>h.warning("[".concat(this._clientId,"] auto set stream fallback option failed"),
a))});r(n=this._remoteStreamTypeCacheMap).call(n,(a,b)=>{this._gateway.setRemoteVideoStreamType(b,a).catch(a=>h.warning("[".concat(this._clientId,"] auto set remote stream type failed"),a))});this._highStream&&"connecting"===this._highStream.connectionState?this._highStream.reconnectPC().then(()=>{this._lowStream&&"connecting"===this._lowStream.connectionState&&this._lowStream.reconnectPC().catch(a=>{h.error("[".concat(this._clientId,"] republish low stream error"),a.toString());this.emit(Q.ERROR,
{reason:a})})}).catch(a=>{h.error("[".concat(this._clientId,"] republish high stream error"),a.toString());this.emit(Q.ERROR,{reason:a})}):this._lowStream&&"connecting"===this._lowStream.connectionState&&this._lowStream.reconnectPC().catch(a=>{h.error("[".concat(this._clientId,"] republish low stream error"),a.toString());this.emit(Q.ERROR,{reason:a})});this._userOfflineTimeout=window.setTimeout(()=>{var a;if("CONNECTED"===this.connectionState){this._userOfflineTimeout=void 0;var b=P(a=this._users).call(a,
a=>!a._trust_in_room_);r(b).call(b,a=>{var b;h.debug(p(b="[".concat(this._clientId,"] user offline timeout, emit user offline ")).call(b,a.uid));this._handleUserOffline({uid:a.uid})})}},3E3);this._streamRemovedTimeout=window.setTimeout(()=>{var a;"CONNECTED"===this.connectionState&&(this._streamRemovedTimeout=void 0,r(a=this._users).call(a,a=>{var b,d,e,f,g;a._trust_audio_mute_state_||(h.debug(p(b="[".concat(this._clientId,"] auto dispatch audio unmute event ")).call(b,a.uid)),this._handleMuteStream(a.uid,
"audio",!1));a._trust_video_mute_state_||(h.debug(p(d="[".concat(this._clientId,"] auto dispatch video unmute event ")).call(d,a.uid)),this._handleMuteStream(a.uid,"video",!1));a._trust_audio_enabled_state_||(h.debug(p(e="[".concat(this._clientId,"] auto dispatch enable local audio ")).call(e,a.uid)),this._handleSetStreamLocalEnable("audio",a.uid,!0));!a._trust_video_enabled_state_&&a._video_enabled_&&(h.debug(p(f="[".concat(this._clientId,"] auto dispatch enable local video ")).call(f,a.uid)),this._handleSetStreamLocalEnable("video",
a.uid,!0));a._trust_stream_added_state_||(h.debug(p(g="[".concat(this._clientId,"] auto dispatch stream remove ")).call(g,a.uid)),this._handleRemoveStream({uid:a.uid,uint_id:a._uintid}))}))},1E3)}g()});this._gateway.on(Aa.REQUEST_NEW_GATEWAY_LIST,(a,b)=>{if(!this._joinInfo)return b(new n(m.UNEXPECTED_ERROR,"can not recover, no join info"));ei(this._joinInfo,this._axiosCancelSource.token,this._config.httpRetryConfig||Ra).then(b=>{var d;this._joinInfo&&(this._joinInfo.apResponse=b.gatewayInfo.res);
a(y(d=b.gatewayInfo.gatewayAddrs).call(d,a=>"wss://".concat(a)))}).catch(b)});this._gateway.on(Aa.NETWORK_QUALITY,a=>{"normal"===this._networkQualitySensitivity&&this.emit(Q.NETWORK_QUALITY,a)});this._gateway.on(Aa.STREAM_TYPE_CHANGE,(a,b)=>{this.emit(Q.STREAM_TYPE_CHANGED,a,b);t.reportApiInvoke(this._sessionId,{name:A.STREAM_TYPE_CHANGE,options:[a,b],tag:C.TRACER}).onSuccess(z({uid:a,streamType:b}))});this._gateway.on(Aa.IS_P2P_DISCONNECTED,a=>{var b,d,e;let f=[];return this._highStream&&f.push(this._highStream),
r(b=this._remoteStream).call(b,a=>f.push(a)),0===f.length||0===P(f).call(f,a=>"connected"===a.connectionState).length?a(!0):(h.debug(p(d="[".concat(this._clientId,"] ")).call(d,y(e=P(f).call(f,a=>"connected"===a.connectionState)).call(e,a=>a.connectionId)," is connected")),void a(!1))});this._gateway.on(Aa.NEED_RENEW_SESSION,()=>{this._startSession()});this._gateway.signal.on(Y.ON_USER_ONLINE,this._handleUserOnline);this._gateway.signal.on(Y.ON_USER_OFFLINE,this._handleUserOffline);this._gateway.signal.on(Y.ON_ADD_AUDIO_STREAM,
a=>this._handleAddAudioOrVideoStream("audio",a.uid,a.uint_id));this._gateway.signal.on(Y.ON_ADD_VIDEO_STREAM,a=>this._handleAddAudioOrVideoStream("video",a.uid,a.uint_id));this._gateway.signal.on(Y.ON_REMOVE_STREAM,this._handleRemoveStream);this._gateway.signal.on(Y.ON_P2P_LOST,this._handleP2PLost);this._gateway.signal.on(Y.MUTE_AUDIO,a=>this._handleMuteStream(a.uid,"audio",!0));this._gateway.signal.on(Y.UNMUTE_AUDIO,a=>this._handleMuteStream(a.uid,"audio",!1));this._gateway.signal.on(Y.MUTE_VIDEO,
a=>this._handleMuteStream(a.uid,"video",!0));this._gateway.signal.on(Y.UNMUTE_VIDEO,a=>this._handleMuteStream(a.uid,"video",!1));this._gateway.signal.on(Y.RECEIVE_METADATA,a=>{let b=Qh(a.metadata);this.emit(Q.RECEIVE_METADATA,a.uid,b)});this._gateway.signal.on(Y.ON_DATA_STREAM,a=>{a.seq&&delete a.seq;a.payload=Qh(a.payload);this.emit(Q.STREAM_MESSAGE,a.uid,a.payload);this.onStreamMessage&&this.onStreamMessage(a)});this._gateway.signal.on(Y.ON_CRYPT_ERROR,()=>{fd(()=>{h.warning("[".concat(this._clientId,
"] on crypt error"));this.emit(Q.CRYPT_ERROR)},this._sessionId)});this._gateway.signal.on(Y.ON_TOKEN_PRIVILEGE_WILL_EXPIRE,this._handleTokenWillExpire);this._gateway.signal.on(Y.ON_TOKEN_PRIVILEGE_DID_EXPIRE,()=>{h.warning("[".concat(this._clientId,"] received message onTokenPrivilegeDidExpire, please get new token and join again"));this._reset();this._gateway.leave(!0);this.emit(Q.ON_TOKEN_PRIVILEGE_DID_EXPIRE)});this._gateway.signal.on(Y.ON_STREAM_FALLBACK_UPDATE,a=>{var b,d;h.debug(p(b=p(d="[".concat(this._clientId,
"] stream fallback peerId: ")).call(d,a.stream_id,", attr: ")).call(b,a.stream_type));this.emit(Q.STREAM_FALLBACK,a.stream_id,1===a.stream_type?"fallback":"recover")});this._gateway.signal.on(Y.ENABLE_LOCAL_VIDEO,a=>{this._handleSetStreamLocalEnable("video",a.uid,!0)});this._gateway.signal.on(Y.DISABLE_LOCAL_VIDEO,a=>{this._handleSetStreamLocalEnable("video",a.uid,!1)});this._gateway.signal.on(O.REQUEST_TIMEOUT,(a,b)=>{if(this._joinInfo)switch(a){case ea.PUBLISH:var d;if(!b)break;a="high"===b.stream_type?
this._highStream:this._lowStream;if(!a)break;"offer"===b.state&&t.publish(this._joinInfo.sid,{lts:a.startTime,succ:!1,ec:m.TIMEOUT,audio:b.audio,video:b.video,p2pid:b.p2p_id,publishRequestid:a.ID,screenshare:!(!a.videoTrack||-1===D(d=a.videoTrack._hints).call(d,qb.SCREEN_TRACK)),audioName:a.audioTrack&&a.audioTrack.getTrackLabel(),videoName:a.videoTrack&&a.videoTrack.getTrackLabel()});break;case ea.SUBSCRIBE:(d=this._remoteStream.get(b.stream_id))&&b&&t.subscribe(this._joinInfo.sid,{lts:d.startTime,
succ:!1,ec:m.TIMEOUT,audio:!!b.audio,video:!!b.video,peerid:b.stream_id,subscribeRequestid:d.ID,p2pid:d.pc.ID})}})}}class oq extends Zk{constructor(a,b={}){super();this.currentLoopCount=this.pausePlayTime=this.startPlayOffset=this.startPlayTime=0;this._currentState="stopped";this.audioBuffer=a;this.options=b;this.startPlayOffset=this.options.startPlayTime||0}set currentState(a){a!==this._currentState&&(this._currentState=a,this.emit(ob.AUDIO_SOURCE_STATE_CHANGE,this._currentState))}get currentState(){return this._currentState}createWebAudioDiagram(){return this.context.createGain()}get duration(){return this.audioBuffer.duration}get currentTime(){return"stopped"===
this.currentState?0:"paused"===this.currentState?this.pausePlayTime:(this.context.currentTime-this.startPlayTime+this.startPlayOffset)%this.audioBuffer.duration}updateOptions(a){"stopped"===this.currentState?(this.options=a,this.startPlayOffset=this.options.startPlayTime||0):h.warning("can not set audio source options")}startProcessAudioBuffer(){this.sourceNode&&this.stopProcessAudioBuffer();this.sourceNode=this.createSourceNode();this.startSourceNode();this.currentState="playing"}pauseProcessAudioBuffer(){this.sourceNode&&
"playing"===this.currentState&&(this.pausePlayTime=this.currentTime,this.sourceNode.onended=null,this.sourceNode.stop(),this.sourceNode.buffer=null,this.sourceNode=this.createSourceNode(),this.currentState="paused")}seekAudioBuffer(a){this.sourceNode&&(this.sourceNode.onended=null,"playing"===this.currentState&&this.sourceNode.stop(),this.sourceNode=this.createSourceNode(),"playing"===this.currentState?(this.startPlayOffset=a,this.startSourceNode()):"paused"===this.currentState&&(this.pausePlayTime=
a))}resumeProcessAudioBuffer(){"paused"===this.currentState&&this.sourceNode&&(this.startPlayOffset=this.pausePlayTime,this.pausePlayTime=0,this.startSourceNode(),this.currentState="playing")}stopProcessAudioBuffer(){if(this.sourceNode){this.sourceNode.onended=null;try{this.sourceNode.stop()}catch(a){}this.reset()}}startSourceNode(){var a;this.sourceNode&&this.sourceNode.buffer&&(this.sourceNode.start(0,this.startPlayOffset),this.startPlayTime=this.context.currentTime,this.sourceNode.onended=Da(a=
this.handleSourceNodeEnded).call(a,this))}createSourceNode(){let a=this.context.createBufferSource();return a.buffer=this.audioBuffer,a.loop=!!this.options.loop,a.connect(this.outputNode),a}handleSourceNodeEnded(){if(this.currentLoopCount+=1,this.options.cycle&&this.options.cycle>this.currentLoopCount)return this.startPlayOffset=0,this.sourceNode=void 0,void this.startProcessAudioBuffer();this.reset()}reset(){this.startPlayOffset=this.options.startPlayTime||0;this.currentState="stopped";this.sourceNode&&
(this.sourceNode.disconnect(),this.sourceNode=void 0);this.currentLoopCount=0}}let ui=new Z;var pq=ha.setInterval;let sl=qa().name;Zb("PROCESS_ID",function(){var a,b,d,e;return p(a=p(b=p(d=p(e="process-".concat(sa(8,""),"-")).call(e,sa(4,""),"-")).call(d,sa(4,""),"-")).call(b,sa(4,""),"-")).call(a,sa(12,""))}());(function(){let a=qa();ca.getDisplayMedia=!(!navigator.mediaDevices||!navigator.mediaDevices.getDisplayMedia);ca.getStreamFromExtension=a.name===ba.CHROME&&34<Number(a.version);if(window.RTCRtpTransceiver&&
"currentDirection"in RTCRtpTransceiver.prototype){var b=new RTCPeerConnection;var d=!1;try{b.addTransceiver("audio"),d=!0}catch(e){}b=(b.close(),d)}else b=!1;ca.supportUnifiedPlan=b;ca.supportMinBitrate=a.name===ba.CHROME||a.name===ba.EDGE;b=qa();b=!!(window.RTCRtpSender&&window.RTCRtpSender.prototype.setParameters&&window.RTCRtpSender.prototype.getParameters)&&(!!Xe()||b.name===ba.SAFARI||b.name===ba.FIREFOX&&64<=Number(b.version));ca.supportSetRtpSenderParameters=b;a.name!==ba.SAFARI&&qa().name!==
ba.WECHAT||(ca.supportDualStream=!1);b=qa();b=!(b.name===ba.SAFARI&&12>Number(b.version));ca.webAudioMediaStreamDest=b;ca.supportReplaceTrack=!!window.RTCRtpSender&&"function"==typeof RTCRtpSender.prototype.replaceTrack;ca.supportWebGL="undefined"!=typeof WebGLRenderingContext;ca.supportRequestFrame=!!window.CanvasCaptureMediaStreamTrack;Xe()||(ca.webAudioWithAEC=!0);b=qa();b=(b.os===X.WIN_10||b.os===X.WIN_81||b.os===X.WIN_7||b.os===X.LINUX||b.os===X.MAC_OS||b.os===X.MAC_OS_X)&&b.name===ba.CHROME&&
74<=Number(b.version);ca.supportShareAudio=b;b=qa();b=b.name===ba.CHROME&&87===Number(b.version);ca.supportDualStreamEncoding=b;h.info("browser compatibility",z(ca),z(a))})();let Cb={VERSION:fb,BUILD:"v4.3.0-0-g0586d79(1/27/2021, 4:10:54 PM)",setParameter:Zb,getSupportedCodec:async function(a){let b=null;a?(b=new hl({}),b.addStream(a)):b=new il({});{a=await b.createOfferSDP();let d={video:[],audio:[]};a=(a.match(/ VP8/i)&&d.video.push("VP8"),a.match(/ H264/i)&&d.video.push("H264"),a.match(/ opus/i)&&
d.audio.push("OPUS"),d)}return b.close(),a},checkSystemRequirements:function(){let a=t.reportApiInvoke(null,{name:A.CHECK_SYSTEM_REQUIREMENTS,options:[],tag:C.TRACER});var b=navigator.mediaDevices&&navigator.mediaDevices.getUserMedia,d=window.WebSocket;b=window.RTCPeerConnection&&b&&d;d=!1;let e=qa();e.name===ba.CHROME&&58<=Number(e.version)&&e.os!==X.IOS&&(d=!0);e.name===ba.FIREFOX&&56<=Number(e.version)&&(d=!0);e.name===ba.OPERA&&45<=Number(e.version)&&(d=!0);e.name===ba.SAFARI&&11<=Number(e.version)&&
(d=!0);qa().name!==ba.WECHAT&&qa().name!==ba.QQ||e.os===X.IOS||(d=!0);h.debug("checkSystemRequirements, api:",b,"browser",d);b=b&&d;return a.onSuccess(b),b},getDevices:function(a){return ib.enumerateDevices(!0,!0,a)},getMicrophones:function(a){return ib.getRecordingDevices(a)},getCameras:function(a){return ib.getCamerasDevices(a)},getElectronScreenSources:Sh,getPlaybackDevices:function(a){return ib.getSpeakers(a)},createClient:function(a={codec:"vp8",mode:"rtc"}){let b=t.reportApiInvoke(null,{name:A.CREATE_CLIENT,
options:[a],tag:C.TRACER});try{Ua(a.codec,"config.codec",["vp8","h264"]),Ua(a.mode,"config.mode",["rtc","live"]),void 0!==a.proxyServer&&Ma(a.proxyServer,"config.proxyServer",1,1E4),void 0!==a.turnServer&&Fh(a.turnServer),void 0!==a.httpRetryConfig&&Eh(a.httpRetryConfig),void 0!==a.websocketRetryConfig&&Eh(a.websocketRetryConfig)}catch(d){throw b.onError(d),d;}return b.onSuccess(),new nq(Ec({forceWaitGatewayResponse:!0},a,{role:"rtc"===a.mode?"host":a.role}))},createCameraVideoTrack:async function(a=
{encoderConfig:"480p_1"}){let b=t.reportApiInvoke(null,{tag:C.TRACER,name:A.CREATE_CAM_VIDEO_TRACK,options:[qf({},a)]}),d=mf(a);var e=sa(8,"track-");let f=null;h.info("start create camera video track with config",z(a),"trackId",e);try{f=(await Hb({video:d},e)).getVideoTracks()[0]||null}catch(g){throw b.onError(g),g;}if(!f)return e=new n(m.UNEXPECTED_ERROR,"can not find track in media stream"),b.onError(e),e.throw();a.optimizationMode&&rf(e,f,a,a.encoderConfig&&xc(a.encoderConfig));a=new pl(f,a,d,
a.optimizationMode,e);return b.onSuccess(a.getTrackId()),h.info("create camera video success, trackId:",e),a},createCustomVideoTrack:function(a){let b=t.reportApiInvoke(null,{tag:C.TRACER,name:A.CREATE_CUSTOM_VIDEO_TRACK,options:[a]}),d=new Ta(a.mediaStreamTrack,{bitrateMax:a.bitrateMax,bitrateMin:a.bitrateMin},a.optimizationMode);return b.onSuccess(d.getTrackId()),h.info("create custom video track success with config",a,"trackId",d.getTrackId()),d},createScreenVideoTrack:async function(a={},b="disable"){let d=
t.reportApiInvoke(null,{tag:C.TRACER,name:A.CREATE_SCREEN_VIDEO_TRACK,options:[qf({},a),b]});a.encoderConfig?"string"==typeof a.encoderConfig||a.encoderConfig.width&&a.encoderConfig.height||(a.encoderConfig.width={max:1920},a.encoderConfig.height={max:1080}):a.encoderConfig="1080p_2";var e={};a.screenSourceType&&(e.mediaSource=a.screenSourceType);a.extensionId&&$c()&&(e.extensionId=a.extensionId);a.electronScreenSourceId&&(e.sourceId=a.electronScreenSourceId);var f=a.encoderConfig?Je(a.encoderConfig):
null;f=(e.mandatory={chromeMediaSource:"desktop",maxWidth:f?f.width:void 0,maxHeight:f?f.height:void 0},f&&f.frameRate&&("number"==typeof f.frameRate?(e.mandatory.maxFrameRate=f.frameRate,e.mandatory.minFrameRate=f.frameRate):(e.mandatory.maxFrameRate=f.frameRate.max||f.frameRate.ideal||f.frameRate.exact||void 0,e.mandatory.minFrameRate=f.frameRate.min||f.frameRate.ideal||f.frameRate.exact||void 0),e.frameRate=f.frameRate),f&&f.width&&(e.width=f.width),f&&f.height&&(e.height=f.height),e);let g=sa(8,
"track-"),k=null;e=null;let l=ca;if(!l.supportShareAudio&&"enable"===b)return a=new n(m.NOT_SUPPORTED,"your browser or platform is not support share-screen with audio"),d.onError(a),a.throw();h.info("start create screen video track with config",a,"withAudio",b,"trackId",g);try{let a=await Hb({screen:f,screenAudio:"auto"===b?l.supportShareAudio:"enable"===b},g);k=a.getVideoTracks()[0]||null;e=a.getAudioTracks()[0]||null}catch(w){throw d.onError(w),w;}if(!k)return a=new n(m.UNEXPECTED_ERROR,"can not find track in media stream"),
d.onError(a),a.throw();if(!e&&"enable"===b)return k&&k.stop(),a=new n(m.SHARE_AUDIO_NOT_ALLOWED),d.onError(a),a.throw();a.optimizationMode||(a.optimizationMode="detail");a.optimizationMode&&(rf(g,k,a,a.encoderConfig&&Je(a.encoderConfig)),a.encoderConfig&&"string"!=typeof a.encoderConfig&&(a.encoderConfig.bitrateMin=a.encoderConfig.bitrateMax));a=new Ta(k,a.encoderConfig?Je(a.encoderConfig):{},a.optimizationMode,g);if(a._hints.push(qb.SCREEN_TRACK),!e)return d.onSuccess(a.getTrackId()),h.info("create screen video track success",
"video:",a.getTrackId()),a;b=new db(e);return d.onSuccess([a.getTrackId(),b.getTrackId()]),h.info("create screen video track success","video:",a.getTrackId(),"audio:",b.getTrackId()),[a,b]},createMicrophoneAndCameraTracks:async function(a={},b={encoderConfig:"480p_1"}){var d,e,f;let g=t.reportApiInvoke(null,{tag:C.TRACER,name:A.CREATE_MIC_AND_CAM_TRACKS,options:[a,b]}),k=mf(b),l=ki(a),r=sa(8,"track-"),u=sa(8,"track-"),v=null,x=null;h.info(p(d=p(e=p(f="start create camera video track(".concat(u,") and microphone audio track(")).call(f,
r,") with config, audio: ")).call(e,z(a),", video: ")).call(d,z(b)));try{var y;let a=await Hb({audio:l,video:k},p(y="".concat(r,"-")).call(y,u));v=a.getAudioTracks()[0];x=a.getVideoTracks()[0]}catch(pa){throw g.onError(pa),pa;}if(!v||!x){var B=new n(m.UNEXPECTED_ERROR,"can not find tracks in media stream");return g.onError(B),B.throw()}b.optimizationMode&&rf(u,x,b,b.encoderConfig&&xc(b.encoderConfig));a=new vg(v,a,l,r);b=new pl(x,b,k,b.optimizationMode,u);return g.onSuccess([a.getTrackId(),b.getTrackId()]),
h.info(p(B="create camera video track(".concat(u,") and microphone audio track(")).call(B,r,") success")),[a,b]},createMicrophoneAudioTrack:async function(a={}){let b=t.reportApiInvoke(null,{tag:C.TRACER,name:A.CREATE_MIC_AUDIO_TRACK,options:[a]}),d=ki(a);var e=sa(8,"track-");let f=null;h.info("start create microphone audio track with config",z(a),"trackId",e);try{f=(await Hb({audio:d},e)).getAudioTracks()[0]||null}catch(g){throw b.onError(g),g;}if(!f)return e=new n(m.UNEXPECTED_ERROR,"can not find track in media stream"),
b.onError(e),e.throw();a=new vg(f,a,d,e);return b.onSuccess(a.getTrackId()),h.info("create microphone audio track success, trackId:",e),a},createCustomAudioTrack:function(a){let b=t.reportApiInvoke(null,{tag:C.TRACER,name:A.CREATE_CUSTOM_AUDIO_TRACK,options:[a]}),d=new db(a.mediaStreamTrack,a.encoderConfig?Id(a.encoderConfig):{});return h.info("create custom audio track success with config",a,"trackId",d.getTrackId()),b.onSuccess(d.getTrackId()),d},createBufferSourceAudioTrack:async function(a){let b=
t.reportApiInvoke(null,{tag:C.TRACER,name:A.CREATE_BUFFER_AUDIO_TRACK,options:[a]}),d=sa(8,"track-");h.info("start create buffer source audio track with config",z(a),"trackId",d);let e=a.source;if(!(a.source instanceof AudioBuffer))try{a.source=await Cm(a.source,a.cacheOnlineFile)}catch(g){return b.onError(g),g.throw()}let f=new oq(a.source);a=new Lp(e,f,a.encoderConfig?Id(a.encoderConfig):{},d);return h.info("create buffer source audio track success, trackId:",d),b.onSuccess(a.getTrackId()),a},setLogLevel:function(a){h.setLogLevel(a)},
enableLogUpload:function(){h.enableLogUpload()},disableLogUpload:function(){h.disableLogUpload()},createChannelMediaRelayConfiguration:function(){return new si},checkAudioTrackIsActive:async function(a,b=5E3){let d=t.reportApiInvoke(null,{tag:C.TRACER,name:A.CHECK_AUDIO_TRACK_IS_ACTIVE,options:[b]});if(!(a instanceof db||a instanceof Cd)){var e=new n(m.INVALID_TRACK,"the parameter is not a audio track");return d.onError(e),e.throw()}b&&1E3>b&&(b=1E3);let f=a instanceof db?a.getTrackLabel():"remote_track",
g=e=a.getVolumeLevel(),k=e,l=v();return new x(e=>{let m=pq(()=>{var n=a.getVolumeLevel();g=n>g?n:g;k=n<k?n:k;n=1E-4<g-k;var q=v()-l;if(n||q>b){var r;clearInterval(m);q={duration:q,deviceLabel:f,maxVolumeLevel:g,result:n};h.info(p(r="[track-".concat(a.getTrackId(),"] check audio track active completed. ")).call(r,z(q)));d.onSuccess(q);e(n)}},200)})},checkVideoTrackIsActive:async function(a,b=5E3){var d;let e=t.reportApiInvoke(null,{tag:C.TRACER,name:A.CHECK_VIDEO_TRACK_IS_ACTIVE,options:[b]});if(!(a instanceof
Ta||a instanceof Bd))return a=new n(m.INVALID_TRACK,"the parameter is not a video track"),e.onError(a),a.throw();b&&1E3>b&&(b=1E3);var f=a instanceof Ta?a.getTrackLabel():"remote_track",g=a.getMediaStreamTrack();let k=document.createElement("video");k.style.width="1px";k.style.height="1px";k.setAttribute("muted","");k.muted=!0;k.setAttribute("playsinline","");k.controls=!1;sl===ba.SAFARI&&(k.style.opacity="0.01",k.style.position="fixed",k.style.left="0",k.style.top="0",document.body.appendChild(k));
k.srcObject=new MediaStream([g]);k.play();let l=document.createElement("canvas");l.width=160;l.height=120;let r=g=0;try{let a=v();g=await Dm(k,b,l,4);r=v()-a}catch(E){throw e.onError(E),E;}sl===ba.SAFARI&&(k.pause(),k.remove());k.srcObject=null;b=4<g;f={duration:r,changedPicNum:g,deviceLabel:f,result:b};return h.info(p(d="[track-".concat(a.getTrackId(),"] check video track active completed. ")).call(d,z(f))),e.onSuccess(f),b},setArea:function(a){var b;"string"==typeof a&&(a=[a]);r(a).call(a,a=>{if(!Ja(Ck).call(Ck,
a))throw new n(m.INVALID_PARAMS,"invalid area code");});Zb("AREAS",a);let d=Op(a);y(b=S(d)).call(b,a=>{Zb(a,"LOG_UPLOAD_SERVER"===a||"EVENT_REPORT_DOMAIN"===a||"EVENT_REPORT_BACKUP_DOMAIN"===a||"PROXY_SERVER_TYPE3"===a?d[a][0]:d[a])});h.debug("set area success:",a.join(","))}};return ib.on(Wb.CAMERA_DEVICE_CHANGED,a=>{h.info("camera device changed",z(a));Cb.onCameraChanged&&Cb.onCameraChanged(a)}),ib.on(Wb.RECORDING_DEVICE_CHANGED,a=>{h.info("microphone device changed",z(a));Cb.onMicrophoneChanged&&
Cb.onMicrophoneChanged(a)}),ib.on(Wb.PLAYOUT_DEVICE_CHANGED,a=>{h.debug("playout device changed",z(a));Cb.onPlaybackDeviceChanged&&Cb.onPlaybackDeviceChanged(a)}),rb.onAutoplayFailed=()=>{h.info("detect audio element autoplay failed");Cb.onAudioAutoplayFailed&&Cb.onAudioAutoplayFailed()},hd.on("autoplay-failed",()=>{h.info("detect webaudio autoplay failed");Cb.onAudioAutoplayFailed&&Cb.onAudioAutoplayFailed()}),Cb})
//# sourceMappingURL=AgoraRTC_N-production.js.map

/* WEBPACK VAR INJECTION */}.call(this, __webpack_require__(/*! ./../webpack/buildin/global.js */ "./node_modules/webpack/buildin/global.js"), __webpack_require__(/*! ./../process/browser.js */ "./node_modules/process/browser.js")))

/***/ }),

/***/ "./node_modules/agora-rtm-sdk/index.js":
/*!*********************************************!*\
  !*** ./node_modules/agora-rtm-sdk/index.js ***!
  \*********************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";
/* WEBPACK VAR INJECTION */(function(global, process, module) {/*
 @preserve
 AgoraRTM Web SDK 1.4.2 - commit: v1.4.2-0-gcddbca54
 Copyright (C) 2018-2021 Agora Lab.
 This file is licensed under the AGORA, INC. SDK LICENSE AGREEMENT
 A copy of this license may be found at https://www.agora.io/en/sdk-license-agreement/
*/

/* WEBPACK VAR INJECTION */}.call(this, __webpack_require__(/*! ./../webpack/buildin/global.js */ "./node_modules/webpack/buildin/global.js"), __webpack_require__(/*! ./../process/browser.js */ "./node_modules/process/browser.js"), __webpack_require__(/*! ./../webpack/buildin/module.js */ "./node_modules/webpack/buildin/module.js")(module)))

/***/ }),

/***/ "./node_modules/bowser/es5.js":
/*!************************************!*\
  !*** ./node_modules/bowser/es5.js ***!
  \************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

!function(e,t){ true?module.exports=t():undefined}(this,(function(){return function(e){var t={};function r(n){if(t[n])return t[n].exports;var i=t[n]={i:n,l:!1,exports:{}};return e[n].call(i.exports,i,i.exports,r),i.l=!0,i.exports}return r.m=e,r.c=t,r.d=function(e,t,n){r.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:n})},r.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},r.t=function(e,t){if(1&t&&(e=r(e)),8&t)return e;if(4&t&&"object"==typeof e&&e&&e.__esModule)return e;var n=Object.create(null);if(r.r(n),Object.defineProperty(n,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var i in e)r.d(n,i,function(t){return e[t]}.bind(null,i));return n},r.n=function(e){var t=e&&e.__esModule?function(){return e.default}:function(){return e};return r.d(t,"a",t),t},r.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},r.p="",r(r.s=90)}({17:function(e,t,r){"use strict";t.__esModule=!0,t.default=void 0;var n=r(18),i=function(){function e(){}return e.getFirstMatch=function(e,t){var r=t.match(e);return r&&r.length>0&&r[1]||""},e.getSecondMatch=function(e,t){var r=t.match(e);return r&&r.length>1&&r[2]||""},e.matchAndReturnConst=function(e,t,r){if(e.test(t))return r},e.getWindowsVersionName=function(e){switch(e){case"NT":return"NT";case"XP":return"XP";case"NT 5.0":return"2000";case"NT 5.1":return"XP";case"NT 5.2":return"2003";case"NT 6.0":return"Vista";case"NT 6.1":return"7";case"NT 6.2":return"8";case"NT 6.3":return"8.1";case"NT 10.0":return"10";default:return}},e.getMacOSVersionName=function(e){var t=e.split(".").splice(0,2).map((function(e){return parseInt(e,10)||0}));if(t.push(0),10===t[0])switch(t[1]){case 5:return"Leopard";case 6:return"Snow Leopard";case 7:return"Lion";case 8:return"Mountain Lion";case 9:return"Mavericks";case 10:return"Yosemite";case 11:return"El Capitan";case 12:return"Sierra";case 13:return"High Sierra";case 14:return"Mojave";case 15:return"Catalina";default:return}},e.getAndroidVersionName=function(e){var t=e.split(".").splice(0,2).map((function(e){return parseInt(e,10)||0}));if(t.push(0),!(1===t[0]&&t[1]<5))return 1===t[0]&&t[1]<6?"Cupcake":1===t[0]&&t[1]>=6?"Donut":2===t[0]&&t[1]<2?"Eclair":2===t[0]&&2===t[1]?"Froyo":2===t[0]&&t[1]>2?"Gingerbread":3===t[0]?"Honeycomb":4===t[0]&&t[1]<1?"Ice Cream Sandwich":4===t[0]&&t[1]<4?"Jelly Bean":4===t[0]&&t[1]>=4?"KitKat":5===t[0]?"Lollipop":6===t[0]?"Marshmallow":7===t[0]?"Nougat":8===t[0]?"Oreo":9===t[0]?"Pie":void 0},e.getVersionPrecision=function(e){return e.split(".").length},e.compareVersions=function(t,r,n){void 0===n&&(n=!1);var i=e.getVersionPrecision(t),s=e.getVersionPrecision(r),a=Math.max(i,s),o=0,u=e.map([t,r],(function(t){var r=a-e.getVersionPrecision(t),n=t+new Array(r+1).join(".0");return e.map(n.split("."),(function(e){return new Array(20-e.length).join("0")+e})).reverse()}));for(n&&(o=a-Math.min(i,s)),a-=1;a>=o;){if(u[0][a]>u[1][a])return 1;if(u[0][a]===u[1][a]){if(a===o)return 0;a-=1}else if(u[0][a]<u[1][a])return-1}},e.map=function(e,t){var r,n=[];if(Array.prototype.map)return Array.prototype.map.call(e,t);for(r=0;r<e.length;r+=1)n.push(t(e[r]));return n},e.find=function(e,t){var r,n;if(Array.prototype.find)return Array.prototype.find.call(e,t);for(r=0,n=e.length;r<n;r+=1){var i=e[r];if(t(i,r))return i}},e.assign=function(e){for(var t,r,n=e,i=arguments.length,s=new Array(i>1?i-1:0),a=1;a<i;a++)s[a-1]=arguments[a];if(Object.assign)return Object.assign.apply(Object,[e].concat(s));var o=function(){var e=s[t];"object"==typeof e&&null!==e&&Object.keys(e).forEach((function(t){n[t]=e[t]}))};for(t=0,r=s.length;t<r;t+=1)o();return e},e.getBrowserAlias=function(e){return n.BROWSER_ALIASES_MAP[e]},e.getBrowserTypeByAlias=function(e){return n.BROWSER_MAP[e]||""},e}();t.default=i,e.exports=t.default},18:function(e,t,r){"use strict";t.__esModule=!0,t.ENGINE_MAP=t.OS_MAP=t.PLATFORMS_MAP=t.BROWSER_MAP=t.BROWSER_ALIASES_MAP=void 0;t.BROWSER_ALIASES_MAP={"Amazon Silk":"amazon_silk","Android Browser":"android",Bada:"bada",BlackBerry:"blackberry",Chrome:"chrome",Chromium:"chromium",Electron:"electron",Epiphany:"epiphany",Firefox:"firefox",Focus:"focus",Generic:"generic","Google Search":"google_search",Googlebot:"googlebot","Internet Explorer":"ie","K-Meleon":"k_meleon",Maxthon:"maxthon","Microsoft Edge":"edge","MZ Browser":"mz","NAVER Whale Browser":"naver",Opera:"opera","Opera Coast":"opera_coast",PhantomJS:"phantomjs",Puffin:"puffin",QupZilla:"qupzilla",QQ:"qq",QQLite:"qqlite",Safari:"safari",Sailfish:"sailfish","Samsung Internet for Android":"samsung_internet",SeaMonkey:"seamonkey",Sleipnir:"sleipnir",Swing:"swing",Tizen:"tizen","UC Browser":"uc",Vivaldi:"vivaldi","WebOS Browser":"webos",WeChat:"wechat","Yandex Browser":"yandex",Roku:"roku"};t.BROWSER_MAP={amazon_silk:"Amazon Silk",android:"Android Browser",bada:"Bada",blackberry:"BlackBerry",chrome:"Chrome",chromium:"Chromium",electron:"Electron",epiphany:"Epiphany",firefox:"Firefox",focus:"Focus",generic:"Generic",googlebot:"Googlebot",google_search:"Google Search",ie:"Internet Explorer",k_meleon:"K-Meleon",maxthon:"Maxthon",edge:"Microsoft Edge",mz:"MZ Browser",naver:"NAVER Whale Browser",opera:"Opera",opera_coast:"Opera Coast",phantomjs:"PhantomJS",puffin:"Puffin",qupzilla:"QupZilla",qq:"QQ Browser",qqlite:"QQ Browser Lite",safari:"Safari",sailfish:"Sailfish",samsung_internet:"Samsung Internet for Android",seamonkey:"SeaMonkey",sleipnir:"Sleipnir",swing:"Swing",tizen:"Tizen",uc:"UC Browser",vivaldi:"Vivaldi",webos:"WebOS Browser",wechat:"WeChat",yandex:"Yandex Browser"};t.PLATFORMS_MAP={tablet:"tablet",mobile:"mobile",desktop:"desktop",tv:"tv"};t.OS_MAP={WindowsPhone:"Windows Phone",Windows:"Windows",MacOS:"macOS",iOS:"iOS",Android:"Android",WebOS:"WebOS",BlackBerry:"BlackBerry",Bada:"Bada",Tizen:"Tizen",Linux:"Linux",ChromeOS:"Chrome OS",PlayStation4:"PlayStation 4",Roku:"Roku"};t.ENGINE_MAP={EdgeHTML:"EdgeHTML",Blink:"Blink",Trident:"Trident",Presto:"Presto",Gecko:"Gecko",WebKit:"WebKit"}},90:function(e,t,r){"use strict";t.__esModule=!0,t.default=void 0;var n,i=(n=r(91))&&n.__esModule?n:{default:n},s=r(18);function a(e,t){for(var r=0;r<t.length;r++){var n=t[r];n.enumerable=n.enumerable||!1,n.configurable=!0,"value"in n&&(n.writable=!0),Object.defineProperty(e,n.key,n)}}var o=function(){function e(){}var t,r,n;return e.getParser=function(e,t){if(void 0===t&&(t=!1),"string"!=typeof e)throw new Error("UserAgent should be a string");return new i.default(e,t)},e.parse=function(e){return new i.default(e).getResult()},t=e,n=[{key:"BROWSER_MAP",get:function(){return s.BROWSER_MAP}},{key:"ENGINE_MAP",get:function(){return s.ENGINE_MAP}},{key:"OS_MAP",get:function(){return s.OS_MAP}},{key:"PLATFORMS_MAP",get:function(){return s.PLATFORMS_MAP}}],(r=null)&&a(t.prototype,r),n&&a(t,n),e}();t.default=o,e.exports=t.default},91:function(e,t,r){"use strict";t.__esModule=!0,t.default=void 0;var n=u(r(92)),i=u(r(93)),s=u(r(94)),a=u(r(95)),o=u(r(17));function u(e){return e&&e.__esModule?e:{default:e}}var d=function(){function e(e,t){if(void 0===t&&(t=!1),null==e||""===e)throw new Error("UserAgent parameter can't be empty");this._ua=e,this.parsedResult={},!0!==t&&this.parse()}var t=e.prototype;return t.getUA=function(){return this._ua},t.test=function(e){return e.test(this._ua)},t.parseBrowser=function(){var e=this;this.parsedResult.browser={};var t=o.default.find(n.default,(function(t){if("function"==typeof t.test)return t.test(e);if(t.test instanceof Array)return t.test.some((function(t){return e.test(t)}));throw new Error("Browser's test function is not valid")}));return t&&(this.parsedResult.browser=t.describe(this.getUA())),this.parsedResult.browser},t.getBrowser=function(){return this.parsedResult.browser?this.parsedResult.browser:this.parseBrowser()},t.getBrowserName=function(e){return e?String(this.getBrowser().name).toLowerCase()||"":this.getBrowser().name||""},t.getBrowserVersion=function(){return this.getBrowser().version},t.getOS=function(){return this.parsedResult.os?this.parsedResult.os:this.parseOS()},t.parseOS=function(){var e=this;this.parsedResult.os={};var t=o.default.find(i.default,(function(t){if("function"==typeof t.test)return t.test(e);if(t.test instanceof Array)return t.test.some((function(t){return e.test(t)}));throw new Error("Browser's test function is not valid")}));return t&&(this.parsedResult.os=t.describe(this.getUA())),this.parsedResult.os},t.getOSName=function(e){var t=this.getOS().name;return e?String(t).toLowerCase()||"":t||""},t.getOSVersion=function(){return this.getOS().version},t.getPlatform=function(){return this.parsedResult.platform?this.parsedResult.platform:this.parsePlatform()},t.getPlatformType=function(e){void 0===e&&(e=!1);var t=this.getPlatform().type;return e?String(t).toLowerCase()||"":t||""},t.parsePlatform=function(){var e=this;this.parsedResult.platform={};var t=o.default.find(s.default,(function(t){if("function"==typeof t.test)return t.test(e);if(t.test instanceof Array)return t.test.some((function(t){return e.test(t)}));throw new Error("Browser's test function is not valid")}));return t&&(this.parsedResult.platform=t.describe(this.getUA())),this.parsedResult.platform},t.getEngine=function(){return this.parsedResult.engine?this.parsedResult.engine:this.parseEngine()},t.getEngineName=function(e){return e?String(this.getEngine().name).toLowerCase()||"":this.getEngine().name||""},t.parseEngine=function(){var e=this;this.parsedResult.engine={};var t=o.default.find(a.default,(function(t){if("function"==typeof t.test)return t.test(e);if(t.test instanceof Array)return t.test.some((function(t){return e.test(t)}));throw new Error("Browser's test function is not valid")}));return t&&(this.parsedResult.engine=t.describe(this.getUA())),this.parsedResult.engine},t.parse=function(){return this.parseBrowser(),this.parseOS(),this.parsePlatform(),this.parseEngine(),this},t.getResult=function(){return o.default.assign({},this.parsedResult)},t.satisfies=function(e){var t=this,r={},n=0,i={},s=0;if(Object.keys(e).forEach((function(t){var a=e[t];"string"==typeof a?(i[t]=a,s+=1):"object"==typeof a&&(r[t]=a,n+=1)})),n>0){var a=Object.keys(r),u=o.default.find(a,(function(e){return t.isOS(e)}));if(u){var d=this.satisfies(r[u]);if(void 0!==d)return d}var c=o.default.find(a,(function(e){return t.isPlatform(e)}));if(c){var f=this.satisfies(r[c]);if(void 0!==f)return f}}if(s>0){var l=Object.keys(i),h=o.default.find(l,(function(e){return t.isBrowser(e,!0)}));if(void 0!==h)return this.compareVersion(i[h])}},t.isBrowser=function(e,t){void 0===t&&(t=!1);var r=this.getBrowserName().toLowerCase(),n=e.toLowerCase(),i=o.default.getBrowserTypeByAlias(n);return t&&i&&(n=i.toLowerCase()),n===r},t.compareVersion=function(e){var t=[0],r=e,n=!1,i=this.getBrowserVersion();if("string"==typeof i)return">"===e[0]||"<"===e[0]?(r=e.substr(1),"="===e[1]?(n=!0,r=e.substr(2)):t=[],">"===e[0]?t.push(1):t.push(-1)):"="===e[0]?r=e.substr(1):"~"===e[0]&&(n=!0,r=e.substr(1)),t.indexOf(o.default.compareVersions(i,r,n))>-1},t.isOS=function(e){return this.getOSName(!0)===String(e).toLowerCase()},t.isPlatform=function(e){return this.getPlatformType(!0)===String(e).toLowerCase()},t.isEngine=function(e){return this.getEngineName(!0)===String(e).toLowerCase()},t.is=function(e,t){return void 0===t&&(t=!1),this.isBrowser(e,t)||this.isOS(e)||this.isPlatform(e)},t.some=function(e){var t=this;return void 0===e&&(e=[]),e.some((function(e){return t.is(e)}))},e}();t.default=d,e.exports=t.default},92:function(e,t,r){"use strict";t.__esModule=!0,t.default=void 0;var n,i=(n=r(17))&&n.__esModule?n:{default:n};var s=/version\/(\d+(\.?_?\d+)+)/i,a=[{test:[/googlebot/i],describe:function(e){var t={name:"Googlebot"},r=i.default.getFirstMatch(/googlebot\/(\d+(\.\d+))/i,e)||i.default.getFirstMatch(s,e);return r&&(t.version=r),t}},{test:[/opera/i],describe:function(e){var t={name:"Opera"},r=i.default.getFirstMatch(s,e)||i.default.getFirstMatch(/(?:opera)[\s/](\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/opr\/|opios/i],describe:function(e){var t={name:"Opera"},r=i.default.getFirstMatch(/(?:opr|opios)[\s/](\S+)/i,e)||i.default.getFirstMatch(s,e);return r&&(t.version=r),t}},{test:[/SamsungBrowser/i],describe:function(e){var t={name:"Samsung Internet for Android"},r=i.default.getFirstMatch(s,e)||i.default.getFirstMatch(/(?:SamsungBrowser)[\s/](\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/Whale/i],describe:function(e){var t={name:"NAVER Whale Browser"},r=i.default.getFirstMatch(s,e)||i.default.getFirstMatch(/(?:whale)[\s/](\d+(?:\.\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/MZBrowser/i],describe:function(e){var t={name:"MZ Browser"},r=i.default.getFirstMatch(/(?:MZBrowser)[\s/](\d+(?:\.\d+)+)/i,e)||i.default.getFirstMatch(s,e);return r&&(t.version=r),t}},{test:[/focus/i],describe:function(e){var t={name:"Focus"},r=i.default.getFirstMatch(/(?:focus)[\s/](\d+(?:\.\d+)+)/i,e)||i.default.getFirstMatch(s,e);return r&&(t.version=r),t}},{test:[/swing/i],describe:function(e){var t={name:"Swing"},r=i.default.getFirstMatch(/(?:swing)[\s/](\d+(?:\.\d+)+)/i,e)||i.default.getFirstMatch(s,e);return r&&(t.version=r),t}},{test:[/coast/i],describe:function(e){var t={name:"Opera Coast"},r=i.default.getFirstMatch(s,e)||i.default.getFirstMatch(/(?:coast)[\s/](\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/opt\/\d+(?:.?_?\d+)+/i],describe:function(e){var t={name:"Opera Touch"},r=i.default.getFirstMatch(/(?:opt)[\s/](\d+(\.?_?\d+)+)/i,e)||i.default.getFirstMatch(s,e);return r&&(t.version=r),t}},{test:[/yabrowser/i],describe:function(e){var t={name:"Yandex Browser"},r=i.default.getFirstMatch(/(?:yabrowser)[\s/](\d+(\.?_?\d+)+)/i,e)||i.default.getFirstMatch(s,e);return r&&(t.version=r),t}},{test:[/ucbrowser/i],describe:function(e){var t={name:"UC Browser"},r=i.default.getFirstMatch(s,e)||i.default.getFirstMatch(/(?:ucbrowser)[\s/](\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/Maxthon|mxios/i],describe:function(e){var t={name:"Maxthon"},r=i.default.getFirstMatch(s,e)||i.default.getFirstMatch(/(?:Maxthon|mxios)[\s/](\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/epiphany/i],describe:function(e){var t={name:"Epiphany"},r=i.default.getFirstMatch(s,e)||i.default.getFirstMatch(/(?:epiphany)[\s/](\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/puffin/i],describe:function(e){var t={name:"Puffin"},r=i.default.getFirstMatch(s,e)||i.default.getFirstMatch(/(?:puffin)[\s/](\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/sleipnir/i],describe:function(e){var t={name:"Sleipnir"},r=i.default.getFirstMatch(s,e)||i.default.getFirstMatch(/(?:sleipnir)[\s/](\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/k-meleon/i],describe:function(e){var t={name:"K-Meleon"},r=i.default.getFirstMatch(s,e)||i.default.getFirstMatch(/(?:k-meleon)[\s/](\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/micromessenger/i],describe:function(e){var t={name:"WeChat"},r=i.default.getFirstMatch(/(?:micromessenger)[\s/](\d+(\.?_?\d+)+)/i,e)||i.default.getFirstMatch(s,e);return r&&(t.version=r),t}},{test:[/qqbrowser/i],describe:function(e){var t={name:/qqbrowserlite/i.test(e)?"QQ Browser Lite":"QQ Browser"},r=i.default.getFirstMatch(/(?:qqbrowserlite|qqbrowser)[/](\d+(\.?_?\d+)+)/i,e)||i.default.getFirstMatch(s,e);return r&&(t.version=r),t}},{test:[/msie|trident/i],describe:function(e){var t={name:"Internet Explorer"},r=i.default.getFirstMatch(/(?:msie |rv:)(\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/\sedg\//i],describe:function(e){var t={name:"Microsoft Edge"},r=i.default.getFirstMatch(/\sedg\/(\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/edg([ea]|ios)/i],describe:function(e){var t={name:"Microsoft Edge"},r=i.default.getSecondMatch(/edg([ea]|ios)\/(\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/vivaldi/i],describe:function(e){var t={name:"Vivaldi"},r=i.default.getFirstMatch(/vivaldi\/(\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/seamonkey/i],describe:function(e){var t={name:"SeaMonkey"},r=i.default.getFirstMatch(/seamonkey\/(\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/sailfish/i],describe:function(e){var t={name:"Sailfish"},r=i.default.getFirstMatch(/sailfish\s?browser\/(\d+(\.\d+)?)/i,e);return r&&(t.version=r),t}},{test:[/silk/i],describe:function(e){var t={name:"Amazon Silk"},r=i.default.getFirstMatch(/silk\/(\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/phantom/i],describe:function(e){var t={name:"PhantomJS"},r=i.default.getFirstMatch(/phantomjs\/(\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/slimerjs/i],describe:function(e){var t={name:"SlimerJS"},r=i.default.getFirstMatch(/slimerjs\/(\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/blackberry|\bbb\d+/i,/rim\stablet/i],describe:function(e){var t={name:"BlackBerry"},r=i.default.getFirstMatch(s,e)||i.default.getFirstMatch(/blackberry[\d]+\/(\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/(web|hpw)[o0]s/i],describe:function(e){var t={name:"WebOS Browser"},r=i.default.getFirstMatch(s,e)||i.default.getFirstMatch(/w(?:eb)?[o0]sbrowser\/(\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/bada/i],describe:function(e){var t={name:"Bada"},r=i.default.getFirstMatch(/dolfin\/(\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/tizen/i],describe:function(e){var t={name:"Tizen"},r=i.default.getFirstMatch(/(?:tizen\s?)?browser\/(\d+(\.?_?\d+)+)/i,e)||i.default.getFirstMatch(s,e);return r&&(t.version=r),t}},{test:[/qupzilla/i],describe:function(e){var t={name:"QupZilla"},r=i.default.getFirstMatch(/(?:qupzilla)[\s/](\d+(\.?_?\d+)+)/i,e)||i.default.getFirstMatch(s,e);return r&&(t.version=r),t}},{test:[/firefox|iceweasel|fxios/i],describe:function(e){var t={name:"Firefox"},r=i.default.getFirstMatch(/(?:firefox|iceweasel|fxios)[\s/](\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/electron/i],describe:function(e){var t={name:"Electron"},r=i.default.getFirstMatch(/(?:electron)\/(\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/MiuiBrowser/i],describe:function(e){var t={name:"Miui"},r=i.default.getFirstMatch(/(?:MiuiBrowser)[\s/](\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/chromium/i],describe:function(e){var t={name:"Chromium"},r=i.default.getFirstMatch(/(?:chromium)[\s/](\d+(\.?_?\d+)+)/i,e)||i.default.getFirstMatch(s,e);return r&&(t.version=r),t}},{test:[/chrome|crios|crmo/i],describe:function(e){var t={name:"Chrome"},r=i.default.getFirstMatch(/(?:chrome|crios|crmo)\/(\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/GSA/i],describe:function(e){var t={name:"Google Search"},r=i.default.getFirstMatch(/(?:GSA)\/(\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:function(e){var t=!e.test(/like android/i),r=e.test(/android/i);return t&&r},describe:function(e){var t={name:"Android Browser"},r=i.default.getFirstMatch(s,e);return r&&(t.version=r),t}},{test:[/playstation 4/i],describe:function(e){var t={name:"PlayStation 4"},r=i.default.getFirstMatch(s,e);return r&&(t.version=r),t}},{test:[/safari|applewebkit/i],describe:function(e){var t={name:"Safari"},r=i.default.getFirstMatch(s,e);return r&&(t.version=r),t}},{test:[/.*/i],describe:function(e){var t=-1!==e.search("\\(")?/^(.*)\/(.*)[ \t]\((.*)/:/^(.*)\/(.*) /;return{name:i.default.getFirstMatch(t,e),version:i.default.getSecondMatch(t,e)}}}];t.default=a,e.exports=t.default},93:function(e,t,r){"use strict";t.__esModule=!0,t.default=void 0;var n,i=(n=r(17))&&n.__esModule?n:{default:n},s=r(18);var a=[{test:[/Roku\/DVP/],describe:function(e){var t=i.default.getFirstMatch(/Roku\/DVP-(\d+\.\d+)/i,e);return{name:s.OS_MAP.Roku,version:t}}},{test:[/windows phone/i],describe:function(e){var t=i.default.getFirstMatch(/windows phone (?:os)?\s?(\d+(\.\d+)*)/i,e);return{name:s.OS_MAP.WindowsPhone,version:t}}},{test:[/windows /i],describe:function(e){var t=i.default.getFirstMatch(/Windows ((NT|XP)( \d\d?.\d)?)/i,e),r=i.default.getWindowsVersionName(t);return{name:s.OS_MAP.Windows,version:t,versionName:r}}},{test:[/Macintosh(.*?) FxiOS(.*?)\//],describe:function(e){var t={name:s.OS_MAP.iOS},r=i.default.getSecondMatch(/(Version\/)(\d[\d.]+)/,e);return r&&(t.version=r),t}},{test:[/macintosh/i],describe:function(e){var t=i.default.getFirstMatch(/mac os x (\d+(\.?_?\d+)+)/i,e).replace(/[_\s]/g,"."),r=i.default.getMacOSVersionName(t),n={name:s.OS_MAP.MacOS,version:t};return r&&(n.versionName=r),n}},{test:[/(ipod|iphone|ipad)/i],describe:function(e){var t=i.default.getFirstMatch(/os (\d+([_\s]\d+)*) like mac os x/i,e).replace(/[_\s]/g,".");return{name:s.OS_MAP.iOS,version:t}}},{test:function(e){var t=!e.test(/like android/i),r=e.test(/android/i);return t&&r},describe:function(e){var t=i.default.getFirstMatch(/android[\s/-](\d+(\.\d+)*)/i,e),r=i.default.getAndroidVersionName(t),n={name:s.OS_MAP.Android,version:t};return r&&(n.versionName=r),n}},{test:[/(web|hpw)[o0]s/i],describe:function(e){var t=i.default.getFirstMatch(/(?:web|hpw)[o0]s\/(\d+(\.\d+)*)/i,e),r={name:s.OS_MAP.WebOS};return t&&t.length&&(r.version=t),r}},{test:[/blackberry|\bbb\d+/i,/rim\stablet/i],describe:function(e){var t=i.default.getFirstMatch(/rim\stablet\sos\s(\d+(\.\d+)*)/i,e)||i.default.getFirstMatch(/blackberry\d+\/(\d+([_\s]\d+)*)/i,e)||i.default.getFirstMatch(/\bbb(\d+)/i,e);return{name:s.OS_MAP.BlackBerry,version:t}}},{test:[/bada/i],describe:function(e){var t=i.default.getFirstMatch(/bada\/(\d+(\.\d+)*)/i,e);return{name:s.OS_MAP.Bada,version:t}}},{test:[/tizen/i],describe:function(e){var t=i.default.getFirstMatch(/tizen[/\s](\d+(\.\d+)*)/i,e);return{name:s.OS_MAP.Tizen,version:t}}},{test:[/linux/i],describe:function(){return{name:s.OS_MAP.Linux}}},{test:[/CrOS/],describe:function(){return{name:s.OS_MAP.ChromeOS}}},{test:[/PlayStation 4/],describe:function(e){var t=i.default.getFirstMatch(/PlayStation 4[/\s](\d+(\.\d+)*)/i,e);return{name:s.OS_MAP.PlayStation4,version:t}}}];t.default=a,e.exports=t.default},94:function(e,t,r){"use strict";t.__esModule=!0,t.default=void 0;var n,i=(n=r(17))&&n.__esModule?n:{default:n},s=r(18);var a=[{test:[/googlebot/i],describe:function(){return{type:"bot",vendor:"Google"}}},{test:[/huawei/i],describe:function(e){var t=i.default.getFirstMatch(/(can-l01)/i,e)&&"Nova",r={type:s.PLATFORMS_MAP.mobile,vendor:"Huawei"};return t&&(r.model=t),r}},{test:[/nexus\s*(?:7|8|9|10).*/i],describe:function(){return{type:s.PLATFORMS_MAP.tablet,vendor:"Nexus"}}},{test:[/ipad/i],describe:function(){return{type:s.PLATFORMS_MAP.tablet,vendor:"Apple",model:"iPad"}}},{test:[/Macintosh(.*?) FxiOS(.*?)\//],describe:function(){return{type:s.PLATFORMS_MAP.tablet,vendor:"Apple",model:"iPad"}}},{test:[/kftt build/i],describe:function(){return{type:s.PLATFORMS_MAP.tablet,vendor:"Amazon",model:"Kindle Fire HD 7"}}},{test:[/silk/i],describe:function(){return{type:s.PLATFORMS_MAP.tablet,vendor:"Amazon"}}},{test:[/tablet(?! pc)/i],describe:function(){return{type:s.PLATFORMS_MAP.tablet}}},{test:function(e){var t=e.test(/ipod|iphone/i),r=e.test(/like (ipod|iphone)/i);return t&&!r},describe:function(e){var t=i.default.getFirstMatch(/(ipod|iphone)/i,e);return{type:s.PLATFORMS_MAP.mobile,vendor:"Apple",model:t}}},{test:[/nexus\s*[0-6].*/i,/galaxy nexus/i],describe:function(){return{type:s.PLATFORMS_MAP.mobile,vendor:"Nexus"}}},{test:[/[^-]mobi/i],describe:function(){return{type:s.PLATFORMS_MAP.mobile}}},{test:function(e){return"blackberry"===e.getBrowserName(!0)},describe:function(){return{type:s.PLATFORMS_MAP.mobile,vendor:"BlackBerry"}}},{test:function(e){return"bada"===e.getBrowserName(!0)},describe:function(){return{type:s.PLATFORMS_MAP.mobile}}},{test:function(e){return"windows phone"===e.getBrowserName()},describe:function(){return{type:s.PLATFORMS_MAP.mobile,vendor:"Microsoft"}}},{test:function(e){var t=Number(String(e.getOSVersion()).split(".")[0]);return"android"===e.getOSName(!0)&&t>=3},describe:function(){return{type:s.PLATFORMS_MAP.tablet}}},{test:function(e){return"android"===e.getOSName(!0)},describe:function(){return{type:s.PLATFORMS_MAP.mobile}}},{test:function(e){return"macos"===e.getOSName(!0)},describe:function(){return{type:s.PLATFORMS_MAP.desktop,vendor:"Apple"}}},{test:function(e){return"windows"===e.getOSName(!0)},describe:function(){return{type:s.PLATFORMS_MAP.desktop}}},{test:function(e){return"linux"===e.getOSName(!0)},describe:function(){return{type:s.PLATFORMS_MAP.desktop}}},{test:function(e){return"playstation 4"===e.getOSName(!0)},describe:function(){return{type:s.PLATFORMS_MAP.tv}}},{test:function(e){return"roku"===e.getOSName(!0)},describe:function(){return{type:s.PLATFORMS_MAP.tv}}}];t.default=a,e.exports=t.default},95:function(e,t,r){"use strict";t.__esModule=!0,t.default=void 0;var n,i=(n=r(17))&&n.__esModule?n:{default:n},s=r(18);var a=[{test:function(e){return"microsoft edge"===e.getBrowserName(!0)},describe:function(e){if(/\sedg\//i.test(e))return{name:s.ENGINE_MAP.Blink};var t=i.default.getFirstMatch(/edge\/(\d+(\.?_?\d+)+)/i,e);return{name:s.ENGINE_MAP.EdgeHTML,version:t}}},{test:[/trident/i],describe:function(e){var t={name:s.ENGINE_MAP.Trident},r=i.default.getFirstMatch(/trident\/(\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:function(e){return e.test(/presto/i)},describe:function(e){var t={name:s.ENGINE_MAP.Presto},r=i.default.getFirstMatch(/presto\/(\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:function(e){var t=e.test(/gecko/i),r=e.test(/like gecko/i);return t&&!r},describe:function(e){var t={name:s.ENGINE_MAP.Gecko},r=i.default.getFirstMatch(/gecko\/(\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}},{test:[/(apple)?webkit\/537\.36/i],describe:function(){return{name:s.ENGINE_MAP.Blink}}},{test:[/(apple)?webkit/i],describe:function(e){var t={name:s.ENGINE_MAP.WebKit},r=i.default.getFirstMatch(/webkit\/(\d+(\.?_?\d+)+)/i,e);return r&&(t.version=r),t}}];t.default=a,e.exports=t.default}})}));

/***/ }),

/***/ "./node_modules/process/browser.js":
/*!*****************************************!*\
  !*** ./node_modules/process/browser.js ***!
  \*****************************************/
/*! no static exports found */
/***/ (function(module, exports) {

// shim for using process in browser
var process = module.exports = {};

// cached from whatever global is present so that test runners that stub it
// don't break things.  But we need to wrap it in a try catch in case it is
// wrapped in strict mode code which doesn't define any globals.  It's inside a
// function because try/catches deoptimize in certain engines.

var cachedSetTimeout;
var cachedClearTimeout;

function defaultSetTimout() {
    throw new Error('setTimeout has not been defined');
}
function defaultClearTimeout () {
    throw new Error('clearTimeout has not been defined');
}
(function () {
    try {
        if (typeof setTimeout === 'function') {
            cachedSetTimeout = setTimeout;
        } else {
            cachedSetTimeout = defaultSetTimout;
        }
    } catch (e) {
        cachedSetTimeout = defaultSetTimout;
    }
    try {
        if (typeof clearTimeout === 'function') {
            cachedClearTimeout = clearTimeout;
        } else {
            cachedClearTimeout = defaultClearTimeout;
        }
    } catch (e) {
        cachedClearTimeout = defaultClearTimeout;
    }
} ())
function runTimeout(fun) {
    if (cachedSetTimeout === setTimeout) {
        //normal enviroments in sane situations
        return setTimeout(fun, 0);
    }
    // if setTimeout wasn't available but was latter defined
    if ((cachedSetTimeout === defaultSetTimout || !cachedSetTimeout) && setTimeout) {
        cachedSetTimeout = setTimeout;
        return setTimeout(fun, 0);
    }
    try {
        // when when somebody has screwed with setTimeout but no I.E. maddness
        return cachedSetTimeout(fun, 0);
    } catch(e){
        try {
            // When we are in I.E. but the script has been evaled so I.E. doesn't trust the global object when called normally
            return cachedSetTimeout.call(null, fun, 0);
        } catch(e){
            // same as above but when it's a version of I.E. that must have the global object for 'this', hopfully our context correct otherwise it will throw a global error
            return cachedSetTimeout.call(this, fun, 0);
        }
    }


}
function runClearTimeout(marker) {
    if (cachedClearTimeout === clearTimeout) {
        //normal enviroments in sane situations
        return clearTimeout(marker);
    }
    // if clearTimeout wasn't available but was latter defined
    if ((cachedClearTimeout === defaultClearTimeout || !cachedClearTimeout) && clearTimeout) {
        cachedClearTimeout = clearTimeout;
        return clearTimeout(marker);
    }
    try {
        // when when somebody has screwed with setTimeout but no I.E. maddness
        return cachedClearTimeout(marker);
    } catch (e){
        try {
            // When we are in I.E. but the script has been evaled so I.E. doesn't  trust the global object when called normally
            return cachedClearTimeout.call(null, marker);
        } catch (e){
            // same as above but when it's a version of I.E. that must have the global object for 'this', hopfully our context correct otherwise it will throw a global error.
            // Some versions of I.E. have different rules for clearTimeout vs setTimeout
            return cachedClearTimeout.call(this, marker);
        }
    }



}
var queue = [];
var draining = false;
var currentQueue;
var queueIndex = -1;

function cleanUpNextTick() {
    if (!draining || !currentQueue) {
        return;
    }
    draining = false;
    if (currentQueue.length) {
        queue = currentQueue.concat(queue);
    } else {
        queueIndex = -1;
    }
    if (queue.length) {
        drainQueue();
    }
}

function drainQueue() {
    if (draining) {
        return;
    }
    var timeout = runTimeout(cleanUpNextTick);
    draining = true;

    var len = queue.length;
    while(len) {
        currentQueue = queue;
        queue = [];
        while (++queueIndex < len) {
            if (currentQueue) {
                currentQueue[queueIndex].run();
            }
        }
        queueIndex = -1;
        len = queue.length;
    }
    currentQueue = null;
    draining = false;
    runClearTimeout(timeout);
}

process.nextTick = function (fun) {
    var args = new Array(arguments.length - 1);
    if (arguments.length > 1) {
        for (var i = 1; i < arguments.length; i++) {
            args[i - 1] = arguments[i];
        }
    }
    queue.push(new Item(fun, args));
    if (queue.length === 1 && !draining) {
        runTimeout(drainQueue);
    }
};

// v8 likes predictible objects
function Item(fun, array) {
    this.fun = fun;
    this.array = array;
}
Item.prototype.run = function () {
    this.fun.apply(null, this.array);
};
process.title = 'browser';
process.browser = true;
process.env = {};
process.argv = [];
process.version = ''; // empty string to avoid regexp issues
process.versions = {};

function noop() {}

process.on = noop;
process.addListener = noop;
process.once = noop;
process.off = noop;
process.removeListener = noop;
process.removeAllListeners = noop;
process.emit = noop;
process.prependListener = noop;
process.prependOnceListener = noop;

process.listeners = function (name) { return [] }

process.binding = function (name) {
    throw new Error('process.binding is not supported');
};

process.cwd = function () { return '/' };
process.chdir = function (dir) {
    throw new Error('process.chdir is not supported');
};
process.umask = function() { return 0; };


/***/ }),

/***/ "./node_modules/redux/es/redux.js":
/*!****************************************!*\
  !*** ./node_modules/redux/es/redux.js ***!
  \****************************************/
/*! exports provided: __DO_NOT_USE__ActionTypes, applyMiddleware, bindActionCreators, combineReducers, compose, createStore */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "__DO_NOT_USE__ActionTypes", function() { return ActionTypes; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "applyMiddleware", function() { return applyMiddleware; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "bindActionCreators", function() { return bindActionCreators; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "combineReducers", function() { return combineReducers; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "compose", function() { return compose; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "createStore", function() { return createStore; });
/* harmony import */ var symbol_observable__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! symbol-observable */ "./node_modules/symbol-observable/es/index.js");


/**
 * These are private action types reserved by Redux.
 * For any unknown actions, you must return the current state.
 * If the current state is undefined, you must return the initial state.
 * Do not reference these action types directly in your code.
 */
var randomString = function randomString() {
  return Math.random().toString(36).substring(7).split('').join('.');
};

var ActionTypes = {
  INIT: "@@redux/INIT" + randomString(),
  REPLACE: "@@redux/REPLACE" + randomString(),
  PROBE_UNKNOWN_ACTION: function PROBE_UNKNOWN_ACTION() {
    return "@@redux/PROBE_UNKNOWN_ACTION" + randomString();
  }
};

/**
 * @param {any} obj The object to inspect.
 * @returns {boolean} True if the argument appears to be a plain object.
 */
function isPlainObject(obj) {
  if (typeof obj !== 'object' || obj === null) return false;
  var proto = obj;

  while (Object.getPrototypeOf(proto) !== null) {
    proto = Object.getPrototypeOf(proto);
  }

  return Object.getPrototypeOf(obj) === proto;
}

/**
 * Creates a Redux store that holds the state tree.
 * The only way to change the data in the store is to call `dispatch()` on it.
 *
 * There should only be a single store in your app. To specify how different
 * parts of the state tree respond to actions, you may combine several reducers
 * into a single reducer function by using `combineReducers`.
 *
 * @param {Function} reducer A function that returns the next state tree, given
 * the current state tree and the action to handle.
 *
 * @param {any} [preloadedState] The initial state. You may optionally specify it
 * to hydrate the state from the server in universal apps, or to restore a
 * previously serialized user session.
 * If you use `combineReducers` to produce the root reducer function, this must be
 * an object with the same shape as `combineReducers` keys.
 *
 * @param {Function} [enhancer] The store enhancer. You may optionally specify it
 * to enhance the store with third-party capabilities such as middleware,
 * time travel, persistence, etc. The only store enhancer that ships with Redux
 * is `applyMiddleware()`.
 *
 * @returns {Store} A Redux store that lets you read the state, dispatch actions
 * and subscribe to changes.
 */

function createStore(reducer, preloadedState, enhancer) {
  var _ref2;

  if (typeof preloadedState === 'function' && typeof enhancer === 'function' || typeof enhancer === 'function' && typeof arguments[3] === 'function') {
    throw new Error('It looks like you are passing several store enhancers to ' + 'createStore(). This is not supported. Instead, compose them ' + 'together to a single function.');
  }

  if (typeof preloadedState === 'function' && typeof enhancer === 'undefined') {
    enhancer = preloadedState;
    preloadedState = undefined;
  }

  if (typeof enhancer !== 'undefined') {
    if (typeof enhancer !== 'function') {
      throw new Error('Expected the enhancer to be a function.');
    }

    return enhancer(createStore)(reducer, preloadedState);
  }

  if (typeof reducer !== 'function') {
    throw new Error('Expected the reducer to be a function.');
  }

  var currentReducer = reducer;
  var currentState = preloadedState;
  var currentListeners = [];
  var nextListeners = currentListeners;
  var isDispatching = false;
  /**
   * This makes a shallow copy of currentListeners so we can use
   * nextListeners as a temporary list while dispatching.
   *
   * This prevents any bugs around consumers calling
   * subscribe/unsubscribe in the middle of a dispatch.
   */

  function ensureCanMutateNextListeners() {
    if (nextListeners === currentListeners) {
      nextListeners = currentListeners.slice();
    }
  }
  /**
   * Reads the state tree managed by the store.
   *
   * @returns {any} The current state tree of your application.
   */


  function getState() {
    if (isDispatching) {
      throw new Error('You may not call store.getState() while the reducer is executing. ' + 'The reducer has already received the state as an argument. ' + 'Pass it down from the top reducer instead of reading it from the store.');
    }

    return currentState;
  }
  /**
   * Adds a change listener. It will be called any time an action is dispatched,
   * and some part of the state tree may potentially have changed. You may then
   * call `getState()` to read the current state tree inside the callback.
   *
   * You may call `dispatch()` from a change listener, with the following
   * caveats:
   *
   * 1. The subscriptions are snapshotted just before every `dispatch()` call.
   * If you subscribe or unsubscribe while the listeners are being invoked, this
   * will not have any effect on the `dispatch()` that is currently in progress.
   * However, the next `dispatch()` call, whether nested or not, will use a more
   * recent snapshot of the subscription list.
   *
   * 2. The listener should not expect to see all state changes, as the state
   * might have been updated multiple times during a nested `dispatch()` before
   * the listener is called. It is, however, guaranteed that all subscribers
   * registered before the `dispatch()` started will be called with the latest
   * state by the time it exits.
   *
   * @param {Function} listener A callback to be invoked on every dispatch.
   * @returns {Function} A function to remove this change listener.
   */


  function subscribe(listener) {
    if (typeof listener !== 'function') {
      throw new Error('Expected the listener to be a function.');
    }

    if (isDispatching) {
      throw new Error('You may not call store.subscribe() while the reducer is executing. ' + 'If you would like to be notified after the store has been updated, subscribe from a ' + 'component and invoke store.getState() in the callback to access the latest state. ' + 'See https://redux.js.org/api-reference/store#subscribelistener for more details.');
    }

    var isSubscribed = true;
    ensureCanMutateNextListeners();
    nextListeners.push(listener);
    return function unsubscribe() {
      if (!isSubscribed) {
        return;
      }

      if (isDispatching) {
        throw new Error('You may not unsubscribe from a store listener while the reducer is executing. ' + 'See https://redux.js.org/api-reference/store#subscribelistener for more details.');
      }

      isSubscribed = false;
      ensureCanMutateNextListeners();
      var index = nextListeners.indexOf(listener);
      nextListeners.splice(index, 1);
      currentListeners = null;
    };
  }
  /**
   * Dispatches an action. It is the only way to trigger a state change.
   *
   * The `reducer` function, used to create the store, will be called with the
   * current state tree and the given `action`. Its return value will
   * be considered the **next** state of the tree, and the change listeners
   * will be notified.
   *
   * The base implementation only supports plain object actions. If you want to
   * dispatch a Promise, an Observable, a thunk, or something else, you need to
   * wrap your store creating function into the corresponding middleware. For
   * example, see the documentation for the `redux-thunk` package. Even the
   * middleware will eventually dispatch plain object actions using this method.
   *
   * @param {Object} action A plain object representing “what changed”. It is
   * a good idea to keep actions serializable so you can record and replay user
   * sessions, or use the time travelling `redux-devtools`. An action must have
   * a `type` property which may not be `undefined`. It is a good idea to use
   * string constants for action types.
   *
   * @returns {Object} For convenience, the same action object you dispatched.
   *
   * Note that, if you use a custom middleware, it may wrap `dispatch()` to
   * return something else (for example, a Promise you can await).
   */


  function dispatch(action) {
    if (!isPlainObject(action)) {
      throw new Error('Actions must be plain objects. ' + 'Use custom middleware for async actions.');
    }

    if (typeof action.type === 'undefined') {
      throw new Error('Actions may not have an undefined "type" property. ' + 'Have you misspelled a constant?');
    }

    if (isDispatching) {
      throw new Error('Reducers may not dispatch actions.');
    }

    try {
      isDispatching = true;
      currentState = currentReducer(currentState, action);
    } finally {
      isDispatching = false;
    }

    var listeners = currentListeners = nextListeners;

    for (var i = 0; i < listeners.length; i++) {
      var listener = listeners[i];
      listener();
    }

    return action;
  }
  /**
   * Replaces the reducer currently used by the store to calculate the state.
   *
   * You might need this if your app implements code splitting and you want to
   * load some of the reducers dynamically. You might also need this if you
   * implement a hot reloading mechanism for Redux.
   *
   * @param {Function} nextReducer The reducer for the store to use instead.
   * @returns {void}
   */


  function replaceReducer(nextReducer) {
    if (typeof nextReducer !== 'function') {
      throw new Error('Expected the nextReducer to be a function.');
    }

    currentReducer = nextReducer; // This action has a similiar effect to ActionTypes.INIT.
    // Any reducers that existed in both the new and old rootReducer
    // will receive the previous state. This effectively populates
    // the new state tree with any relevant data from the old one.

    dispatch({
      type: ActionTypes.REPLACE
    });
  }
  /**
   * Interoperability point for observable/reactive libraries.
   * @returns {observable} A minimal observable of state changes.
   * For more information, see the observable proposal:
   * https://github.com/tc39/proposal-observable
   */


  function observable() {
    var _ref;

    var outerSubscribe = subscribe;
    return _ref = {
      /**
       * The minimal observable subscription method.
       * @param {Object} observer Any object that can be used as an observer.
       * The observer object should have a `next` method.
       * @returns {subscription} An object with an `unsubscribe` method that can
       * be used to unsubscribe the observable from the store, and prevent further
       * emission of values from the observable.
       */
      subscribe: function subscribe(observer) {
        if (typeof observer !== 'object' || observer === null) {
          throw new TypeError('Expected the observer to be an object.');
        }

        function observeState() {
          if (observer.next) {
            observer.next(getState());
          }
        }

        observeState();
        var unsubscribe = outerSubscribe(observeState);
        return {
          unsubscribe: unsubscribe
        };
      }
    }, _ref[symbol_observable__WEBPACK_IMPORTED_MODULE_0__["default"]] = function () {
      return this;
    }, _ref;
  } // When a store is created, an "INIT" action is dispatched so that every
  // reducer returns their initial state. This effectively populates
  // the initial state tree.


  dispatch({
    type: ActionTypes.INIT
  });
  return _ref2 = {
    dispatch: dispatch,
    subscribe: subscribe,
    getState: getState,
    replaceReducer: replaceReducer
  }, _ref2[symbol_observable__WEBPACK_IMPORTED_MODULE_0__["default"]] = observable, _ref2;
}

/**
 * Prints a warning in the console if it exists.
 *
 * @param {String} message The warning message.
 * @returns {void}
 */
function warning(message) {
  /* eslint-disable no-console */
  if (typeof console !== 'undefined' && typeof console.error === 'function') {
    console.error(message);
  }
  /* eslint-enable no-console */


  try {
    // This error was thrown as a convenience so that if you enable
    // "break on all exceptions" in your console,
    // it would pause the execution at this line.
    throw new Error(message);
  } catch (e) {} // eslint-disable-line no-empty

}

function getUndefinedStateErrorMessage(key, action) {
  var actionType = action && action.type;
  var actionDescription = actionType && "action \"" + String(actionType) + "\"" || 'an action';
  return "Given " + actionDescription + ", reducer \"" + key + "\" returned undefined. " + "To ignore an action, you must explicitly return the previous state. " + "If you want this reducer to hold no value, you can return null instead of undefined.";
}

function getUnexpectedStateShapeWarningMessage(inputState, reducers, action, unexpectedKeyCache) {
  var reducerKeys = Object.keys(reducers);
  var argumentName = action && action.type === ActionTypes.INIT ? 'preloadedState argument passed to createStore' : 'previous state received by the reducer';

  if (reducerKeys.length === 0) {
    return 'Store does not have a valid reducer. Make sure the argument passed ' + 'to combineReducers is an object whose values are reducers.';
  }

  if (!isPlainObject(inputState)) {
    return "The " + argumentName + " has unexpected type of \"" + {}.toString.call(inputState).match(/\s([a-z|A-Z]+)/)[1] + "\". Expected argument to be an object with the following " + ("keys: \"" + reducerKeys.join('", "') + "\"");
  }

  var unexpectedKeys = Object.keys(inputState).filter(function (key) {
    return !reducers.hasOwnProperty(key) && !unexpectedKeyCache[key];
  });
  unexpectedKeys.forEach(function (key) {
    unexpectedKeyCache[key] = true;
  });
  if (action && action.type === ActionTypes.REPLACE) return;

  if (unexpectedKeys.length > 0) {
    return "Unexpected " + (unexpectedKeys.length > 1 ? 'keys' : 'key') + " " + ("\"" + unexpectedKeys.join('", "') + "\" found in " + argumentName + ". ") + "Expected to find one of the known reducer keys instead: " + ("\"" + reducerKeys.join('", "') + "\". Unexpected keys will be ignored.");
  }
}

function assertReducerShape(reducers) {
  Object.keys(reducers).forEach(function (key) {
    var reducer = reducers[key];
    var initialState = reducer(undefined, {
      type: ActionTypes.INIT
    });

    if (typeof initialState === 'undefined') {
      throw new Error("Reducer \"" + key + "\" returned undefined during initialization. " + "If the state passed to the reducer is undefined, you must " + "explicitly return the initial state. The initial state may " + "not be undefined. If you don't want to set a value for this reducer, " + "you can use null instead of undefined.");
    }

    if (typeof reducer(undefined, {
      type: ActionTypes.PROBE_UNKNOWN_ACTION()
    }) === 'undefined') {
      throw new Error("Reducer \"" + key + "\" returned undefined when probed with a random type. " + ("Don't try to handle " + ActionTypes.INIT + " or other actions in \"redux/*\" ") + "namespace. They are considered private. Instead, you must return the " + "current state for any unknown actions, unless it is undefined, " + "in which case you must return the initial state, regardless of the " + "action type. The initial state may not be undefined, but can be null.");
    }
  });
}
/**
 * Turns an object whose values are different reducer functions, into a single
 * reducer function. It will call every child reducer, and gather their results
 * into a single state object, whose keys correspond to the keys of the passed
 * reducer functions.
 *
 * @param {Object} reducers An object whose values correspond to different
 * reducer functions that need to be combined into one. One handy way to obtain
 * it is to use ES6 `import * as reducers` syntax. The reducers may never return
 * undefined for any action. Instead, they should return their initial state
 * if the state passed to them was undefined, and the current state for any
 * unrecognized action.
 *
 * @returns {Function} A reducer function that invokes every reducer inside the
 * passed object, and builds a state object with the same shape.
 */


function combineReducers(reducers) {
  var reducerKeys = Object.keys(reducers);
  var finalReducers = {};

  for (var i = 0; i < reducerKeys.length; i++) {
    var key = reducerKeys[i];

    if (true) {
      if (typeof reducers[key] === 'undefined') {
        warning("No reducer provided for key \"" + key + "\"");
      }
    }

    if (typeof reducers[key] === 'function') {
      finalReducers[key] = reducers[key];
    }
  }

  var finalReducerKeys = Object.keys(finalReducers); // This is used to make sure we don't warn about the same
  // keys multiple times.

  var unexpectedKeyCache;

  if (true) {
    unexpectedKeyCache = {};
  }

  var shapeAssertionError;

  try {
    assertReducerShape(finalReducers);
  } catch (e) {
    shapeAssertionError = e;
  }

  return function combination(state, action) {
    if (state === void 0) {
      state = {};
    }

    if (shapeAssertionError) {
      throw shapeAssertionError;
    }

    if (true) {
      var warningMessage = getUnexpectedStateShapeWarningMessage(state, finalReducers, action, unexpectedKeyCache);

      if (warningMessage) {
        warning(warningMessage);
      }
    }

    var hasChanged = false;
    var nextState = {};

    for (var _i = 0; _i < finalReducerKeys.length; _i++) {
      var _key = finalReducerKeys[_i];
      var reducer = finalReducers[_key];
      var previousStateForKey = state[_key];
      var nextStateForKey = reducer(previousStateForKey, action);

      if (typeof nextStateForKey === 'undefined') {
        var errorMessage = getUndefinedStateErrorMessage(_key, action);
        throw new Error(errorMessage);
      }

      nextState[_key] = nextStateForKey;
      hasChanged = hasChanged || nextStateForKey !== previousStateForKey;
    }

    hasChanged = hasChanged || finalReducerKeys.length !== Object.keys(state).length;
    return hasChanged ? nextState : state;
  };
}

function bindActionCreator(actionCreator, dispatch) {
  return function () {
    return dispatch(actionCreator.apply(this, arguments));
  };
}
/**
 * Turns an object whose values are action creators, into an object with the
 * same keys, but with every function wrapped into a `dispatch` call so they
 * may be invoked directly. This is just a convenience method, as you can call
 * `store.dispatch(MyActionCreators.doSomething())` yourself just fine.
 *
 * For convenience, you can also pass an action creator as the first argument,
 * and get a dispatch wrapped function in return.
 *
 * @param {Function|Object} actionCreators An object whose values are action
 * creator functions. One handy way to obtain it is to use ES6 `import * as`
 * syntax. You may also pass a single function.
 *
 * @param {Function} dispatch The `dispatch` function available on your Redux
 * store.
 *
 * @returns {Function|Object} The object mimicking the original object, but with
 * every action creator wrapped into the `dispatch` call. If you passed a
 * function as `actionCreators`, the return value will also be a single
 * function.
 */


function bindActionCreators(actionCreators, dispatch) {
  if (typeof actionCreators === 'function') {
    return bindActionCreator(actionCreators, dispatch);
  }

  if (typeof actionCreators !== 'object' || actionCreators === null) {
    throw new Error("bindActionCreators expected an object or a function, instead received " + (actionCreators === null ? 'null' : typeof actionCreators) + ". " + "Did you write \"import ActionCreators from\" instead of \"import * as ActionCreators from\"?");
  }

  var boundActionCreators = {};

  for (var key in actionCreators) {
    var actionCreator = actionCreators[key];

    if (typeof actionCreator === 'function') {
      boundActionCreators[key] = bindActionCreator(actionCreator, dispatch);
    }
  }

  return boundActionCreators;
}

function _defineProperty(obj, key, value) {
  if (key in obj) {
    Object.defineProperty(obj, key, {
      value: value,
      enumerable: true,
      configurable: true,
      writable: true
    });
  } else {
    obj[key] = value;
  }

  return obj;
}

function ownKeys(object, enumerableOnly) {
  var keys = Object.keys(object);

  if (Object.getOwnPropertySymbols) {
    keys.push.apply(keys, Object.getOwnPropertySymbols(object));
  }

  if (enumerableOnly) keys = keys.filter(function (sym) {
    return Object.getOwnPropertyDescriptor(object, sym).enumerable;
  });
  return keys;
}

function _objectSpread2(target) {
  for (var i = 1; i < arguments.length; i++) {
    var source = arguments[i] != null ? arguments[i] : {};

    if (i % 2) {
      ownKeys(source, true).forEach(function (key) {
        _defineProperty(target, key, source[key]);
      });
    } else if (Object.getOwnPropertyDescriptors) {
      Object.defineProperties(target, Object.getOwnPropertyDescriptors(source));
    } else {
      ownKeys(source).forEach(function (key) {
        Object.defineProperty(target, key, Object.getOwnPropertyDescriptor(source, key));
      });
    }
  }

  return target;
}

/**
 * Composes single-argument functions from right to left. The rightmost
 * function can take multiple arguments as it provides the signature for
 * the resulting composite function.
 *
 * @param {...Function} funcs The functions to compose.
 * @returns {Function} A function obtained by composing the argument functions
 * from right to left. For example, compose(f, g, h) is identical to doing
 * (...args) => f(g(h(...args))).
 */
function compose() {
  for (var _len = arguments.length, funcs = new Array(_len), _key = 0; _key < _len; _key++) {
    funcs[_key] = arguments[_key];
  }

  if (funcs.length === 0) {
    return function (arg) {
      return arg;
    };
  }

  if (funcs.length === 1) {
    return funcs[0];
  }

  return funcs.reduce(function (a, b) {
    return function () {
      return a(b.apply(void 0, arguments));
    };
  });
}

/**
 * Creates a store enhancer that applies middleware to the dispatch method
 * of the Redux store. This is handy for a variety of tasks, such as expressing
 * asynchronous actions in a concise manner, or logging every action payload.
 *
 * See `redux-thunk` package as an example of the Redux middleware.
 *
 * Because middleware is potentially asynchronous, this should be the first
 * store enhancer in the composition chain.
 *
 * Note that each middleware will be given the `dispatch` and `getState` functions
 * as named arguments.
 *
 * @param {...Function} middlewares The middleware chain to be applied.
 * @returns {Function} A store enhancer applying the middleware.
 */

function applyMiddleware() {
  for (var _len = arguments.length, middlewares = new Array(_len), _key = 0; _key < _len; _key++) {
    middlewares[_key] = arguments[_key];
  }

  return function (createStore) {
    return function () {
      var store = createStore.apply(void 0, arguments);

      var _dispatch = function dispatch() {
        throw new Error('Dispatching while constructing your middleware is not allowed. ' + 'Other middleware would not be applied to this dispatch.');
      };

      var middlewareAPI = {
        getState: store.getState,
        dispatch: function dispatch() {
          return _dispatch.apply(void 0, arguments);
        }
      };
      var chain = middlewares.map(function (middleware) {
        return middleware(middlewareAPI);
      });
      _dispatch = compose.apply(void 0, chain)(store.dispatch);
      return _objectSpread2({}, store, {
        dispatch: _dispatch
      });
    };
  };
}

/*
 * This is a dummy function to check if the function name has been altered by minification.
 * If the function has been minified and NODE_ENV !== 'production', warn the user.
 */

function isCrushed() {}

if ( true && typeof isCrushed.name === 'string' && isCrushed.name !== 'isCrushed') {
  warning('You are currently using minified code outside of NODE_ENV === "production". ' + 'This means that you are running a slower development build of Redux. ' + 'You can use loose-envify (https://github.com/zertosh/loose-envify) for browserify ' + 'or setting mode to production in webpack (https://webpack.js.org/concepts/mode/) ' + 'to ensure you have the correct code for your production build.');
}




/***/ }),

/***/ "./node_modules/regenerator-runtime/runtime.js":
/*!*****************************************************!*\
  !*** ./node_modules/regenerator-runtime/runtime.js ***!
  \*****************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

/**
 * Copyright (c) 2014-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

var runtime = (function (exports) {
  "use strict";

  var Op = Object.prototype;
  var hasOwn = Op.hasOwnProperty;
  var undefined; // More compressible than void 0.
  var $Symbol = typeof Symbol === "function" ? Symbol : {};
  var iteratorSymbol = $Symbol.iterator || "@@iterator";
  var asyncIteratorSymbol = $Symbol.asyncIterator || "@@asyncIterator";
  var toStringTagSymbol = $Symbol.toStringTag || "@@toStringTag";

  function wrap(innerFn, outerFn, self, tryLocsList) {
    // If outerFn provided and outerFn.prototype is a Generator, then outerFn.prototype instanceof Generator.
    var protoGenerator = outerFn && outerFn.prototype instanceof Generator ? outerFn : Generator;
    var generator = Object.create(protoGenerator.prototype);
    var context = new Context(tryLocsList || []);

    // The ._invoke method unifies the implementations of the .next,
    // .throw, and .return methods.
    generator._invoke = makeInvokeMethod(innerFn, self, context);

    return generator;
  }
  exports.wrap = wrap;

  // Try/catch helper to minimize deoptimizations. Returns a completion
  // record like context.tryEntries[i].completion. This interface could
  // have been (and was previously) designed to take a closure to be
  // invoked without arguments, but in all the cases we care about we
  // already have an existing method we want to call, so there's no need
  // to create a new function object. We can even get away with assuming
  // the method takes exactly one argument, since that happens to be true
  // in every case, so we don't have to touch the arguments object. The
  // only additional allocation required is the completion record, which
  // has a stable shape and so hopefully should be cheap to allocate.
  function tryCatch(fn, obj, arg) {
    try {
      return { type: "normal", arg: fn.call(obj, arg) };
    } catch (err) {
      return { type: "throw", arg: err };
    }
  }

  var GenStateSuspendedStart = "suspendedStart";
  var GenStateSuspendedYield = "suspendedYield";
  var GenStateExecuting = "executing";
  var GenStateCompleted = "completed";

  // Returning this object from the innerFn has the same effect as
  // breaking out of the dispatch switch statement.
  var ContinueSentinel = {};

  // Dummy constructor functions that we use as the .constructor and
  // .constructor.prototype properties for functions that return Generator
  // objects. For full spec compliance, you may wish to configure your
  // minifier not to mangle the names of these two functions.
  function Generator() {}
  function GeneratorFunction() {}
  function GeneratorFunctionPrototype() {}

  // This is a polyfill for %IteratorPrototype% for environments that
  // don't natively support it.
  var IteratorPrototype = {};
  IteratorPrototype[iteratorSymbol] = function () {
    return this;
  };

  var getProto = Object.getPrototypeOf;
  var NativeIteratorPrototype = getProto && getProto(getProto(values([])));
  if (NativeIteratorPrototype &&
      NativeIteratorPrototype !== Op &&
      hasOwn.call(NativeIteratorPrototype, iteratorSymbol)) {
    // This environment has a native %IteratorPrototype%; use it instead
    // of the polyfill.
    IteratorPrototype = NativeIteratorPrototype;
  }

  var Gp = GeneratorFunctionPrototype.prototype =
    Generator.prototype = Object.create(IteratorPrototype);
  GeneratorFunction.prototype = Gp.constructor = GeneratorFunctionPrototype;
  GeneratorFunctionPrototype.constructor = GeneratorFunction;
  GeneratorFunctionPrototype[toStringTagSymbol] =
    GeneratorFunction.displayName = "GeneratorFunction";

  // Helper for defining the .next, .throw, and .return methods of the
  // Iterator interface in terms of a single ._invoke method.
  function defineIteratorMethods(prototype) {
    ["next", "throw", "return"].forEach(function(method) {
      prototype[method] = function(arg) {
        return this._invoke(method, arg);
      };
    });
  }

  exports.isGeneratorFunction = function(genFun) {
    var ctor = typeof genFun === "function" && genFun.constructor;
    return ctor
      ? ctor === GeneratorFunction ||
        // For the native GeneratorFunction constructor, the best we can
        // do is to check its .name property.
        (ctor.displayName || ctor.name) === "GeneratorFunction"
      : false;
  };

  exports.mark = function(genFun) {
    if (Object.setPrototypeOf) {
      Object.setPrototypeOf(genFun, GeneratorFunctionPrototype);
    } else {
      genFun.__proto__ = GeneratorFunctionPrototype;
      if (!(toStringTagSymbol in genFun)) {
        genFun[toStringTagSymbol] = "GeneratorFunction";
      }
    }
    genFun.prototype = Object.create(Gp);
    return genFun;
  };

  // Within the body of any async function, `await x` is transformed to
  // `yield regeneratorRuntime.awrap(x)`, so that the runtime can test
  // `hasOwn.call(value, "__await")` to determine if the yielded value is
  // meant to be awaited.
  exports.awrap = function(arg) {
    return { __await: arg };
  };

  function AsyncIterator(generator, PromiseImpl) {
    function invoke(method, arg, resolve, reject) {
      var record = tryCatch(generator[method], generator, arg);
      if (record.type === "throw") {
        reject(record.arg);
      } else {
        var result = record.arg;
        var value = result.value;
        if (value &&
            typeof value === "object" &&
            hasOwn.call(value, "__await")) {
          return PromiseImpl.resolve(value.__await).then(function(value) {
            invoke("next", value, resolve, reject);
          }, function(err) {
            invoke("throw", err, resolve, reject);
          });
        }

        return PromiseImpl.resolve(value).then(function(unwrapped) {
          // When a yielded Promise is resolved, its final value becomes
          // the .value of the Promise<{value,done}> result for the
          // current iteration.
          result.value = unwrapped;
          resolve(result);
        }, function(error) {
          // If a rejected Promise was yielded, throw the rejection back
          // into the async generator function so it can be handled there.
          return invoke("throw", error, resolve, reject);
        });
      }
    }

    var previousPromise;

    function enqueue(method, arg) {
      function callInvokeWithMethodAndArg() {
        return new PromiseImpl(function(resolve, reject) {
          invoke(method, arg, resolve, reject);
        });
      }

      return previousPromise =
        // If enqueue has been called before, then we want to wait until
        // all previous Promises have been resolved before calling invoke,
        // so that results are always delivered in the correct order. If
        // enqueue has not been called before, then it is important to
        // call invoke immediately, without waiting on a callback to fire,
        // so that the async generator function has the opportunity to do
        // any necessary setup in a predictable way. This predictability
        // is why the Promise constructor synchronously invokes its
        // executor callback, and why async functions synchronously
        // execute code before the first await. Since we implement simple
        // async functions in terms of async generators, it is especially
        // important to get this right, even though it requires care.
        previousPromise ? previousPromise.then(
          callInvokeWithMethodAndArg,
          // Avoid propagating failures to Promises returned by later
          // invocations of the iterator.
          callInvokeWithMethodAndArg
        ) : callInvokeWithMethodAndArg();
    }

    // Define the unified helper method that is used to implement .next,
    // .throw, and .return (see defineIteratorMethods).
    this._invoke = enqueue;
  }

  defineIteratorMethods(AsyncIterator.prototype);
  AsyncIterator.prototype[asyncIteratorSymbol] = function () {
    return this;
  };
  exports.AsyncIterator = AsyncIterator;

  // Note that simple async functions are implemented on top of
  // AsyncIterator objects; they just return a Promise for the value of
  // the final result produced by the iterator.
  exports.async = function(innerFn, outerFn, self, tryLocsList, PromiseImpl) {
    if (PromiseImpl === void 0) PromiseImpl = Promise;

    var iter = new AsyncIterator(
      wrap(innerFn, outerFn, self, tryLocsList),
      PromiseImpl
    );

    return exports.isGeneratorFunction(outerFn)
      ? iter // If outerFn is a generator, return the full iterator.
      : iter.next().then(function(result) {
          return result.done ? result.value : iter.next();
        });
  };

  function makeInvokeMethod(innerFn, self, context) {
    var state = GenStateSuspendedStart;

    return function invoke(method, arg) {
      if (state === GenStateExecuting) {
        throw new Error("Generator is already running");
      }

      if (state === GenStateCompleted) {
        if (method === "throw") {
          throw arg;
        }

        // Be forgiving, per 25.3.3.3.3 of the spec:
        // https://people.mozilla.org/~jorendorff/es6-draft.html#sec-generatorresume
        return doneResult();
      }

      context.method = method;
      context.arg = arg;

      while (true) {
        var delegate = context.delegate;
        if (delegate) {
          var delegateResult = maybeInvokeDelegate(delegate, context);
          if (delegateResult) {
            if (delegateResult === ContinueSentinel) continue;
            return delegateResult;
          }
        }

        if (context.method === "next") {
          // Setting context._sent for legacy support of Babel's
          // function.sent implementation.
          context.sent = context._sent = context.arg;

        } else if (context.method === "throw") {
          if (state === GenStateSuspendedStart) {
            state = GenStateCompleted;
            throw context.arg;
          }

          context.dispatchException(context.arg);

        } else if (context.method === "return") {
          context.abrupt("return", context.arg);
        }

        state = GenStateExecuting;

        var record = tryCatch(innerFn, self, context);
        if (record.type === "normal") {
          // If an exception is thrown from innerFn, we leave state ===
          // GenStateExecuting and loop back for another invocation.
          state = context.done
            ? GenStateCompleted
            : GenStateSuspendedYield;

          if (record.arg === ContinueSentinel) {
            continue;
          }

          return {
            value: record.arg,
            done: context.done
          };

        } else if (record.type === "throw") {
          state = GenStateCompleted;
          // Dispatch the exception by looping back around to the
          // context.dispatchException(context.arg) call above.
          context.method = "throw";
          context.arg = record.arg;
        }
      }
    };
  }

  // Call delegate.iterator[context.method](context.arg) and handle the
  // result, either by returning a { value, done } result from the
  // delegate iterator, or by modifying context.method and context.arg,
  // setting context.delegate to null, and returning the ContinueSentinel.
  function maybeInvokeDelegate(delegate, context) {
    var method = delegate.iterator[context.method];
    if (method === undefined) {
      // A .throw or .return when the delegate iterator has no .throw
      // method always terminates the yield* loop.
      context.delegate = null;

      if (context.method === "throw") {
        // Note: ["return"] must be used for ES3 parsing compatibility.
        if (delegate.iterator["return"]) {
          // If the delegate iterator has a return method, give it a
          // chance to clean up.
          context.method = "return";
          context.arg = undefined;
          maybeInvokeDelegate(delegate, context);

          if (context.method === "throw") {
            // If maybeInvokeDelegate(context) changed context.method from
            // "return" to "throw", let that override the TypeError below.
            return ContinueSentinel;
          }
        }

        context.method = "throw";
        context.arg = new TypeError(
          "The iterator does not provide a 'throw' method");
      }

      return ContinueSentinel;
    }

    var record = tryCatch(method, delegate.iterator, context.arg);

    if (record.type === "throw") {
      context.method = "throw";
      context.arg = record.arg;
      context.delegate = null;
      return ContinueSentinel;
    }

    var info = record.arg;

    if (! info) {
      context.method = "throw";
      context.arg = new TypeError("iterator result is not an object");
      context.delegate = null;
      return ContinueSentinel;
    }

    if (info.done) {
      // Assign the result of the finished delegate to the temporary
      // variable specified by delegate.resultName (see delegateYield).
      context[delegate.resultName] = info.value;

      // Resume execution at the desired location (see delegateYield).
      context.next = delegate.nextLoc;

      // If context.method was "throw" but the delegate handled the
      // exception, let the outer generator proceed normally. If
      // context.method was "next", forget context.arg since it has been
      // "consumed" by the delegate iterator. If context.method was
      // "return", allow the original .return call to continue in the
      // outer generator.
      if (context.method !== "return") {
        context.method = "next";
        context.arg = undefined;
      }

    } else {
      // Re-yield the result returned by the delegate method.
      return info;
    }

    // The delegate iterator is finished, so forget it and continue with
    // the outer generator.
    context.delegate = null;
    return ContinueSentinel;
  }

  // Define Generator.prototype.{next,throw,return} in terms of the
  // unified ._invoke helper method.
  defineIteratorMethods(Gp);

  Gp[toStringTagSymbol] = "Generator";

  // A Generator should always return itself as the iterator object when the
  // @@iterator function is called on it. Some browsers' implementations of the
  // iterator prototype chain incorrectly implement this, causing the Generator
  // object to not be returned from this call. This ensures that doesn't happen.
  // See https://github.com/facebook/regenerator/issues/274 for more details.
  Gp[iteratorSymbol] = function() {
    return this;
  };

  Gp.toString = function() {
    return "[object Generator]";
  };

  function pushTryEntry(locs) {
    var entry = { tryLoc: locs[0] };

    if (1 in locs) {
      entry.catchLoc = locs[1];
    }

    if (2 in locs) {
      entry.finallyLoc = locs[2];
      entry.afterLoc = locs[3];
    }

    this.tryEntries.push(entry);
  }

  function resetTryEntry(entry) {
    var record = entry.completion || {};
    record.type = "normal";
    delete record.arg;
    entry.completion = record;
  }

  function Context(tryLocsList) {
    // The root entry object (effectively a try statement without a catch
    // or a finally block) gives us a place to store values thrown from
    // locations where there is no enclosing try statement.
    this.tryEntries = [{ tryLoc: "root" }];
    tryLocsList.forEach(pushTryEntry, this);
    this.reset(true);
  }

  exports.keys = function(object) {
    var keys = [];
    for (var key in object) {
      keys.push(key);
    }
    keys.reverse();

    // Rather than returning an object with a next method, we keep
    // things simple and return the next function itself.
    return function next() {
      while (keys.length) {
        var key = keys.pop();
        if (key in object) {
          next.value = key;
          next.done = false;
          return next;
        }
      }

      // To avoid creating an additional object, we just hang the .value
      // and .done properties off the next function object itself. This
      // also ensures that the minifier will not anonymize the function.
      next.done = true;
      return next;
    };
  };

  function values(iterable) {
    if (iterable) {
      var iteratorMethod = iterable[iteratorSymbol];
      if (iteratorMethod) {
        return iteratorMethod.call(iterable);
      }

      if (typeof iterable.next === "function") {
        return iterable;
      }

      if (!isNaN(iterable.length)) {
        var i = -1, next = function next() {
          while (++i < iterable.length) {
            if (hasOwn.call(iterable, i)) {
              next.value = iterable[i];
              next.done = false;
              return next;
            }
          }

          next.value = undefined;
          next.done = true;

          return next;
        };

        return next.next = next;
      }
    }

    // Return an iterator with no values.
    return { next: doneResult };
  }
  exports.values = values;

  function doneResult() {
    return { value: undefined, done: true };
  }

  Context.prototype = {
    constructor: Context,

    reset: function(skipTempReset) {
      this.prev = 0;
      this.next = 0;
      // Resetting context._sent for legacy support of Babel's
      // function.sent implementation.
      this.sent = this._sent = undefined;
      this.done = false;
      this.delegate = null;

      this.method = "next";
      this.arg = undefined;

      this.tryEntries.forEach(resetTryEntry);

      if (!skipTempReset) {
        for (var name in this) {
          // Not sure about the optimal order of these conditions:
          if (name.charAt(0) === "t" &&
              hasOwn.call(this, name) &&
              !isNaN(+name.slice(1))) {
            this[name] = undefined;
          }
        }
      }
    },

    stop: function() {
      this.done = true;

      var rootEntry = this.tryEntries[0];
      var rootRecord = rootEntry.completion;
      if (rootRecord.type === "throw") {
        throw rootRecord.arg;
      }

      return this.rval;
    },

    dispatchException: function(exception) {
      if (this.done) {
        throw exception;
      }

      var context = this;
      function handle(loc, caught) {
        record.type = "throw";
        record.arg = exception;
        context.next = loc;

        if (caught) {
          // If the dispatched exception was caught by a catch block,
          // then let that catch block handle the exception normally.
          context.method = "next";
          context.arg = undefined;
        }

        return !! caught;
      }

      for (var i = this.tryEntries.length - 1; i >= 0; --i) {
        var entry = this.tryEntries[i];
        var record = entry.completion;

        if (entry.tryLoc === "root") {
          // Exception thrown outside of any try block that could handle
          // it, so set the completion value of the entire function to
          // throw the exception.
          return handle("end");
        }

        if (entry.tryLoc <= this.prev) {
          var hasCatch = hasOwn.call(entry, "catchLoc");
          var hasFinally = hasOwn.call(entry, "finallyLoc");

          if (hasCatch && hasFinally) {
            if (this.prev < entry.catchLoc) {
              return handle(entry.catchLoc, true);
            } else if (this.prev < entry.finallyLoc) {
              return handle(entry.finallyLoc);
            }

          } else if (hasCatch) {
            if (this.prev < entry.catchLoc) {
              return handle(entry.catchLoc, true);
            }

          } else if (hasFinally) {
            if (this.prev < entry.finallyLoc) {
              return handle(entry.finallyLoc);
            }

          } else {
            throw new Error("try statement without catch or finally");
          }
        }
      }
    },

    abrupt: function(type, arg) {
      for (var i = this.tryEntries.length - 1; i >= 0; --i) {
        var entry = this.tryEntries[i];
        if (entry.tryLoc <= this.prev &&
            hasOwn.call(entry, "finallyLoc") &&
            this.prev < entry.finallyLoc) {
          var finallyEntry = entry;
          break;
        }
      }

      if (finallyEntry &&
          (type === "break" ||
           type === "continue") &&
          finallyEntry.tryLoc <= arg &&
          arg <= finallyEntry.finallyLoc) {
        // Ignore the finally entry if control is not jumping to a
        // location outside the try/catch block.
        finallyEntry = null;
      }

      var record = finallyEntry ? finallyEntry.completion : {};
      record.type = type;
      record.arg = arg;

      if (finallyEntry) {
        this.method = "next";
        this.next = finallyEntry.finallyLoc;
        return ContinueSentinel;
      }

      return this.complete(record);
    },

    complete: function(record, afterLoc) {
      if (record.type === "throw") {
        throw record.arg;
      }

      if (record.type === "break" ||
          record.type === "continue") {
        this.next = record.arg;
      } else if (record.type === "return") {
        this.rval = this.arg = record.arg;
        this.method = "return";
        this.next = "end";
      } else if (record.type === "normal" && afterLoc) {
        this.next = afterLoc;
      }

      return ContinueSentinel;
    },

    finish: function(finallyLoc) {
      for (var i = this.tryEntries.length - 1; i >= 0; --i) {
        var entry = this.tryEntries[i];
        if (entry.finallyLoc === finallyLoc) {
          this.complete(entry.completion, entry.afterLoc);
          resetTryEntry(entry);
          return ContinueSentinel;
        }
      }
    },

    "catch": function(tryLoc) {
      for (var i = this.tryEntries.length - 1; i >= 0; --i) {
        var entry = this.tryEntries[i];
        if (entry.tryLoc === tryLoc) {
          var record = entry.completion;
          if (record.type === "throw") {
            var thrown = record.arg;
            resetTryEntry(entry);
          }
          return thrown;
        }
      }

      // The context.catch method must only be called with a location
      // argument that corresponds to a known catch block.
      throw new Error("illegal catch attempt");
    },

    delegateYield: function(iterable, resultName, nextLoc) {
      this.delegate = {
        iterator: values(iterable),
        resultName: resultName,
        nextLoc: nextLoc
      };

      if (this.method === "next") {
        // Deliberately forget the last sent value so that we don't
        // accidentally pass it on to the delegate.
        this.arg = undefined;
      }

      return ContinueSentinel;
    }
  };

  // Regardless of whether this script is executing as a CommonJS module
  // or not, return the runtime object so that we can declare the variable
  // regeneratorRuntime in the outer scope, which allows this module to be
  // injected easily by `bin/regenerator --include-runtime script.js`.
  return exports;

}(
  // If this script is executing as a CommonJS module, use module.exports
  // as the regeneratorRuntime namespace. Otherwise create a new empty
  // object. Either way, the resulting object will be used to initialize
  // the regeneratorRuntime variable at the top of this file.
   true ? module.exports : undefined
));

try {
  regeneratorRuntime = runtime;
} catch (accidentalStrictMode) {
  // This module should not be running in strict mode, so the above
  // assignment should always work unless something is misconfigured. Just
  // in case runtime.js accidentally runs in strict mode, we can escape
  // strict mode using a global Function call. This could conceivably fail
  // if a Content Security Policy forbids using Function, but in that case
  // the proper solution is to fix the accidental strict mode problem. If
  // you've misconfigured your bundler to force strict mode and applied a
  // CSP to forbid Function, and you're not willing to fix either of those
  // problems, please detail your unique predicament in a GitHub issue.
  Function("r", "regeneratorRuntime = r")(runtime);
}


/***/ }),

/***/ "./node_modules/symbol-observable/es/index.js":
/*!****************************************************!*\
  !*** ./node_modules/symbol-observable/es/index.js ***!
  \****************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* WEBPACK VAR INJECTION */(function(global, module) {/* harmony import */ var _ponyfill_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./ponyfill.js */ "./node_modules/symbol-observable/es/ponyfill.js");
/* global window */


var root;

if (typeof self !== 'undefined') {
  root = self;
} else if (typeof window !== 'undefined') {
  root = window;
} else if (typeof global !== 'undefined') {
  root = global;
} else if (true) {
  root = module;
} else {}

var result = Object(_ponyfill_js__WEBPACK_IMPORTED_MODULE_0__["default"])(root);
/* harmony default export */ __webpack_exports__["default"] = (result);

/* WEBPACK VAR INJECTION */}.call(this, __webpack_require__(/*! ./../../webpack/buildin/global.js */ "./node_modules/webpack/buildin/global.js"), __webpack_require__(/*! ./../../webpack/buildin/harmony-module.js */ "./node_modules/webpack/buildin/harmony-module.js")(module)))

/***/ }),

/***/ "./node_modules/symbol-observable/es/ponyfill.js":
/*!*******************************************************!*\
  !*** ./node_modules/symbol-observable/es/ponyfill.js ***!
  \*******************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "default", function() { return symbolObservablePonyfill; });
function symbolObservablePonyfill(root) {
	var result;
	var Symbol = root.Symbol;

	if (typeof Symbol === 'function') {
		if (Symbol.observable) {
			result = Symbol.observable;
		} else {
			result = Symbol('observable');
			Symbol.observable = result;
		}
	} else {
		result = '@@observable';
	}

	return result;
};


/***/ }),

/***/ "./node_modules/webpack/buildin/global.js":
/*!***********************************!*\
  !*** (webpack)/buildin/global.js ***!
  \***********************************/
/*! no static exports found */
/***/ (function(module, exports) {

var g;

// This works in non-strict mode
g = (function() {
	return this;
})();

try {
	// This works if eval is allowed (see CSP)
	g = g || new Function("return this")();
} catch (e) {
	// This works if the window reference is available
	if (typeof window === "object") g = window;
}

// g can still be undefined, but nothing to do about it...
// We return undefined, instead of nothing here, so it's
// easier to handle this case. if(!global) { ...}

module.exports = g;


/***/ }),

/***/ "./node_modules/webpack/buildin/harmony-module.js":
/*!*******************************************!*\
  !*** (webpack)/buildin/harmony-module.js ***!
  \*******************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = function(originalModule) {
	if (!originalModule.webpackPolyfill) {
		var module = Object.create(originalModule);
		// module.parent = undefined by default
		if (!module.children) module.children = [];
		Object.defineProperty(module, "loaded", {
			enumerable: true,
			get: function() {
				return module.l;
			}
		});
		Object.defineProperty(module, "id", {
			enumerable: true,
			get: function() {
				return module.i;
			}
		});
		Object.defineProperty(module, "exports", {
			enumerable: true
		});
		module.webpackPolyfill = 1;
	}
	return module;
};


/***/ }),

/***/ "./node_modules/webpack/buildin/module.js":
/*!***********************************!*\
  !*** (webpack)/buildin/module.js ***!
  \***********************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = function(module) {
	if (!module.webpackPolyfill) {
		module.deprecate = function() {};
		module.paths = [];
		// module.parent = undefined by default
		if (!module.children) module.children = [];
		Object.defineProperty(module, "loaded", {
			enumerable: true,
			get: function() {
				return module.l;
			}
		});
		Object.defineProperty(module, "id", {
			enumerable: true,
			get: function() {
				return module.i;
			}
		});
		module.webpackPolyfill = 1;
	}
	return module;
};


/***/ }),

/***/ "./resources/js/broadcaster.js":
/*!*************************************!*\
  !*** ./resources/js/broadcaster.js ***!
  \*************************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @babel/runtime/regenerator */ "./node_modules/@babel/runtime/regenerator/index.js");
/* harmony import */ var _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! agora-rtc-sdk-ng */ "./node_modules/agora-rtc-sdk-ng/AgoraRTC_N-production.js");
/* harmony import */ var agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var agora_rtm_sdk__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! agora-rtm-sdk */ "./node_modules/agora-rtm-sdk/index.js");
/* harmony import */ var agora_rtm_sdk__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(agora_rtm_sdk__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var redux__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! redux */ "./node_modules/redux/es/redux.js");
/* harmony import */ var _host__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ./host */ "./resources/js/host.js");
/* harmony import */ var _devices__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ./devices */ "./resources/js/devices.js");
/* harmony import */ var _deviceInfo__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ./deviceInfo */ "./resources/js/deviceInfo.js");


function asyncGeneratorStep(gen, resolve, reject, _next, _throw, key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { Promise.resolve(value).then(_next, _throw); } }

function _asyncToGenerator(fn) { return function () { var self = this, args = arguments; return new Promise(function (resolve, reject) { var gen = fn.apply(self, args); function _next(value) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "next", value); } function _throw(err) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "throw", err); } _next(undefined); }); }; }






 // var AGORA_APP_ID = '{{ env('AGORA_APP_ID') }}';
// const AGORA_APP_ID = process.env.AGORA_APP_ID;

$(function () {
  console.log('agora sdk version: ' + agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1___default.a.VERSION + ' compatible: ' + agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1___default.a.checkSystemRequirements());
  var camList;
  var micList;
  var playbackList;
  var volumeLevelTimer = null;
  var abruptClose = null;
  var encoderConfig = {
    width: {
      max: 1280,
      min: 640
    },
    height: {
      max: 720,
      min: 480
    }
  };
  var hostvideoDiv = $('#host-video');
  hostvideoDiv.hide();
  var hostscreenDiv = $('#host-screen');
  hostscreenDiv.hide();
  var spinnerDiv = $('#spinner');
  spinnerDiv.hide();
  var posterimage = $('#posterimage');
  posterimage.height(480).hide();
  $('#statusScreen').hide();
  var hostStore = Object(redux__WEBPACK_IMPORTED_MODULE_3__["createStore"])(_host__WEBPACK_IMPORTED_MODULE_4__["default"]);
  hostStore.subscribe(function () {
    var hostState = hostStore.getState();
    console.log(hostState);

    if (hostState.connectionState === 'CONNECTED' || hostState.connectionState === 'DISCONNECTED') {
      spinnerDiv.hide();
      posterimage.hide();
    }

    if (hostState.webcamOff && (hostState.connectionState === 'CONNECTING' || hostState.connectionState === 'RECONNECTING')) {
      posterimage.show();
      posterimage.css({
        'background-color': '#D6EAF8'
      });
      spinnerDiv.show();
    }

    if (hostState.connectionState === 'DISCONNECTED' && (hostState.webcamOff || !hostState.localVideoTrackavailable)) {
      $('#statusScreen').show();
      posterimage.show();
      posterimage.css({
        'background-color': '#E59866'
      });
      $('#statusScreen span').html('STATUS: ' + hostState.connectionState + '. WEBCAM IS OFF.');
    }

    if (hostState.localVideoTrackavailable && hostState.localScreenTrackavailable) {
      // const vheight = $('#host-screen video').height();
      // $('#video-section').height(vheight+5);
      hostscreenDiv.css({
        position: 'absolute'
      });
      hostvideoDiv.addClass("col-md-3");
      hostvideoDiv.css({
        position: 'absolute',
        'z-index': 500,
        width: '100%',
        height: 'auto'
      });
    }

    if (hostState.localVideoTrackavailable) {
      hostvideoDiv.show();
    }

    if (hostState.localScreenTrackavailable) {
      hostscreenDiv.show();
    }

    if (hostState.localScreenTrackavailable && !hostState.localVideoTrackavailable || !hostState.localScreenTrackavailable && hostState.localVideoTrackavailable) {
      console.log('reset the css here');
      hostvideoDiv.css({
        position: 'relative'
      });
      hostvideoDiv.removeClass("col-md-3");
      hostscreenDiv.css({
        position: 'relative',
        'z-index': 'auto'
      });
    }

    if (!hostState.localVideoTrackavailable && !hostState.localScreenTrackavailable) {
      console.log(hostState);
      posterimage.show();
      posterimage.css({
        'background-color': '#EBEDEF'
      });
      spinnerDiv.show();
      hostvideoDiv.hide();
      hostvideoDiv.css({
        position: 'relative'
      });
      hostvideoDiv.removeClass("col-md-3");
      hostscreenDiv.css({
        position: 'relative',
        'z-index': 'auto'
      });
      console.log('hostscreendiv hidden here1');
      hostscreenDiv.hide();
      hostscreenDiv.empty();
    }

    if (hostState.connectionState === 'DISCONNECTED') {
      $('#connectionState').html(hostState.connectionState + ', click on <i class="fas fa-podcast"></i>' + ' to go live!');
    }

    if (hostState.connectionState === 'CONNECTING') {
      $('#connectionState').html(hostState.connectionState);
    }

    if (hostState.connectionState === 'RECONNECTING') {
      $('#connectionState').html('DISCONNECTED!! ' + hostState.connectionState + '...');
    }

    if (hostState.webcamOff && !hostState.localScreenTrackavailable) {
      $('#statusScreen').show();
      posterimage.show();
      posterimage.css({
        'background-color': '#E59866'
      });
      $('#statusScreen span').html('STATUS: ' + hostState.connectionState + '. WEBCAM IS OFF');
      hostvideoDiv.hide();
      hostvideoDiv.css({
        position: 'relative'
      });
      hostvideoDiv.removeClass("col-md-3");
      hostscreenDiv.css({
        position: 'relative',
        'z-index': 'auto'
      });
      console.log('hostscreendiv hidden here2');
      hostscreenDiv.hide();
      hostscreenDiv.empty();
    }

    if (!hostState.webcamOff && (hostState.connectionState === 'CONNECTED' || hostState.connectionState === 'DISCONNECTED')) {
      $('#statusScreen').hide();
      posterimage.hide();
      posterimage.css({
        'background-color': '#E59866'
      });
      $('#statusScreen span').html('WEBCAM IS ON'); // hostvideoDiv.hide();
    }

    if (hostState.connectionState === 'CONNECTED') {
      $('#connectionState').html(hostState.connectionState + ', click on <i class="fas fa-phone-slash"></i>' + ' to offline!');
    }

    if (!hostState.micMuted && !hostState.webcamOff && hostState.localAudioTrackavailable && (hostState.localVideoTrackavailable || hostState.localScreenTrackavailable)) {
      $('#golive-btn').prop('disabled', false);
    } else {
      $('#golive-btn').prop('disabled', true);
    }
  });
  var devicesStore = Object(redux__WEBPACK_IMPORTED_MODULE_3__["createStore"])(_devices__WEBPACK_IMPORTED_MODULE_5__["default"]);
  devicesStore.subscribe(function () {
    var devicesState = devicesStore.getState();

    if (devicesState.camList !== camList) {
      camList = devicesState.camList;
      var camdd = $('#camera-list-select');
      camdd.val('');
      $.each(devicesState.camList, function (indx, cam) {
        camdd.append($('<option></option>').val(cam.deviceId).html(cam.label));
      });
      camdd.append($('<option>').val('screen').html('Share screen'));
      camdd.append($('<option>').val('screenandvideo').html('Share screen + webcam'));
    }

    if (devicesState.micList !== micList) {
      micList = devicesState.micList;
      var micdd = $('#mic-list-select');
      micdd.val('');
      $.each(devicesState.micList, function (indx, mic) {
        micdd.append($('<option></option>').val(mic.deviceId).html(mic.label));
      });
    }
  }); // const viewersStore = createStore(connectedViewers);
  // viewersStore.subscribe(() => {
  //   const viewersState = viewersStore.getState();
  //   $('#liveviewerscount').html('<i class="fas fa-eye"></i> '+viewersState.viewersCount);
  // });

  $('#liveviewerscount').html('<i class="fas fa-eye"></i> ' + 'xx'); // https://docs.agora.io/en/Agora%20Platform/token?platform=All%20Platforms
  // https://docs.agora.io/en/Agora%20Platform/token_server

  var token = servertoken;
  var tokenrtm = servertokenrtm;
  var bclient = {
    // For the local client.
    client: null,
    screenclient: null,
    // For the local audio and video tracks.
    localAudioTrack: null,
    localVideoTrack: null,
    localScreenTrack: null,
    localAddScreenTrack: null
  };
  var options = {
    appId: AGORA_APP_ID,
    channel: channelname,
    token: token,
    role: 'host'
  }; // Level: 1: INFO, 0: DEBUG, 4: NONE, 2: WARNING, 3: ERROR

  if (APP_DEBUG) {
    window.AgoraRTC = agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1___default.a;
    window.bclient = bclient;
    agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1___default.a.setLogLevel(2);
  } else {
    agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1___default.a.setLogLevel(2);
  }

  agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1___default.a.getCameras().then(function (list) {
    devicesStore.dispatch({
      type: 'SET_DEVICE_LIST',
      payload: {
        devicelist: list,
        devicetype: 'CAM'
      }
    });
  });
  agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1___default.a.getMicrophones().then(function (list) {
    devicesStore.dispatch({
      type: 'SET_DEVICE_LIST',
      payload: {
        devicelist: list,
        devicetype: 'MIC'
      }
    });
  });
  agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1___default.a.getPlaybackDevices().then(function (list) {
    devicesStore.dispatch({
      type: 'SET_DEVICE_LIST',
      payload: {
        devicelist: list,
        devicetype: 'PBD'
      }
    });
  });

  agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1___default.a.onCameraChanged = function (info) {
    if (info.state === 'ACTIVE') {
      devicesStore.dispatch({
        type: 'ADD_DEVICE',
        payload: {
          device: info.device,
          devicetype: 'CAM'
        }
      });
    } else if (info.state === 'INACTIVE') {
      devicesStore.dispatch({
        type: 'REMOVE_DEVICE',
        payload: {
          deviceId: info.device.deviceId,
          devicetype: 'CAM'
        }
      });
    }
  };

  agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1___default.a.onMicrophoneChanged = function (info) {
    if (info.state === 'ACTIVE') {
      devicesStore.dispatch({
        type: 'ADD_DEVICE',
        payload: {
          device: info.device,
          devicetype: 'MIC'
        }
      });
    } else if (info.state === 'INACTIVE') {
      devicesStore.dispatch({
        type: 'REMOVE_DEVICE',
        payload: {
          deviceId: info.device.deviceId,
          devicetype: 'MIC'
        }
      });
    }
  };

  agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1___default.a.onPlaybackDeviceChanged = function (info) {
    if (info.state === 'ACTIVE') {
      devicesStore.dispatch({
        type: 'ADD_DEVICE',
        payload: {
          device: info.device,
          devicetype: 'PBD'
        }
      });
    } else if (info.state === 'INACTIVE') {
      devicesStore.dispatch({
        type: 'REMOVE_DEVICE',
        payload: {
          deviceId: info.device.deviceId,
          devicetype: 'PBD'
        }
      });
    }
  };

  function startScreenCall() {
    return _startScreenCall.apply(this, arguments);
  }

  function _startScreenCall() {
    _startScreenCall = _asyncToGenerator( /*#__PURE__*/_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.mark(function _callee() {
      var screenuid, localAddScreenTrack, screenDiv;
      return _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.wrap(function _callee$(_context) {
        while (1) {
          switch (_context.prev = _context.next) {
            case 0:
              bclient.screenclient = agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1___default.a.createClient({
                mode: 'live',
                codec: 'vp8'
              });
              bclient.screenclient.setClientRole(options.role);
              _context.next = 4;
              return bclient.screenclient.join(options.appId, options.channel, options.token, null);

            case 4:
              screenuid = _context.sent;
              _context.next = 7;
              return agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1___default.a.createScreenVideoTrack({
                encoderConfig: '1080p_1',
                screenSourceType: _deviceInfo__WEBPACK_IMPORTED_MODULE_6__["default"].flag === 'firefox' ? 'screen' : null
              }, 'auto');

            case 7:
              localAddScreenTrack = _context.sent;
              bclient.localAddScreenTrack = localAddScreenTrack;
              console.log('playing screen track in next line');
              screenDiv = document.getElementById('host-screen');
              bclient.localAddScreenTrack.play(screenDiv); // $('#host-screen').show();

              bclient.localAddScreenTrack.on('track-ended', function () {
                console.log('screen track ended');
                var deviceId = $('#camera-list-select').val();
                $('#camera-list-select').prop("selectedIndex", 0);
                bclient.screenclient.leave();
                bclient.screenclient = null;
                bclient.localAddScreenTrack = null;

                if (deviceId === 'screenandvideo') {}
              });

            case 13:
            case "end":
              return _context.stop();
          }
        }
      }, _callee);
    }));
    return _startScreenCall.apply(this, arguments);
  }

  function addCameraCall(_x) {
    return _addCameraCall.apply(this, arguments);
  }

  function _addCameraCall() {
    _addCameraCall = _asyncToGenerator( /*#__PURE__*/_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.mark(function _callee2(deviceId) {
      var vtrack, hostvideoDiv;
      return _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.wrap(function _callee2$(_context2) {
        while (1) {
          switch (_context2.prev = _context2.next) {
            case 0:
              _context2.next = 2;
              return agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1___default.a.createCameraVideoTrack({
                cameraId: deviceId,
                encoderConfig: encoderConfig
              });

            case 2:
              vtrack = _context2.sent;
              bclient.localVideoTrack = vtrack;
              hostvideoDiv = document.getElementById('host-video');
              bclient.localVideoTrack.play(hostvideoDiv); // $('#host-video').show();

            case 6:
            case "end":
              return _context2.stop();
          }
        }
      }, _callee2);
    }));
    return _addCameraCall.apply(this, arguments);
  }

  var RTM = {
    rtmclient: null,
    loggedIn: false
  };
  var rtmchannel;

  function JoinChat() {
    return _JoinChat.apply(this, arguments);
  }

  function _JoinChat() {
    _JoinChat = _asyncToGenerator( /*#__PURE__*/_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.mark(function _callee3() {
      return _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.wrap(function _callee3$(_context3) {
        while (1) {
          switch (_context3.prev = _context3.next) {
            case 0:
              RTM.rtmclient = agora_rtm_sdk__WEBPACK_IMPORTED_MODULE_2___default.a.createInstance(AGORA_APP_ID); // Level: 1: INFO, 0: DEBUG, 4: NONE, 2: WARNING, 3: ERROR

              if (APP_DEBUG) {
                RTM.rtmclient.setParameters({
                  logFilter: agora_rtm_sdk__WEBPACK_IMPORTED_MODULE_2___default.a.LOG_FILTER_WARNING
                }); // AgoraRTM.LOG_FILTER_INFO
              } else {
                RTM.rtmclient.logFilter(agora_rtm_sdk__WEBPACK_IMPORTED_MODULE_2___default.a.LOG_FILTER_WARNING);
              }

              RTM.rtmclient.on('ConnectionStateChanged', function (newState, reason) {
                console.log('on connection state changed to ' + newState + ' reason: ' + reason);
              });
              RTM.rtmclient.login({
                token: tokenrtm,
                uid: userrtm
              }).then(function () {
                RTM.loggedIn = true;
                rtmchannel = RTM.rtmclient.createChannel(channelname);
                rtmchannel.on('ChannelMessage', function (_ref, senderId) {
                  var text = _ref.text;

                  var _JSON$parse2 = JSON.parse(text),
                      msg = _JSON$parse2.msg,
                      displayname = _JSON$parse2.displayname,
                      profilepic = _JSON$parse2.profilepic;

                  var divID = '_' + Math.random().toString(36).substr(2, 9);
                  var chatDiv = $('<div>', {
                    id: divID,
                    "class": 'media media-chat'
                  });
                  var imgDiv = $('<img>', {
                    "class": 'avatar avatar-xs',
                    src: profilepic
                  });
                  chatDiv.append(imgDiv);
                  var chatBody = $('<div>', {
                    "class": 'media-body'
                  });
                  var nameBody = $('<p>', {
                    text: 'From: ' + displayname
                  });
                  var textBody = $('<p>', {
                    html: msg
                  });
                  chatBody.append(nameBody);
                  chatBody.append(textBody);
                  chatDiv.append(chatBody);
                  chatDiv.attr('class', 'media media-chat');
                  $('#chat-content').append(chatDiv);
                });
                rtmchannel.join().then(function () {
                  console.log('chat channel joining success');
                })["catch"](function (error) {
                  console.log('Chat channel joining error: ', error);
                });
              })["catch"](function (error) {
                console.log('RTM login error: ' + error);
              });

            case 4:
            case "end":
              return _context3.stop();
          }
        }
      }, _callee3);
    }));
    return _JoinChat.apply(this, arguments);
  }

  ;

  function sendChatMessage(textmsg) {
    var emoji = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : false;

    var _JSON$parse = JSON.parse(textmsg),
        msg = _JSON$parse.msg,
        displayname = _JSON$parse.displayname;

    if (rtmchannel) {
      rtmchannel.sendMessage({
        text: textmsg
      }).then(function () {
        var divID = '_' + Math.random().toString(36).substr(2, 9);
        var chatDiv = $('<div>', {
          id: divID,
          "class": 'media media-chat media-chat-reverse'
        });
        var chatBody = $('<div>', {
          "class": 'media-body'
        });
        var nameBody = $('<p>', {
          text: 'From: ' + displayname
        }); // let textBody;
        // if (emoji) {
        //   textBody = JSON.parse(msg);
        // } else {
        //   textBody = $('<p>', {text: msg});
        // }

        var textBody = $('<p>', {
          html: msg
        }); // chatBody.append(nameBody);

        chatBody.append(textBody);
        chatDiv.append(chatBody);
        $('#chat-content').append(chatDiv);
        if (!emoji) $('#publisher-input').val('');
      })["catch"](function (error) {
        console.log(error);
      });
    }
  }

  ;
  $('#publisher-input').keyup(function (e) {
    if (e.keyCode == 13) {
      var msg = $('#publisher-input').val();
      if (msg.length < 1) return;
      var textmsg = JSON.stringify({
        msg: msg,
        displayname: displayname,
        profilepic: profilepic,
        emoji: false
      });
      sendChatMessage(textmsg);
    }
  });
  $('#publisher-btn').click(function (e) {
    var msg = $('#publisher-input').val();
    if (msg.length < 1) return;
    var textmsg = JSON.stringify({
      msg: msg,
      displayname: displayname,
      profilepic: profilepic,
      emoji: false
    });
    sendChatMessage(textmsg);
  });
  $('#camera-list-select').change(function () {
    var deviceId = $('#camera-list-select').val();

    if (deviceId === 'screen') {
      if (bclient.localAddScreenTrack !== null) {
        console.log('removing localAddScreenTrack');

        if (bclient.screenclient === null) {
          console.log('bclient.screenclient === null');
          bclient.localAddScreenTrack.close();
        } else {
          bclient.screenclient.unpublish(bclient.localAddScreenTrack).then(function () {
            console.log('bclient.screenclient.unpublish');
            bclient.localAddScreenTrack.close();
            bclient.screenclient.leave();
            bclient.screenclient = null;
            bclient.localAddScreenTrack = null;
          })["catch"](function (error) {
            console.log(error);
            return;
          });
        }
      }

      if (bclient.localVideoTrack !== null) {
        if (bclient.client === null) {
          $('#camera-list-select').prop("selectedIndex", 0);
          console.log('start broadcasting first to share the screen');
        } else {
          bclient.client.unpublish(bclient.localVideoTrack).then(function () {
            bclient.localVideoTrack.close();
            bclient.localVideoTrack = null;
            hostStore.dispatch({
              type: 'VIDEO_TRACK_AVAILABLE',
              payload: {
                localVideoTrackavailable: false
              }
            });
            hostStore.dispatch({
              type: 'SET_WEBCAM_OFF',
              payload: {
                flag: true
              }
            });
            agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1___default.a.createScreenVideoTrack({
              encoderConfig: '1080p_1',
              screenSourceType: _deviceInfo__WEBPACK_IMPORTED_MODULE_6__["default"].flag === 'firefox' ? 'screen' : null
            }, 'auto').then(function (localScreenTrack) {
              bclient.localScreenTrack = localScreenTrack;

              if (bclient.client === null) {
                var screenElem = document.getElementById('host-screen');
                localScreenTrack.play(screenElem);
                hostStore.dispatch({
                  type: 'SCREEN_TRACK_AVAILABLE',
                  payload: {
                    localScreenTrackavailable: true
                  }
                });
                $('#camtoggle-btn').prop('disabled', true);
                hostStore.dispatch({
                  type: 'SET_WEBCAM_OFF',
                  payload: {
                    flag: false
                  }
                });
              } else {
                bclient.client.publish(localScreenTrack).then(function () {
                  var screenElem = document.getElementById('host-screen');
                  localScreenTrack.play(screenElem);
                  hostStore.dispatch({
                    type: 'SCREEN_TRACK_AVAILABLE',
                    payload: {
                      localScreenTrackavailable: true
                    }
                  });
                  $('#camtoggle-btn').prop('disabled', true);
                  hostStore.dispatch({
                    type: 'SET_WEBCAM_OFF',
                    payload: {
                      flag: false
                    }
                  });
                })["catch"](function (error) {
                  console.log(error);
                  return;
                });
              }

              bclient.localScreenTrack.on('track-ended', function () {
                console.log('screen track ended');
                bclient.client.unpublish(bclient.localScreenTrack).then(function () {
                  bclient.localScreenTrack = null;
                  console.log('bclient.client.unpublish(bclient.localScreenTrack)');
                  hostStore.dispatch({
                    type: 'SCREEN_TRACK_AVAILABLE',
                    payload: {
                      localScreenTrackavailable: false
                    }
                  });
                  hostStore.dispatch({
                    type: 'SET_WEBCAM_OFF',
                    payload: {
                      flag: true
                    }
                  });
                  $('#camera-list-select').prop("selectedIndex", 0);
                  $('#camtoggle-btn').prop('disabled', false);
                })["catch"](function (err) {
                  console.log(err);
                  bclient.localScreenTrack = null;
                  hostStore.dispatch({
                    type: 'SCREEN_TRACK_AVAILABLE',
                    payload: {
                      localScreenTrackavailable: false
                    }
                  });
                  hostStore.dispatch({
                    type: 'SET_WEBCAM_OFF',
                    payload: {
                      flag: true
                    }
                  });
                  $('#camera-list-select').prop("selectedIndex", 0);
                  $('#camtoggle-btn').prop('disabled', false);
                });
              });
            })["catch"](function (error) {
              console.log(error);
              bclient.localScreenTrack = null;
              hostStore.dispatch({
                type: 'SCREEN_TRACK_AVAILABLE',
                payload: {
                  localScreenTrackavailable: false
                }
              });
              hostStore.dispatch({
                type: 'SET_WEBCAM_OFF',
                payload: {
                  flag: true
                }
              });
              $('#camera-list-select').prop("selectedIndex", 0);
              $('#camtoggle-btn').prop('disabled', false);
              return;
            });
          })["catch"](function (error) {
            console.log(error);
            return;
          });
        }
      }
    } else if (deviceId === 'screenandvideo') {
      if (bclient.client === null) {
        $('#camera-list-select').prop("selectedIndex", 0);
        console.log('start broadcasting first to share the screen');
        return;
      }

      if (bclient.localScreenTrack) {
        console.log('here1');

        if (bclient.client === null) {
          console.log('here2');
          bclient.localScreenTrack.close();
        } else {
          console.log('here3');
          bclient.client.unpublish(bclient.localScreenTrack).then(function () {
            console.log('here4');
            bclient.localScreenTrack.close();
            console.log('here5');
          })["catch"](function (error) {
            console.log(error);
            return;
          });
        }
      }

      if (bclient.localAddScreenTrack === null && bclient.localVideoTrack !== null) {
        console.log('here6');
        startScreenCall().then(function () {
          console.log('here7');
          bclient.screenclient.publish(bclient.localAddScreenTrack);
          console.log('here8');
          var hostState = hostStore.getState();
          hostStore.dispatch({
            type: 'SCREEN_TRACK_AVAILABLE',
            payload: {
              localScreenTrackavailable: true
            }
          });
          hostStore.dispatch({
            type: 'VIDEO_TRACK_AVAILABLE',
            payload: {
              localVideoTrackavailable: true
            }
          });
          $('#camtoggle-btn').prop('disabled', true);

          if (hostState.webcamOff) {
            bclient.localVideoTrack.setEnabled(true).then(function () {
              $('#camtoggle-icon.fas').toggleClass('fa-video-slash fa-video');
              $('#camtoggle-icon').css('color', 'green');
              hostStore.dispatch({
                type: 'SET_WEBCAM_OFF',
                payload: {
                  flag: false
                }
              });
            });
          }
        })["catch"](function (error) {
          console.log(error);
        });
      }

      if (bclient.localAddScreenTrack === null && bclient.localVideoTrack === null) {
        console.log('here9');
        Promise.all([startScreenCall(), addCameraCall()]).then(function () {
          console.log('here10');
          bclient.screenclient.publish(bclient.localAddScreenTrack);
          bclient.client.publish(bclient.localVideoTrack);
          hostStore.dispatch({
            type: 'SCREEN_TRACK_AVAILABLE',
            payload: {
              localScreenTrackavailable: true
            }
          });
          hostStore.dispatch({
            type: 'VIDEO_TRACK_AVAILABLE',
            payload: {
              localVideoTrackavailable: true
            }
          });
          $('#camtoggle-btn').prop('disabled', true);
          hostStore.dispatch({
            type: 'SET_WEBCAM_OFF',
            payload: {
              flag: false
            }
          });
        })["catch"](function (err) {
          console.log(err);
        });
      }
    } else {
      if (bclient.localScreenTrack !== null) {
        if (bclient.client === null) {
          bclient.localScreenTrack.close();
        } else {
          bclient.client.unpublish(bclient.localScreenTrack).then(function () {
            bclient.localScreenTrack.close();
            bclient.localScreenTrack = null;
            console.log('switchin to webcam, localScreenTrack unpublished');
            hostStore.dispatch({
              type: 'SCREEN_TRACK_AVAILABLE',
              payload: {
                localScreenTrackavailable: false
              }
            });
          })["catch"](function (error) {
            console.log(error);
            return;
          });
        }
      }

      if (bclient.localAddScreenTrack !== null) {
        if (bclient.screenclient === null) {
          bclient.localAddScreenTrack.close();
        } else {
          bclient.screenclient.unpublish(bclient.localAddScreenTrack).then(function () {
            bclient.localAddScreenTrack.close();
            bclient.screenclient.leave();
            bclient.screenclient = null;
            bclient.localAddScreenTrack = null;
            console.log('switchin to webcam, localAddScreenTrack unpublished');
            hostStore.dispatch({
              type: 'SCREEN_TRACK_AVAILABLE',
              payload: {
                localScreenTrackavailable: false
              }
            });
          })["catch"](function (error) {
            console.log(error);
          });
          return;
        }
      }

      if (bclient.localVideoTrack !== null) {
        bclient.localVideoTrack.setDevice(deviceId);
        $('#camtoggle-btn').prop('disabled', false);
        $('#camtoggle-icon').css('color', 'green');
      } else {
        agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1___default.a.createCameraVideoTrack({
          cameraId: deviceId,
          encoderConfig: encoderConfig
        }).then(function (vtrack) {
          bclient.localVideoTrack = vtrack;
          var videoElem = document.getElementById('host-video');
          vtrack.play(videoElem);
          hostStore.dispatch({
            type: 'VIDEO_TRACK_AVAILABLE',
            payload: {
              localVideoTrackavailable: true
            }
          });
          $('#camtoggle-btn').prop('disabled', false);
          $('#camtoggle-icon').css('color', 'green');
          if (bclient.client !== null) bclient.client.publish(vtrack);
        })["catch"](function (error) {
          console.log(error);
        });
      }
    }
  });
  $('#mic-list-select').change(function () {
    console.log($('#mic-list-select').val(), $('#mic-list-select').text());
    var deviceId = $('#mic-list-select').val();

    if (bclient.localAudioTrack) {
      bclient.localAudioTrack.setDevice(deviceId);
    }
  });

  function startBroadcasting() {
    return _startBroadcasting.apply(this, arguments);
  }

  function _startBroadcasting() {
    _startBroadcasting = _asyncToGenerator( /*#__PURE__*/_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.mark(function _callee6() {
      var uid, deviceId, _deviceId, videoElem;

      return _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.wrap(function _callee6$(_context6) {
        while (1) {
          switch (_context6.prev = _context6.next) {
            case 0:
              bclient.client = agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1___default.a.createClient({
                mode: 'live',
                codec: 'vp8'
              });
              bclient.client.setClientRole(options.role);
              bclient.client.on('connection-state-change', function (currState, prevState, reason) {
                console.log('Connection state: ' + currState);
                hostStore.dispatch({
                  type: 'SET_CONN_STATE',
                  payload: {
                    connectionState: currState
                  }
                });
              });
              bclient.client.on('token-privilege-will-expire', /*#__PURE__*/_asyncToGenerator( /*#__PURE__*/_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.mark(function _callee4() {
                return _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.wrap(function _callee4$(_context4) {
                  while (1) {
                    switch (_context4.prev = _context4.next) {
                      case 0:
                        _context4.next = 2;
                        return bclient.client.renewToken(options.token);

                      case 2:
                      case "end":
                        return _context4.stop();
                    }
                  }
                }, _callee4);
              })));
              bclient.client.on('token-privilege-did-expire', /*#__PURE__*/_asyncToGenerator( /*#__PURE__*/_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.mark(function _callee5() {
                return _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.wrap(function _callee5$(_context5) {
                  while (1) {
                    switch (_context5.prev = _context5.next) {
                      case 0:
                        _context5.next = 2;
                        return bclient.client.renewToken(options.token);

                      case 2:
                      case "end":
                        return _context5.stop();
                    }
                  }
                }, _callee5);
              })));
              bclient.client.on('network-quality', function (quality) {// const { downlinkNetworkQuality, uplinkNetworkQuality } = quality;
                // console.log(quality);
              });
              bclient.client.on('exception', function (event) {
                console.log(event);
              });
              bclient.client.on('user-joined', function (user) {
                console.log('user-joined', user); // viewersStore.dispatch({type: 'INCREASE_VIEWERS_COUNT'})
              });
              bclient.client.on('user-left', function (user) {
                console.log('user-left', user); // viewersStore.dispatch({type: 'DECREASE_VIEWERS_COUNT'})
              });
              _context6.next = 11;
              return bclient.client.join(options.appId, options.channel, options.token, null);

            case 11:
              uid = _context6.sent;

              if (!(bclient.localAudioTrack === null)) {
                _context6.next = 24;
                break;
              }

              deviceId = $('#mic-list-select').val();
              _context6.next = 16;
              return agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1___default.a.createMicrophoneAudioTrack({
                microphoneId: deviceId
              });

            case 16:
              bclient.localAudioTrack = _context6.sent;
              hostStore.dispatch({
                type: 'AUDIO_TRACK_AVAILABLE',
                payload: {
                  localAudioTrackavailable: true
                }
              });
              hostStore.dispatch({
                type: 'SET_MIC_MUTED',
                payload: {
                  flag: false
                }
              });

              if (volumeLevelTimer !== null) {
                clearInterval(volumeLevelTimer);
                volumeLevelTimer = null;
              }

              volumeLevelTimer = setInterval(function () {
                var volLevel = bclient.localAudioTrack.getVolumeLevel();
                $('#volumelevel').val(volLevel);
              }, 1000);
              $('#mictoggle-btn').prop('disabled', false);
              $('#mictoggle-icon').css('color', 'green');
              $('#mictoggle-icon.fas').attr('class', 'fas fa-microphone');

            case 24:
              // Save this host uid on MySQL DB
              console.log(uid);

              if (!(bclient.localVideoTrack === null)) {
                _context6.next = 37;
                break;
              }

              _deviceId = $('#camera-list-select').val();
              _context6.next = 29;
              return agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1___default.a.createCameraVideoTrack({
                cameraId: _deviceId,
                encoderConfig: encoderConfig
              });

            case 29:
              bclient.localVideoTrack = _context6.sent;
              videoElem = document.getElementById('host-video');
              bclient.localVideoTrack.play(videoElem);
              hostStore.dispatch({
                type: 'VIDEO_TRACK_AVAILABLE',
                payload: {
                  localVideoTrackavailable: true
                }
              });
              hostStore.dispatch({
                type: 'SET_WEBCAM_OFF',
                payload: {
                  flag: false
                }
              });
              $('#camtoggle-btn').prop('disabled', false);
              $('#camtoggle-icon').css('color', 'green');
              $('#camtoggle-icon.fas').attr('class', 'fas fa-video');

            case 37:
              _context6.next = 39;
              return bclient.client.publish([bclient.localAudioTrack, bclient.localVideoTrack]);

            case 39:
              $('#golive-btn').prop('disabled', true);
              $('#exit-btn').prop('disabled', false);
              _context6.next = 43;
              return JoinChat();

            case 43:
            case "end":
              return _context6.stop();
          }
        }
      }, _callee6);
    }));
    return _startBroadcasting.apply(this, arguments);
  }

  function leaveCall() {
    return _leaveCall.apply(this, arguments);
  }

  function _leaveCall() {
    _leaveCall = _asyncToGenerator( /*#__PURE__*/_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.mark(function _callee7() {
      return _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.wrap(function _callee7$(_context7) {
        while (1) {
          switch (_context7.prev = _context7.next) {
            case 0:
              // Destroy the local audio and video tracks.
              if (bclient.localAudioTrack !== null) bclient.localAudioTrack.close();
              if (bclient.localVideoTrack !== null) bclient.localVideoTrack.close();
              if (bclient.localScreenTrack !== null) bclient.localScreenTrack.close();
              if (bclient.localAddScreenTrack !== null) bclient.localAddScreenTrack.close();

              if (volumeLevelTimer !== null) {
                clearInterval(volumeLevelTimer);
                volumeLevelTimer = null;
              }

              bclient.localAudioTrack = null;
              bclient.localVideoTrack = null; // bclient.localScreenTrack = null;

              hostStore.dispatch({
                type: 'AUDIO_TRACK_AVAILABLE',
                payload: {
                  localAudioTrackavailable: false
                }
              });
              hostStore.dispatch({
                type: 'VIDEO_TRACK_AVAILABLE',
                payload: {
                  localVideoTrackavailable: false
                }
              });
              hostStore.dispatch({
                type: 'SCREEN_TRACK_AVAILABLE',
                payload: {
                  localScreenTrackavailable: false
                }
              });
              hostStore.dispatch({
                type: 'SET_WEBCAM_OFF',
                payload: {
                  flag: true
                }
              });
              hostStore.dispatch({
                type: 'SET_MIC_MUTED',
                payload: {
                  flag: true
                }
              }); // Leave the channel.

              _context7.next = 14;
              return bclient.client.leave();

            case 14:
              if (bclient.screenclient !== null) bclient.screenclient.leave();
              rtmchannel.leave();
              RTM.rtmclient.logout();
              bclient.client = null;
              $('#camera-list-select').prop("selectedIndex", 0);
              $('#exit-btn').prop('disabled', true);
              $('#golive-btn').prop('disabled', false);

            case 21:
            case "end":
              return _context7.stop();
          }
        }
      }, _callee7);
    }));
    return _leaveCall.apply(this, arguments);
  }

  var deviceIdmic = $('#mic-list-select').val();
  agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1___default.a.createMicrophoneAudioTrack({
    microphoneId: deviceIdmic
  }).then(function (atrack) {
    bclient.localAudioTrack = atrack;
    hostStore.dispatch({
      type: 'AUDIO_TRACK_AVAILABLE',
      payload: {
        localAudioTrackavailable: true
      }
    });

    if (volumeLevelTimer !== null) {
      clearInterval(volumeLevelTimer);
      volumeLevelTimer = null;
    }

    ;
    volumeLevelTimer = setInterval(function () {
      var volLevel = bclient.localAudioTrack.getVolumeLevel();
      $('#volumelevel').val(volLevel); // console.log('Volume Level: ' + volLevel);
    }, 200);
    $('#mictoggle-btn').prop('disabled', false);
    $('#mictoggle-icon').css('color', 'green');
  })["catch"](function (error) {
    console.log(error);
  });
  var deviceIdcam = $('#camera-list-select').val();
  agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1___default.a.createCameraVideoTrack({
    cameraId: deviceIdcam,
    encoderConfig: encoderConfig
  }).then(function (vtrack) {
    bclient.localVideoTrack = vtrack;
    var videoElem = document.getElementById('host-video');
    vtrack.play(videoElem);
    hostStore.dispatch({
      type: 'VIDEO_TRACK_AVAILABLE',
      payload: {
        localVideoTrackavailable: true
      }
    });
    $('#camtoggle-btn').prop('disabled', false);
    $('#camtoggle-icon').css('color', 'green');
  })["catch"](function (error) {
    console.log(error);
  });
  $('#mictoggle-btn').prop('disabled', true);
  $('#mictoggle-btn').on('click', function () {
    if (bclient.localAudioTrack) {
      var hostState = hostStore.getState();

      if (hostState.micMuted) {
        bclient.localAudioTrack.setEnabled(true).then(function () {
          $('#mictoggle-icon.fas').toggleClass('fa-microphone-slash fa-microphone');
          $('#mictoggle-icon').css('color', 'green');
          hostStore.dispatch({
            type: 'SET_MIC_MUTED',
            payload: {
              flag: false
            }
          });
        })["catch"](function (e) {
          console.log(e);
        });
      } else {
        bclient.localAudioTrack.setEnabled(false).then(function () {
          $('#mictoggle-icon.fas').toggleClass('fa-microphone-slash fa-microphone');
          $('#mictoggle-icon').css('color', 'red');
          hostStore.dispatch({
            type: 'SET_MIC_MUTED',
            payload: {
              flag: true
            }
          });
        })["catch"](function (e) {
          console.log(e);
        });
      }
    }
  });
  $('#camtoggle-btn').prop('disabled', true);
  $('#camtoggle-btn').on('click', function () {
    console.log('1');
    if (bclient.localScreenTrack !== null) return;
    console.log('2');

    if (bclient.localVideoTrack === null) {
      var _deviceIdcam = $('#camera-list-select').val();

      console.log(_deviceIdcam);
      agora_rtc_sdk_ng__WEBPACK_IMPORTED_MODULE_1___default.a.createCameraVideoTrack({
        cameraId: _deviceIdcam,
        encoderConfig: encoderConfig
      }).then(function (vtrack) {
        bclient.localVideoTrack = vtrack;
        var videoElem = document.getElementById('host-video');
        vtrack.play(videoElem);
        hostStore.dispatch({
          type: 'VIDEO_TRACK_AVAILABLE',
          payload: {
            localVideoTrackavailable: true
          }
        });
        hostStore.dispatch({
          type: 'SET_WEBCAM_OFF',
          payload: {
            flag: false
          }
        });
        $('#camtoggle-btn').prop('disabled', false);
        $('#camtoggle-icon').css('color', 'green');
        if (bclient.client !== null) bclient.client.publish(vtrack);
      })["catch"](function (error) {
        console.log(error);
        return;
      });
    }

    if (bclient.localVideoTrack !== null) {
      console.log('3');
      var hostState = hostStore.getState();

      if (hostState.webcamOff) {
        bclient.localVideoTrack.setEnabled(true).then(function () {
          $('#camtoggle-icon.fas').toggleClass('fa-video-slash fa-video');
          $('#camtoggle-icon').css('color', 'green');
          hostStore.dispatch({
            type: 'SET_WEBCAM_OFF',
            payload: {
              flag: false
            }
          });
        });
      } else {
        bclient.localVideoTrack.setEnabled(false).then(function () {
          $('#camtoggle-icon.fas').toggleClass('fa-video-slash fa-video');
          $('#camtoggle-icon').css('color', 'red');
          hostStore.dispatch({
            type: 'SET_WEBCAM_OFF',
            payload: {
              flag: true
            }
          });
        });
      }
    }
  });
  $('#golive-btn').prop('disabled', true);
  $('#golive-btn').on('click', function () {
    var hostState = hostStore.getState();
    if (hostState.connectionState !== 'DISCONNECTED') return;
    startBroadcasting();
    $.ajax({
      url: APP_URL + '/live-stream/setlive',
      // contentType: "application/json",
      dataType: 'json',
      headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      },
      method: 'post',
      data: {
        streamid: streamid,
        livestatus: true
      },
      success: function success(data) {
        if (data.status === 1) {
          console.log('Stream set to live!');
        } else {
          console.log(data);
        }
      },
      error: function error(_error) {
        console.log(_error);
      },
      complete: function complete() {}
    });
  });
  $('#exit-btn').prop('disabled', true);
  $('#exit-btn').on('click', function () {
    leaveCall();
    $.ajax({
      url: APP_URL + '/live-stream/setlive',
      // contentType: "application/json",
      dataType: 'json',
      headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      },
      method: 'post',
      data: {
        streamid: streamid,
        livestatus: false
      },
      success: function success(data) {
        if (data.status === 1) {
          console.log('Stream set to not live!');
        } else {
          console.log(data);
        }
      },
      error: function error(_error2) {
        console.log(_error2);
      },
      complete: function complete() {}
    });
  });
  $('.dropdown-menu.emoji-item a').on('click', function (e) {
    e.preventDefault();
    var msg = e.target;
    var msgt = $(msg).parent().html();
    var textmsg = JSON.stringify({
      msg: msgt,
      displayname: displayname,
      profilepic: profilepic,
      emoji: true
    });
    sendChatMessage(textmsg, true);
  });
  window.addEventListener('beforeunload', abruptClose = function abruptClose(event) {
    if (volumeLevelTimer !== null) {
      clearInterval(volumeLevelTimer);
      volumeLevelTimer = null;
    }

    ;
  }); // const player = fluidPlayer('fluidplayerdiv');
});

/***/ }),

/***/ "./resources/js/deviceInfo.js":
/*!************************************!*\
  !*** ./resources/js/deviceInfo.js ***!
  \************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var bowser__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! bowser */ "./node_modules/bowser/es5.js");
/* harmony import */ var bowser__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(bowser__WEBPACK_IMPORTED_MODULE_0__);
 // TODO: For testing.
// window.BOWSER = bowser;

/* harmony default export */ __webpack_exports__["default"] = (function () {
  var ua = navigator.userAgent;
  var browser = bowser__WEBPACK_IMPORTED_MODULE_0___default.a.getParser(ua);
  var flag;
  if (browser.satisfies({
    chrome: '>=0',
    chromium: '>=0'
  })) flag = 'chrome';else if (browser.satisfies({
    firefox: '>=0'
  })) flag = 'firefox';else if (browser.satisfies({
    safari: '>=0'
  })) flag = 'safari';else if (browser.satisfies({
    opera: '>=0'
  })) flag = 'opera';else if (browser.satisfies({
    'microsoft edge': '>=0'
  })) flag = 'edge';else flag = 'unknown';
  return {
    flag: flag,
    name: browser.getBrowserName(),
    version: browser.getBrowserVersion()
  };
});

/***/ }),

/***/ "./resources/js/devices.js":
/*!*********************************!*\
  !*** ./resources/js/devices.js ***!
  \*********************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
function ownKeys(object, enumerableOnly) { var keys = Object.keys(object); if (Object.getOwnPropertySymbols) { var symbols = Object.getOwnPropertySymbols(object); if (enumerableOnly) symbols = symbols.filter(function (sym) { return Object.getOwnPropertyDescriptor(object, sym).enumerable; }); keys.push.apply(keys, symbols); } return keys; }

function _objectSpread(target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i] != null ? arguments[i] : {}; if (i % 2) { ownKeys(Object(source), true).forEach(function (key) { _defineProperty(target, key, source[key]); }); } else if (Object.getOwnPropertyDescriptors) { Object.defineProperties(target, Object.getOwnPropertyDescriptors(source)); } else { ownKeys(Object(source)).forEach(function (key) { Object.defineProperty(target, key, Object.getOwnPropertyDescriptor(source, key)); }); } } return target; }

function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

var initialState = {
  camList: null,
  micList: null,
  playbackList: null,
  currentMic: null,
  currentCam: null,
  currentPBD: null
};

var devices = function devices() {
  var state = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : initialState;
  var action = arguments.length > 1 ? arguments[1] : undefined;

  switch (action.type) {
    case 'SET_DEVICE_LIST':
      {
        var _action$payload = action.payload,
            devicelist = _action$payload.devicelist,
            devicetype = _action$payload.devicetype;

        if (devicetype === 'CAM') {
          return _objectSpread(_objectSpread({}, state), {}, {
            camList: devicelist
          });
        } else if (devicetype === 'MIC') {
          return _objectSpread(_objectSpread({}, state), {}, {
            micList: devicelist
          });
        } else if (devicetype === 'PBD') {
          return _objectSpread(_objectSpread({}, state), {}, {
            playbackList: devicelist
          });
        } else {
          return state;
        }
      }

    case 'SET_CURRENT_DEVICE':
      {
        var _action$payload2 = action.payload,
            deviceId = _action$payload2.deviceId,
            _devicetype = _action$payload2.devicetype;

        if (_devicetype === 'CAM') {
          return _objectSpread(_objectSpread({}, state), {}, {
            currentCam: deviceId
          });
        } else if (_devicetype === 'MIC') {
          return _objectSpread(_objectSpread({}, state), {}, {
            currentMic: deviceId
          });
        } else if (_devicetype === 'PBD') {
          return _objectSpread(_objectSpread({}, state), {}, {
            currentPBD: deviceId
          });
        } else {
          return state;
        }
      }

    case 'REMOVE_DEVICE':
      {
        var micList = state.micList,
            camList = state.camList,
            playbackList = state.playbackList;
        var _action$payload3 = action.payload,
            _deviceId = _action$payload3.deviceId,
            _devicetype2 = _action$payload3.devicetype;

        if (_devicetype2 === 'CAM') {
          return _objectSpread(_objectSpread({}, state), {}, {
            camList: camList.filter(function (item) {
              return item.deviceId !== _deviceId;
            })
          });
        } else if (_devicetype2 === 'MIC') {
          return _objectSpread(_objectSpread({}, state), {}, {
            micList: micList.filter(function (item) {
              return item.deviceId !== _deviceId;
            })
          });
        } else if (_devicetype2 === 'PBD') {
          return _objectSpread(_objectSpread({}, state), {}, {
            playbackList: playbackList.filter(function (item) {
              return item.deviceId !== _deviceId;
            })
          });
        } else {
          return state;
        }
      }

    case 'ADD_DEVICE':
      {
        var _micList = state.micList,
            _camList = state.camList,
            _playbackList = state.playbackList;
        var _action$payload4 = action.payload,
            device = _action$payload4.device,
            _devicetype3 = _action$payload4.devicetype;

        if (_devicetype3 === 'CAM') {
          return _objectSpread(_objectSpread({}, state), {}, {
            camList: _camList.push(device)
          });
        } else if (_devicetype3 === 'MIC') {
          return _objectSpread(_objectSpread({}, state), {}, {
            micList: _micList.push(device)
          });
        } else if (_devicetype3 === 'PBD') {
          return _objectSpread(_objectSpread({}, state), {}, {
            playbackList: _playbackList.push(device)
          });
        } else {
          return state;
        }
      }

    default:
      return state;
  }
};

/* harmony default export */ __webpack_exports__["default"] = (devices);

/***/ }),

/***/ "./resources/js/host.js":
/*!******************************!*\
  !*** ./resources/js/host.js ***!
  \******************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
function ownKeys(object, enumerableOnly) { var keys = Object.keys(object); if (Object.getOwnPropertySymbols) { var symbols = Object.getOwnPropertySymbols(object); if (enumerableOnly) symbols = symbols.filter(function (sym) { return Object.getOwnPropertyDescriptor(object, sym).enumerable; }); keys.push.apply(keys, symbols); } return keys; }

function _objectSpread(target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i] != null ? arguments[i] : {}; if (i % 2) { ownKeys(Object(source), true).forEach(function (key) { _defineProperty(target, key, source[key]); }); } else if (Object.getOwnPropertyDescriptors) { Object.defineProperties(target, Object.getOwnPropertyDescriptors(source)); } else { ownKeys(Object(source)).forEach(function (key) { Object.defineProperty(target, key, Object.getOwnPropertyDescriptor(source, key)); }); } } return target; }

function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

var initialState = {
  id: null,
  webcamOff: false,
  micMuted: false,
  connectionState: 'DISCONNECTED',
  localVideoTrackavailable: false,
  localAudioTrackavailable: false,
  localScreenTrackavailable: false
};

var host = function host() {
  var state = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : initialState;
  var action = arguments.length > 1 ? arguments[1] : undefined;

  switch (action.type) {
    case 'SET_WEBCAM_OFF':
      {
        var flag = action.payload.flag;
        return _objectSpread(_objectSpread({}, state), {}, {
          webcamOff: flag
        });
      }

    case 'SET_MIC_MUTED':
      {
        var _flag = action.payload.flag;
        return _objectSpread(_objectSpread({}, state), {}, {
          micMuted: _flag
        });
      }

    case 'SET_CONN_STATE':
      {
        var connectionState = action.payload.connectionState;
        return _objectSpread(_objectSpread({}, state), {}, {
          connectionState: connectionState
        });
      }

    case 'AUDIO_TRACK_AVAILABLE':
      {
        var localAudioTrackavailable = action.payload.localAudioTrackavailable;
        return _objectSpread(_objectSpread({}, state), {}, {
          localAudioTrackavailable: localAudioTrackavailable
        });
      }

    case 'VIDEO_TRACK_AVAILABLE':
      {
        var localVideoTrackavailable = action.payload.localVideoTrackavailable;
        return _objectSpread(_objectSpread({}, state), {}, {
          localVideoTrackavailable: localVideoTrackavailable
        });
      }

    case 'SCREEN_TRACK_AVAILABLE':
      {
        var localScreenTrackavailable = action.payload.localScreenTrackavailable;
        return _objectSpread(_objectSpread({}, state), {}, {
          localScreenTrackavailable: localScreenTrackavailable
        });
      }

    default:
      return state;
  }
};

/* harmony default export */ __webpack_exports__["default"] = (host);

/***/ }),

/***/ 7:
/*!*******************************************!*\
  !*** multi ./resources/js/broadcaster.js ***!
  \*******************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(/*! /home/rudra/freelance/emv/expressmyview/resources/js/broadcaster.js */"./resources/js/broadcaster.js");


/***/ })

/******/ });