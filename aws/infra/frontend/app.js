async function chamarAPI() {
  const resposta = await fetch('/api');
  document.getElementById('resposta').innerText = await resposta.text();
}

async function chamarAuth() {
  const resposta = await fetch('/auth');
  document.getElementById('resposta').innerText = await resposta.text();
}