const navToggle = document.querySelector(".nav-toggle");
const navLinks = document.querySelector(".nav-links");

if (navToggle && navLinks) {
  navToggle.addEventListener("click", () => {
    const isOpen = navLinks.classList.toggle("is-open");
    navToggle.setAttribute("aria-expanded", String(isOpen));
  });

  navLinks.querySelectorAll("a").forEach((link) => {
    link.addEventListener("click", () => {
      navLinks.classList.remove("is-open");
      navToggle.setAttribute("aria-expanded", "false");
    });
  });
}

const observer = new IntersectionObserver(
  (entries) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        entry.target.classList.add("is-visible");
        observer.unobserve(entry.target);
      }
    });
  },
  { threshold: 0.2 },
);

document
  .querySelectorAll(".section, .project-card, .skill-card")
  .forEach((el) => {
    el.classList.add("fade-in");
    observer.observe(el);
  });

// Smooth scroll for Safari
const smoothLinks = document.querySelectorAll("a[href^='#']");

smoothLinks.forEach((link) => {
  link.addEventListener("click", (event) => {
    const targetId = link.getAttribute("href");
    const target = document.querySelector(targetId);

    if (target) {
      event.preventDefault();
      target.scrollIntoView({ behavior: "smooth" });
    }
  });
});

// Dynamic Experience Years Calculation
const experienceElement = document.getElementById("experience-years");
if (experienceElement) {
  const currentYear = new Date().getFullYear();
  const startYear = 2023;
  const yearsExperience = currentYear - startYear;
  experienceElement.textContent = `${yearsExperience}+`;
}

// Dynamic Project Counting
const projectCountElement = document.getElementById("project-count");
const projectCards = document.querySelectorAll(".project-card");
if (projectCountElement) {
  projectCountElement.textContent = `${projectCards.length}+`;
}

// WhatsApp Form Redirection
const contactForm = document.getElementById("contact-form");
if (contactForm) {
  contactForm.addEventListener("submit", (e) => {
    e.preventDefault();

    const name = contactForm.querySelector('input[name="name"]').value;
    const company = contactForm.querySelector('input[name="company"]').value;
    const email = contactForm.querySelector('input[name="email"]').value;
    const message = contactForm.querySelector('textarea[name="message"]').value;

    const formattedMessage = `Hi Ammar! My name is ${name}, I am from ${company}, I would like to share you about: ${message}. You can contact me at ${email}`;

    const whatsappUrl = `https://wa.me/60128471208?text=${encodeURIComponent(formattedMessage)}`;

    window.open(whatsappUrl, "_blank");
    contactForm.reset();
  });
}
