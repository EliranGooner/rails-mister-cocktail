import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Cocktails just the way you want them!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
