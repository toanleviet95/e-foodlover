/**
 * @param {HTMLElement} element
 * @param {?} tabIndex
 * @param {?} dataAndEvents
 * @return {undefined}
 */
function flyToCart(element, tabIndex, dataAndEvents) {
  if (element) {
    var icon = element.attr("src");
    element.animate_from_to(tabIndex, {
      pixels_per_second : dataAndEvents,
      initial_css : {
        image : icon
      },
      /**
       * @return {undefined}
       */
      callback : function() {
      }
    });
  }
}
/**
 * @param {string} contexts
 * @return {undefined}
 */
function notifyProduct(contexts) {
  setTimeout(function() {
    $.jGrowl(contexts, {
      life : 5E3
    });
  });
}
/**
 * @param {?} e
 * @return {undefined}
 */
function addToCart(e) {
  if ("undefined" != typeof e) {
    e.preventDefault();
  }
  var $target = $(this);
  var $form = $target.parents("form");
  $.ajax({
    type : "POST",
    url : "/cart/add.js",
    async : false,
    data : $form.serialize(),
    dataType : "json",
    /** @type {function (XMLHttpRequest, ?, ?): undefined} */
    error : addToCartFail,
    /** @type {function (Object, ?, ?): undefined} */
    success : addToCartSuccess,
    cache : false
  });
}
/**
 * @param {Object} details
 * @param {?} dataAndEvents
 * @param {?} deepDataAndEvents
 * @return {undefined}
 */
function addToCartSuccess(details, dataAndEvents, deepDataAndEvents) {
  $.ajax({
    type : "GET",
    url : "/cart.js",
    async : false,
    cache : false,
    dataType : "json",
    success : updateCartDesc
  });
  /** @type {string} */
  var progressContexts = '<div class="row"><div class="col-md-4"><a href="' + details.url + '"><img src="' + Bizweb.resizeImage(details.image, "small") + '" alt="' + details.title + '"/></a></div><div class="col-md-8"><div class="jGrowl-note">S\u1ea3n ph\u1ea9m \u0111\u00e3 cho <a href="/cart">Gi\u1ecf h\u00e0ng</a></div><a class="jGrowl-title" href="' + details.url + '">' + details.name + "</a></div></div>";
  notifyProduct(progressContexts);
  Bizweb.getCart(function(deepDataAndEvents) {
    Bizweb.updateCartFromForm(deepDataAndEvents, ".shopping_cart");
  });
}
/**
 * @param {XMLHttpRequest} req
 * @param {?} dataAndEvents
 * @param {?} deepDataAndEvents
 * @return {undefined}
 */
function addToCartFail(req, dataAndEvents, deepDataAndEvents) {
  var parameter = $.parseJSON(req.responseText);
  /** @type {string} */
  var progressContexts = '<div class="error">' + parameter.description + "</div>";
  notifyProduct(progressContexts);
}
!function(b) {
  /**
   * @return {undefined}
   */
  function c() {
  }
  var a;
  /** @type {Array.<string>} */
  var eventPath = "assert,count,debug,dir,dirxml,error,exception,group,groupCollapsed,groupEnd,info,log,timeStamp,profile,profileEnd,time,timeEnd,trace,warn".split(",");
  for (;a = eventPath.pop();) {
    b[a] = b[a] || c;
  }
}(function() {
  try {
    return console.log(), window.console;
  } catch (t) {
    return window.console = {};
  }
}());
var GLOBAL = {
  common : {
    /**
     * @return {undefined}
     */
    init : function() {
      $("button.ajax_addtocart").bind("click", addToCart);
    }
  },
  templateIndex : {
    /**
     * @return {undefined}
     */
    init : function() {
    }
  },
  templateProduct : {
    /**
     * @return {undefined}
     */
    init : function() {
    }
  },
  templateCart : {
    /**
     * @return {undefined}
     */
    init : function() {
    }
  }
};
var UTIL = {
  /**
   * @param {Object} value
   * @param {?} action
   * @param {?} data
   * @return {undefined}
   */
  fire : function(value, action, data) {
    var clt = GLOBAL;
    action = void 0 === action ? "init" : action;
    if ("" !== value) {
      if (clt[value]) {
        if ("function" == typeof clt[value][action]) {
          clt[value][action](data);
        }
      }
    }
  },
  /**
   * @return {undefined}
   */
  loadEvents : function() {
    /** @type {string} */
    var action = document.body.id;
    UTIL.fire("common");
    $.each(document.body.className.split(/\s+/), function(dataAndEvents, isXML) {
      UTIL.fire(isXML);
      UTIL.fire(isXML, action);
    });
  }
};
$(document).ready(UTIL.loadEvents);
