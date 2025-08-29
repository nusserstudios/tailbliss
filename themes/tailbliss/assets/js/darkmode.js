// Optimized dark mode toggle - reduced DOM queries and improved performance
(function() {
    'use strict';
    
    function initDarkMode() {
        const themeToggleDarkIcon = document.getElementById('theme-toggle-dark-icon');
        const themeToggleLightIcon = document.getElementById('theme-toggle-light-icon');
        const themeToggleBtn = document.getElementById('theme-toggle');

        // Check if elements exist before proceeding
        if (!themeToggleDarkIcon || !themeToggleLightIcon || !themeToggleBtn) {
            return;
        }

        const isDark = localStorage.getItem('color-theme') === 'dark' || 
                      (!('color-theme' in localStorage) && window.matchMedia('(prefers-color-scheme: dark)').matches);

        // Set initial icon state
        themeToggleLightIcon.classList.toggle('hidden', !isDark);
        themeToggleDarkIcon.classList.toggle('hidden', isDark);

        themeToggleBtn.addEventListener('click', function() {
            const isDarkMode = document.documentElement.classList.contains('dark');
            
            // Toggle theme
            document.documentElement.classList.toggle('dark', !isDarkMode);
            localStorage.setItem('color-theme', isDarkMode ? 'light' : 'dark');
            
            // Toggle icons
            themeToggleDarkIcon.classList.toggle('hidden');
            themeToggleLightIcon.classList.toggle('hidden');
        }, { passive: true });
    }

    // Use more efficient event listener
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', initDarkMode, { once: true });
    } else {
        initDarkMode();
    }
})();