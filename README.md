Display chemical analyse
===============================


install

    npm install bluezip/analyse
    
   
~~~javascript
var Aanlyse     = require('bluezip-analyse');

var data        = {
  ref: 'XX00001',
  chemical: [
    {
      {name: 'Silver (Ag)', value: '95.34'},
      {name: 'Copper (Cu)', value: '4.66'}
    }
  ],
  output: 'folder to output/images.jpg'
}

var analyse     = new Analyse(data);

analyse.draw(err);
~~~
