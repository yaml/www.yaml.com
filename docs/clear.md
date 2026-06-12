# Clear Cookies & Storage (Developer Tool)

<div style="max-width: 500px; margin: 40px auto; padding: 30px; background: var(--md-code-bg-color); border: 1px solid var(--md-default-fg-color--lightest); border-radius: 16px; box-shadow: 0 10px 30px rgba(0,0,0,0.1); text-align: center;">
  <div style="font-size: 3em; margin-bottom: 20px; color: var(--md-primary-fg-color);">
    :material-cookie-off:
  </div>
  <h2 style="margin-top: 0; color: var(--md-default-fg-color);">Cookies Cleared!</h2>
  <p style="color: var(--md-default-fg-color--light); line-height: 1.6; margin-bottom: 25px;">
    All cookies and local storage options (including your GDPR consent choice) have been successfully deleted for testing.
  </p>
  <p style="font-size: 0.9em; color: var(--md-default-fg-color--light);">
    Redirecting you back to the early access page in <span id="countdown">3</span> seconds...
  </p>
  <a href="../landing/secure-supply-chain/" style="display: inline-block; margin-top: 15px; padding: 10px 20px; background: var(--md-primary-fg-color); color: white; border-radius: 8px; font-weight: 600; text-decoration: none; transition: background 0.2s;">
    Return Immediately
  </a>
</div>

<script>
(function() {
  // 1. Clear LocalStorage
  localStorage.clear();
  
  // 2. Clear All Cookies
  var cookies = document.cookie.split(";");
  for (var i = 0; i < cookies.length; i++) {
    var cookie = cookies[i];
    var eqPos = cookie.indexOf("=");
    var name = eqPos > -1 ? cookie.substr(0, eqPos).trim() : cookie.trim();
    // Try clearing for root path and current path
    document.cookie = name + "=; expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/";
    document.cookie = name + "=; expires=Thu, 01 Jan 1970 00:00:00 GMT; path=" + window.location.pathname;
  }
  
  // 3. Countdown & Redirect
  var count = 3;
  var countdownEl = document.getElementById("countdown");
  var interval = setInterval(function() {
    count--;
    if (countdownEl) countdownEl.textContent = count;
    if (count <= 0) {
      clearInterval(interval);
      window.location.href = "../landing/secure-supply-chain/";
    }
  }, 1000);
})();
</script>
