---
title: Contact
date: 2021-12-18T03:10:36.000Z
draft: false
language: en
description: A test with @tailwindcss/typography & Prose
---

<!-- @format -->

<section class="lg:pb-24">
  <div class="px-4 mx-auto max-w-screen-md">
      <p class="mb-8 font-light text-center text-gray-500 lg:mb-16 dark:text-gray-400 sm:text-xl">Got a technical issue? Want to send feedback about a beta feature? Need details about our Business plan? Let us know.</p>
      <form name="contact" action="https://formsubmit.co/your@email.com" method="POST" class="space-y-8">
          <div class="my-4">
              <label for="email" class="block mb-2 font-medium text-gray-900 text-md dark:text-gray-50"><strong>Your Email:</strong></label>
              <input type="email" name="email" class="block p-2.5 w-full text-gray-900 bg-gray-50 rounded-lg border border-gray-300 shadow-sm text-md focus:ring-indigo-500 focus:border-indigo-500 dark:bg-gray-700 dark:border-gray-600 dark:text-white dark:focus:ring-indigo-500 dark:focus:border-indigo-500" required>
          </div>
          <div class="my-4">
              <label for="subject" class="block mb-2 font-medium text-gray-900 text-md dark:text-gray-50"><strong>Subject:</strong></label>
              <input type="text" name="subject" class="block p-2.5 w-full text-gray-900 bg-gray-50 rounded-lg border border-gray-300 shadow-sm text-md focus:ring-indigo-500 focus:border-indigo-500 dark:bg-gray-700 dark:border-gray-600 dark:text-white dark:focus:ring-indigo-500 dark:focus:border-indigo-500" required>
          </div>
          <div class="my-4 sm:col-span-2">
              <label for="message" class="block mb-2 font-medium text-gray-900 text-md dark:text-gray-50"><strong>Your message:</strong></label>
              <textarea id="message" name="message" rows="6" class="block p-2.5 w-full text-gray-900 bg-gray-50 rounded-lg border border-gray-300 shadow-sm text-md focus:ring-white focus:border-white dark:bg-gray-700 dark:border-gray-600 dark:text-white dark:focus:ring-white dark:focus:border-white"></textarea>
          </div>
          <div class="mt-6 lg:pb-16">
             <button type="submit" class="px-5 py-3 font-bold text-center text-white bg-indigo-600 rounded-lg text-md sm:w-fit hover:bg-indigo-800 focus:ring-4 focus:outline-none focus:ring-indigo-300 dark:bg-indigo-600 dark:hover:bg-indigo-700 dark:focus:ring-indigo-800">Send Message</button>
          </div>
      </form>
  </div>
</section>
