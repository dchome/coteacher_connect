let get = function(url) {
  return new Promise(function(resolve, reject) {
    let req = new XMLHttpRequest();
    req.open('GET', url);
    req.setRequestHeader('X_REQUESTED_WITH', '/XMLHttpRequest/'); //added for compatibility with request.xhr? in Rails

    req.onload = function() {
      if (req.status >= 200 && req.status < 400) {
        resolve(req.response)
      }
      else {
        reject(Error(req.statusText))
      };
    };

    req.onerror = function() { reject(Error("Network Error")) };

    req.send();
  });
};

let getJSON = (url) => get(url).then(JSON.parse);

let post = function(url, data) {
  return new Promise(function(resolve, reject) {
    let req = new XMLHttpRequest();
    req.open('POST', url);
    req.setRequestHeader('Content-Type', 'application/json');
    req.setRequestHeader('X_REQUESTED_WITH', '/XMLHttpRequest/');
    req.onload = function() {
      if (req.status == 200) {
        resolve(req.response)
      }
      else {
        reject(Error(req.statusText))
      };
    };

  req.onerror = function() { reject(Error("Network Error")) };

    req.send(data);
  });
};

let put = function(url, data) {
  return new Promise(function(resolve, reject) {
    let req = new XMLHttpRequest();
    req.open('PUT', url);
    req.setRequestHeader('Content-Type', 'application/json');
    req.onload = function() {
      if (req.status == 200) {
        resolve(req.response)
      }
      else {
        reject(Error(req.statusText))
      };
    }

    req.onerror = function() {
      reject(Error("Network Error"))
    };

    req.send(data);
  });
};

let del = function(url, data) {
  return new Promise(function(resolve, reject) {
    let req = new XMLHttpRequest();
    req.open('DELETE', url);
    req.setRequestHeader('Content-Type', 'application/json');
    req.onload = function() {
      if (req.status == 200) {
        resolve(req.response)
      }
      else {
        reject(Error(req.statusText))
      };
    };

  req.onerror = function() { reject(Error("Network Error")) };

    req.send(data);
  });
};
