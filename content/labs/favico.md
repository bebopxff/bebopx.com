---
title: "Make favico"
date: 2019-09-11T18:50:21+08:00
draft: false
---

{{< rawhtml >}}
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/croppie/2.6.4/croppie.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/croppie/2.6.4/croppie.min.js">

<p>A happy favico maker</p>

var basic = $('#demo-basic').croppie({
    viewport: {
        width: 150,
        height: 200
    }
});
basic.croppie('bind', {
    url: 'demo/cat.jpg',
    points: [77,469,280,739]
});
//on button click
basic.croppie('result', 'html').then(function(html) {
    // html is div (overflow hidden)
    // with img positioned inside.
});

{{< /rawhtml >}}
