import web3 from 'web3'
function component() {
  const element = document.createElement('div');

console.log('hi');
//
console.log(web3);
console.log(web3.version);
window.myweb3=web3;
  // Lodash, currently included via a script, is required for this line to work
  element.innerHTML = 'hi';//_.join(['Hello', 'webpack'], ' ');

  return element;
}

document.body.appendChild(component());

