const locations = ["Việt Nam", "Đà Nẵng", "Huế", "Hà Nội", "Sài Gòn"];
let index = 0;
let charIndex = 0;
let isDeleting = false;
const typingElement = document.getElementById("typing-text");

function typeEffect() {
    const currentLocation = locations[index];
    if (isDeleting) {
        typingElement.textContent = "Tận hưởng du lịch " + currentLocation.substring(0, charIndex--) + "|";
        if (charIndex < 0) {
            isDeleting = false;
            index = (index + 1) % locations.length;
        }
    } else {
        typingElement.textContent = "Tận hưởng du lịch " + currentLocation.substring(0, charIndex++) + "|";
        if (charIndex > currentLocation.length) {
            isDeleting = true;
            setTimeout(typeEffect, 1000);
            return;
        }
    }
    setTimeout(typeEffect, isDeleting ? 100 : 200);
}
typeEffect();