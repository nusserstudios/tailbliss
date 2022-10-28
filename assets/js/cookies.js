// Learn more on how to use the Modal object from Flowbite: https://flowbite.com/docs/components/modal/#javascript-behaviour

const bannerEl = document.getElementById('banner');
const banner = new Modal(bannerEl, {
    placement: 'bottom-left'
});

banner.show();

const closeModalEl = document.getElementById('close-modal');
closeModalEl.addEventListener('click', function() {
    banner.hide();
});

const acceptCookiesEl = document.getElementById('accept-cookies');
acceptCookiesEl.addEventListener('click', function() {
    // handle cookie accept
    alert('cookies accepted');
    banner.hide();
});

const blockCookiesEl = document.getElementById('block-cookies');
blockCookiesEl.addEventListener('click', function() {
    // handle cookie block
    alert('cookies blocked');
    banner.hide();
});