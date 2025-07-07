/* script.js */
/* Immediately-invoked async function to fetch greeting */
(async () => {
  const el = document.getElementById('greeting');
  try {
    const res = await fetch('http://127.0.0.1:5000/api/hello');
    if (res.ok) {
      const data = await res.json();
      el.textContent = data.message;
      return;
    }
  } catch (_) {
    // Backend is not running or unreachable
  }
  el.textContent = 'Hello, World!';
})();
