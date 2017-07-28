---
title: Contact
description: Laissez moi un message
published: true
navigation: true
lang: fr
permalink: fr/contact/
weight: 99
---

<form action="https://formspree.io/mail@mail.com" method="POST">
    <fieldset>
    <legend>Dites moi en un peu plus</legend>
    <p>
        <label>Indiquez votre nom</label>   
        <input type="text" placeholder="Georges de la Tour" name="name">
    </p>
    <p>
        <label>Indiquez votre Email</label>   
        <input type="email" placeholder="jemappelle@mail.com" name="_replyto">
    </p>
    <p>
        <label>Message</label>
        <textarea name="textarea">
        </textarea>
    </p>
    <p class="form-submit">
        <input type="submit" class="button button--success" value="Envoyez">
    </p>
    </fieldset>
</form>