---
title: Home
description: YAML supports your stack; We support YAML
hide:
- navigation
- toc
social:
  cards_layout_options:
    header: yaml.com
    title: The YAML Company
    subtitle: YAML Enterprise Support
    footer: YAML supports your stack. We support YAML.
---

<style>
/* Page Load Animations */
@keyframes fadeInUp {
  from {
    opacity: 0;
    transform: translateY(30px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

@keyframes fadeIn {
  from { opacity: 0; }
  to { opacity: 1; }
}

.md-content {
  max-width: 100%;
  padding: 0;
}
.hero {
  background:
    radial-gradient(circle at 20% 50%, rgba(255, 213, 79, 0.6) 0%, transparent 50%),
    radial-gradient(circle at 80% 80%, rgba(255, 193, 7, 0.5) 0%, transparent 50%),
    linear-gradient(135deg, #FFD54F 0%, #E6A800 100%);
  color: #5D4E00;
  text-align: center;
  padding: 120px 40px 80px;
  border-radius: 12px;
  margin: 20px;
  position: relative;
  overflow: hidden;
}
.hero::before {
  content: '';
  position: absolute;
  top: -50%;
  right: -20%;
  width: 100%;
  height: 100%;
  background: radial-gradient(circle, rgba(255, 255, 255, 0.1) 0%, transparent 70%);
  pointer-events: none;
}
.hero h1 {
  font-size: 3em;
  font-weight: 700;
  margin: 0 0 0.3em;
  line-height: 1.2;
  animation: fadeInUp 0.8s cubic-bezier(0.16, 1, 0.3, 1) 0.1s both;
  position: relative;
  z-index: 1;
}
[data-md-color-scheme="slate"] .hero h1 {
  color: #5D4E00;
}
.hero .tagline {
  font-size: 1.5em;
  font-weight: 300;
  margin: 0 0 1em;
  opacity: 0.85;
  animation: fadeInUp 0.8s cubic-bezier(0.16, 1, 0.3, 1) 0.3s both;
  position: relative;
  z-index: 1;
}
.hero .subtitle {
  font-size: 1.1em;
  margin: 0 0 2.5em;
  opacity: 0.8;
  animation: fadeInUp 0.8s cubic-bezier(0.16, 1, 0.3, 1) 0.5s both;
  position: relative;
  z-index: 1;
}
.hero .cta {
  display: inline-block;
  background: white;
  color: #E6A800;
  padding: 16px 48px;
  border-radius: 8px;
  text-decoration: none;
  font-weight: 600;
  font-size: 1.1em;
  transition: transform 0.2s, box-shadow 0.2s;
  box-shadow: 0 4px 12px rgba(0,0,0,0.15);
  animation: fadeInUp 0.8s cubic-bezier(0.16, 1, 0.3, 1) 0.7s both;
  position: relative;
  overflow: hidden;
  z-index: 1;
}
.hero .cta::before {
  content: '';
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.4), transparent);
  transition: left 0.5s;
}
.hero .cta:hover {
  transform: translateY(-2px);
  box-shadow: 0 8px 20px rgba(0,0,0,0.2);
}
.hero .cta:hover::before {
  left: 100%;
}
.value-props {
  max-width: 1200px;
  margin: -40px auto 60px;
  padding: 0 40px;
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 30px;
}
.value-card {
  background: var(--md-default-bg-color);
  border: 1px solid var(--md-default-fg-color--lightest);
  border-radius: 12px;
  padding: 40px 30px;
  text-align: center;
  box-shadow: 0 4px 12px rgba(0,0,0,0.08);
  transition: transform 0.2s, box-shadow 0.2s;
}
.value-card:nth-child(1) {
  animation: fadeInUp 0.6s ease-out 0.9s both;
}
.value-card:nth-child(2) {
  animation: fadeInUp 0.6s ease-out 1.05s both;
}
.value-card:nth-child(3) {
  animation: fadeInUp 0.6s ease-out 1.2s both;
}
.value-card:hover {
  transform: translateY(-4px);
  box-shadow: 0 8px 24px rgba(0,0,0,0.12);
}
.value-card h3 {
  color: #FF6F00;
  font-size: 1.5em;
  margin: 0 0 0.5em;
}
.value-card:first-child {
  border-color: rgba(13, 115, 119, 0.3);
}
.value-card:first-child h3 {
  color: var(--md-secondary-accent-light, #14a2a8);
}
[data-md-color-scheme="slate"] .value-card:first-child h3 {
  color: var(--md-secondary-accent-light, #1fc7cd);
}
.value-card p {
  color: var(--md-default-fg-color--light);
  margin: 0;
  font-size: 1.05em;
}
.section {
  max-width: 1200px;
  margin: 0 auto;
  padding: 80px 40px;
}
.section-title {
  text-align: center;
  font-size: 2.5em;
  font-weight: 700;
  margin: 0 0 0.8em;
  color: var(--md-default-fg-color);
}
.projects-grid {
  display: grid;
  grid-template-columns: 2fr 1fr 1fr;
  grid-template-rows: auto auto;
  gap: 24px;
  margin-top: 40px;
}
.project-card {
  background: var(--md-default-bg-color);
  border: 2px solid var(--md-primary-fg-color);
  border-radius: 10px;
  padding: 30px;
  text-align: center;
  transition: transform 0.2s, border-color 0.2s;
  text-decoration: none;
  display: block;
  cursor: pointer;
}
.project-card:first-child {
  grid-row: 1 / 3;
  display: flex;
  flex-direction: column;
  justify-content: center;
  background: linear-gradient(135deg, rgba(255, 160, 0, 0.05) 0%, rgba(255, 111, 0, 0.05) 100%);
}
.project-card:first-child h4 {
  font-size: 2em;
}
.project-card:first-child p {
  font-size: 1.15em;
}
.project-card:hover {
  transform: translateY(-3px);
  border-color: #E6A800;
  box-shadow: 0 8px 24px rgba(230, 168, 0, 0.2);
}
.project-card h4 {
  font-size: 1.4em;
  margin: 0 0 0.5em;
  color: var(--md-primary-fg-color);
}
.project-card p {
  color: var(--md-default-fg-color--light);
  margin: 0;
}
@media screen and (max-width: 768px) {
  .projects-grid {
    grid-template-columns: 1fr;
    grid-template-rows: auto;
  }
  .project-card:first-child {
    grid-row: auto;
  }
}
.tiers-section {
  background: var(--md-code-bg-color);
  padding: 80px 40px;
}
.tiers-grid {
  max-width: 1400px;
  margin: 0 auto;
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 30px;
  margin-top: 40px;
}
.tier-card {
  background: var(--md-default-bg-color);
  border: 2px solid var(--md-default-fg-color--lightest);
  border-radius: 12px;
  padding: 40px 30px;
  text-align: center;
  transition: transform 0.2s, box-shadow 0.2s;
}
.tier-card:hover {
  transform: translateY(-4px);
  box-shadow: 0 12px 28px rgba(0,0,0,0.15);
  border-color: var(--md-primary-fg-color);
}
.tier-name {
  font-size: 1.8em;
  font-weight: 700;
  margin: 0 0 0.3em;
  color: var(--md-primary-fg-color);
}
.tier-price {
  font-size: 2.2em;
  font-weight: 700;
  margin: 0 0 0.5em;
  color: #FF6F00;
}
.tier-features {
  text-align: left;
  margin: 20px 0;
  color: var(--md-default-fg-color--light);
}
.tier-cta {
  display: inline-block;
  background: var(--md-primary-fg-color);
  color: #5D4E00 !important;
  padding: 12px 32px;
  border-radius: 6px;
  text-decoration: none;
  font-weight: 600;
  margin-top: 20px;
  transition: background 0.2s;
}
.tier-cta:visited {
  color: #5D4E00 !important;
}
.tier-cta:hover,
.tier-cta:focus {
  background: #FF6F00;
  color: #5D4E00 !important;
}
[data-md-color-scheme="slate"] .tier-cta {
  color: #5D4E00 !important;
}
[data-md-color-scheme="slate"] .tier-cta:hover,
[data-md-color-scheme="slate"] .tier-cta:focus {
  color: #5D4E00 !important;
}

/* Mobile landscape - reduce hero padding to show all content */
@media screen and (max-width: 900px) {
  .hero {
    padding: 50px 30px 50px;
    margin: 10px;
  }
  .hero h1 {
    font-size: 2em;
    margin: 0 0 0.2em;
  }
  .hero .tagline {
    font-size: 1.1em;
    margin: 0 0 0.4em;
  }
  .hero .subtitle {
    font-size: 0.9em;
    margin: 0 0 0.8em;
  }
  .hero .cta {
    padding: 10px 30px;
    font-size: 0.95em;
  }
}
</style>

<div class="hero">
  <h1>YAML supports your stack<br>We support YAML</h1>
  <div class="tagline">Professional maintenance from YAML's co-creator</div>
  <div class="subtitle">Security updates, supply chain accountability, and expert support—from the people who built it</div>
  <a href="/yes/" class="cta">Learn about the YES Program →</a>
</div>

<div class="value-props">
  <div class="value-card">
    <h3>🛡️ Security First</h3>
    <p>Know about security issues before they're public—with clear fix timelines and maintainer accountability</p>
  </div>
  <div class="value-card">
    <h3>🎯 Direct Expertise</h3>
    <p>Access to YAML's co-creator and the maintainers of critical YAML libraries</p>
  </div>
  <div class="value-card">
    <h3>🚀 Shape the Future</h3>
    <p>Help decide what YAML builds next and influence YAML's evolution</p>
  </div>
</div>

<div class="section">
  <h2 class="section-title">Projects We Maintain</h2>
  <div class="projects-grid">
    <a href="/projects/go-yaml/" class="project-card">
      <h4>go-yaml</h4>
      <p>Powers Kubernetes, Helm, and Kustomize</p>
    </a>
    <a href="/projects/pyyaml/" class="project-card">
      <h4>pyyaml</h4>
      <p>The foundation of Ansible and Python's YAML ecosystem</p>
    </a>
    <a href="/projects/libyaml/" class="project-card">
      <h4>libyaml</h4>
      <p>Fast C library used by many YAML implementations</p>
    </a>
    <a href="/projects/yaml-serde/" class="project-card">
      <h4>yaml-serde</h4>
      <p>Rust's YAML serialization framework</p>
    </a>
    <a href="/projects/yq/" class="project-card">
      <h4>yq</h4>
      <p>Lightweight YAML processor for the command line</p>
    </a>
  </div>
  <div style="text-align: center; margin-top: 50px;">
    <a href="/projects/" style="color: var(--md-primary-fg-color); font-size: 1.1em; text-decoration: none; font-weight: 600;">View All Projects →</a>
  </div>
</div>

<div class="tiers-section">
  <h2 class="section-title">YES Program Tiers</h2>
  <div class="tiers-grid">
    <div class="tier-card">
      <div class="tier-name">YES Builder</div>
      <div class="tier-features">
        ✓ Core security benefits<br>
        ✓ Starter support access<br>
        ✓ Choose 1 additional benefit<br>
        ✓ YES Builder badge
      </div>
      <a href="/yes/builder/" class="tier-cta">Learn More</a>
    </div>
    <div class="tier-card">
      <div class="tier-name">YES Member</div>
      <div class="tier-features">
        ✓ Core security benefits<br>
        ✓ Help decide what gets built<br>
        ✓ Choose 2 additional benefits<br>
        ✓ YES Member badge
      </div>
      <a href="/yes/member/" class="tier-cta">Learn More</a>
    </div>
    <div class="tier-card">
      <div class="tier-name">YES Partner</div>
      <div class="tier-features">
        ✓ All Member benefits<br>
        ✓ Enhanced support hours<br>
        ✓ Choose 4 additional benefits<br>
        ✓ YES Partner recognition
      </div>
      <a href="/yes/partner/" class="tier-cta">Learn More</a>
    </div>
    <div class="tier-card">
      <div class="tier-name">YES Leader</div>
      <div class="tier-features">
        ✓ All Partner benefits<br>
        ✓ Premium support<br>
        ✓ Choose 6 additional benefits<br>
        ✓ YES Leader recognition
      </div>
      <a href="/yes/leader/" class="tier-cta">Learn More</a>
    </div>
  </div>
  <div style="text-align: center; margin-top: 50px;">
    <a href="/yes/" style="color: var(--md-primary-fg-color); font-size: 1.3em; text-decoration: none; font-weight: 700; background: white; padding: 16px 40px; border-radius: 8px; display: inline-block;">Join the YES Program →</a>
  </div>
</div>

<div class="section">
  <h2 class="section-title">Why The YAML Company?</h2>
  <div style="max-width: 800px; margin: 0 auto; font-size: 1.1em; line-height: 1.8; color: var(--md-default-fg-color--light);">
    <p>YAML is the invisible backbone of modern infrastructure. From Kubernetes to Ansible, from CI/CD pipelines to cloud configurations, YAML touches every part of your technology stack.</p>
    <p>But like many critical open source projects, the YAML in your stack has relied on volunteer maintenance. The YAML Company changes that with professional, sustainable support from the people who created and maintain the core YAML ecosystem.</p>
    <p>Founded by Ingy döt Net, co-creator of YAML, The YAML Company provides enterprise-grade maintenance, security updates, and expert support for the YAML tools that power your business.</p>
  </div>
</div>
