---
layout: default
title: Home
lang: en
permalink: en/
---

<section>
  <div class="wrapper">
    <h1><a>Présentation</a></h1>
    <p>Toute en mouvement, à la vie comme à la terre, Je vous invite au voyage. Du Raku libertaire à la procelaine délicate, de rouges d'italie en noirs et blancs stylisé façon art nouveau autrichien, du végétal poétisé au minéral dompté par le feu.</p>
  </div>
</section>

> Après 2 jours de séchage, la terre atteint le stade "cuir". Elle est encore maniable, mais elle est assez ferme pour ne pas s'écrouler. Alors je martèle la pièce, je tape dessus avec un bambou, dans un rythme répétitif. J'aime travailler dans le mouvement. C'est très intense. Lorsque je suis entrée dans un geste, je dois le poursuivre jusqu'au bout sans m'arrêter.

<section class="panel-dark activity" style="background-image:url(assets/images/img-petales-2.jpg)">
  <div class="wrapper">
    <div class="box-padding background-transparent">
      <h1><a href="/fr/porcelaine/">Porcelaine</a></h1>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit, perspiciatis dolor alias accusamus consequatur libero ducimus, eius doloremque fugit, excepturi officiis corrupti. Accusantium, labore quae necessitatibus nemo sit, laborum delectus.</p>
    </div>
  </div>
</section>

> Puis je m'éloigne, je regarde, j'accentue. Ce qui est génial avec la terre. C'est qu'elle pardonne beaucoup de choses. Je peux ouvrir, ajouter, enlever. C'est une liberté qui me rassure.

<section class="panel-dark activity" style="background-image:url(assets/images/img-vases-2.jpg)">
  <div class="wrapper">
    <div class="box-padding background-transparent">
      <h1><a href="/fr/raku/">Raku</a></h1>  
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit, perspiciatis dolor alias accusamus consequatur libero ducimus, eius doloremque fugit, excepturi officiis corrupti. Accusantium, labore quae necessitatibus nemo sit, laborum delectus.</p>
    </div>
  </div>
</section>

<section class="panel-dark">
  <div class="wrapper">
    <h1>Découvrez mes œuvres</h1>
    <div class="gallery">
    <div class="wrapper">
    <div class="grid">
    {% for image in site.data.gallery %}
      <a href="/{{ image.item-filename | remove: '.jpg' }}/"><img src="/gallery/{{ image.item-page }}/{{ image.item-filename }}.jpg" alt="{{ image.item-page }}"></a>
    {% endfor %}
    </div>
    </div>
    </div>
  </div>
</section>

