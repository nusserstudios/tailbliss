---
title: Contacto
date: 2024-08-22T11:18:36+08:00
draft: false
language: es
description: A test with @tailwindcss/typography & Prose
---

<!-- @format -->

<section class="lg:pb-24">
  <div class="max-w-screen-md px-4 mx-auto">
       <p class="mb-8 font-light text-center text-gray-500 lg:mb-16 dark:text-gray-400 sm:text-xl">
        La mejor manera de contactarnos es a través de nuestro correo electrónico general: <a href="mailto:clubalgoritmiaus@gmail.com" class="text-indigo-600 hover:underline">clubalgoritmiaus@gmail.com</a>, o mediante el siguiente formulario. Nos encanta recibir información sobre oportunidades para nuestros miembros, así como propuestas de patrocinio.
        <br><br>
        Si eres estudiante y deseas participar activamente, te invitamos a unirte a nuestro servidor de <a href="https://discord.gg/gEbbJrzEYZ" class="text-indigo-600 hover:underline">Discord</a>. Allí encontrarás una comunidad inclusiva y amigable, formada tanto por estudiantes actuales como por exalumnos.
      </p>
      <form name="contact" action="https://formsubmit.co/clubslgoritmiaus@gmail.com" method="POST" class="space-y-8">
          <div class="my-4">
              <label for="email" class="block mb-2 font-medium text-gray-900 text-md dark:text-gray-300"><strong>Tu correo electrónico:</strong></label>
              <input type="email" name="email" class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-md rounded-lg focus:ring-indigo-500 focus:border-indigo-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-indigo-500 dark:focus:border-indigo-500 dark:shadow-sm-light" placeholder="nombre@ejemplo.com" required>
          </div>
          <div class="my-4">
              <label for="subject" class="block mb-2 font-medium text-gray-900 text-md dark:text-gray-300"><strong>Asunto:</strong></label>
              <input type="text" name="subject" class="block w-full p-3 text-gray-900 border border-gray-300 rounded-lg shadow-sm text-md bg-gray-50 focus:ring-indigo-500 focus:border-indigo-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-indigo-500 dark:focus:border-indigo-500 dark:shadow-sm-light" placeholder="Háganos saber cómo podemos ayudarte" required>
          </div>
          <div class="my-4 sm:col-span-2">
              <label for="message" class="block mb-2 font-medium text-gray-900 text-md dark:text-gray-400"><strong>Tu mensaje:</strong></label>
              <textarea id="message" name="message" rows="6" class="block p-2.5 w-full text-md text-gray-900 bg-gray-50 rounded-lg shadow-sm border border-gray-300 focus:ring-indigo-500 focus:border-indigo-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-indigo-500 dark:focus:border-indigo-500" placeholder="Deja un comentario..."></textarea>
          </div>
          <div class="mt-6 lg:pb-16">
             <button type="submit" class="px-5 py-3 font-bold text-center text-white bg-indigo-600 rounded-lg text-md sm:w-fit hover:bg-indigo-800 focus:ring-4 focus:outline-none focus:ring-indigo-300 dark:bg-indigo-600 dark:hover:bg-indigo-700 dark:focus:ring-indigo-800">Enviar mensaje</button>
          </div>
      </form>
  </div>
</section>
