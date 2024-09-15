---
title: "CompliCAUS I: Primera competición organizada por el Club de Algoritmia"
date: 2024-02-29T11:10:00+00:00
draft: false
language: es
featured_image: ../assets/images/featured/CompliCAUS-Foto-grupal.jpeg
summary: La primera edición de CompliCAUS, competición de algoritmia organizada por el Club de Algoritmia de la Universidad de Sevilla, reunió a estudiantes de diversas disciplinas y niveles para enfrentar un desafiante reto de resolución de problemas en la plataforma HackerRank.
description: El 23 de febrero se celebró la primera edición de CompliCAUS, una competición de algoritmia organizada por el Club de Algoritmia de la Universidad de Sevilla y patrocinada por la ETSII. El evento, realizado en HackerRank, reunió a estudiantes de distintas disciplinas y niveles para enfrentarse a retos algorítmicos. La competición fue intensa y mostró que la pasión por la programación trasciende niveles académicos. Agradecemos el apoyo de la ETSII y de Mª Lourdes Miró. Este es solo el comienzo de una prometedora tradición en la Universidad de Sevilla. ¡Nos vemos en la próxima edición!
author: Administradores CAUS
authorimage: ../assets/images/global/author-CAUS.webp
categories: Eventos
tags: Eventos
---

El pasado viernes 23 de febrero se celebró la primera edición de CompliCAUS, una competición de algoritmia organizada por el Club de Algoritmia de la Universidad de Sevilla. Este evento, patrocinado por la Escuela Técnica Superior de Ingeniería Informática (ETSII), congregó a estudiantes de diferentes facultades y niveles académicos, así como a alumnos de bachillerato, en un reto que puso a prueba sus habilidades en la resolución de problemas algorítmicos.

La competición se llevó a cabo utilizando la plataforma HackerRank, que permitió a los participantes enviar y evaluar automáticamente sus soluciones. El evento fue diseñado para que cualquier persona, independientemente de su nivel de experiencia, pudiera participar y disfrutar del desafío. Por ello, se incluyeron problemas de diversa dificultad, lo que hizo que la estrategia de los competidores para identificar y resolver los problemas más accesibles fuera clave para obtener un buen resultado.

Entre los participantes, hubo representación de estudiantes de distintos cursos de la Escuela Técnica Superior de Ingeniería Informática, de la Escuela Técnica Superior de Ingeniería, de la Facultad de Matemáticas, e incluso de estudiantes de bachillerato del Colegio Santa Ana de Sevilla. Esto demuestra que la pasión por la programación competitiva no tiene fronteras y que cualquiera, sin importar su nivel o experiencia, puede aprender y disfrutar en este tipo de eventos.


![CompliCAUS-1](CompliCAUS-I-1.jpg)


La competición se mantuvo reñida desde el comienzo, con una primera hora durante la que los primeros puestos cambiaban constantemente. Sin embargo, al finalizar el evento, los tres primeros lugares quedaron definidos:

<!-- - **Primer puesto:** Pablo Moreno Moreu
- **Segundo puesto:** Jaime Argilés Pérez
- **Tercer puesto:** Nicolás Sibello Litrán -->

# Premios Principales

| Pos. | Participante           | Puntos  | Ver Imagen                                                                 |
|------|------------------------|---------|----------------------------------------------------------------------------|
| 1    | Pablo Moreno Moreu      | 569.13  | <img src="camera-icon.png" alt="camera" class="camera" onclick="openModal('primer-lugar.jpg')"> |
| 2    | Jaime Argilés Pérez     | 526.67  | <img src="camera-icon.png" alt="camera" class="camera" onclick="openModal('segundo-lugar.jpg')"> |
| 3    | Nicolás Sibello Litrán  | 522.23  | <img src="camera-icon.png" alt="camera" class="camera" onclick="openModal('tercer-lugar.jpg')"> |

<div id="myModal" class="modal">
    <div class="modal-content">
        <span class="close">&times;</span>
        <img id="modalImage" src="" alt="imagen del equipo">
    </div>
</div>

<script>
    // Obtener el modal
    var modal = document.getElementById("myModal");

    // Función para abrir el modal y cambiar la imagen
    function openModal(imageSrc) {
        var modalImage = document.getElementById("modalImage");
        modalImage.src = imageSrc;
        modal.style.display = "block";
    }

    // Obtener el elemento <span> que cierra el modal
    var span = document.getElementsByClassName("close")[0];

    // Cuando el usuario haga clic en <span> (x), cerrar el modal
    span.onclick = function() {
        modal.style.display = "none";
    }

    // Cuando el usuario haga clic fuera del modal, también se cierra
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>

<style>
    table {
        width: 50%;
        border-collapse: collapse;
    }
    table, th, td {
        border: 1px solid black;
    }
    th, td {
        padding: 10px;
        text-align: center;
    }
    /* Clase para la cámara: ajusta su tamaño a 20x20 píxeles */
    .camera {
        width: 20px;
        height: 20px;
    }
    .modal {
        display: none;
        position: fixed;
        z-index: 1;
        padding-top: 60px;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0,0,0,0.4);
    }
    .modal-content {
        background-color: #fefefe;
        margin: auto;
        padding: 20px;
        border: 1px solid #888;
        width: 80%;
        max-width: 600px;
    }
    .close {
        color: #aaa;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }
    .close:hover,
    .close:focus {
        color: black;
        text-decoration: none;
        cursor: pointer;
    }
    img {
        max-width: 100%;
        height: auto;
    }
</style>

Los organizadores del Club de Algoritmia también aprovecharon para agradecer a todos los que hicieron posible este evento, especialmente a la Escuela Técnica Superior de Ingeniería Informática por el patrocinio y a Mª Lourdes Miró, Subdirectora de Estudiantes, Innovación y Responsabilidad Social, por su apoyo incondicional.

Este ha sido solo el comienzo de lo que esperamos sea una larga tradición en la Universidad de Sevilla. Estamos seguros de que vendrán más competiciones como esta, donde los estudiantes podrán seguir desafiándose, aprendiendo y, por supuesto, divirtiéndose con la programación y la algoritmia. ¡Nos vemos en la próxima edición de CompliCAUS!





