// OAuth callback — exchanges code for token and passes back to Decap CMS popup
export default async function handler(req, res) {
  const { code } = req.query;
  const { GITHUB_CLIENT_ID, GITHUB_CLIENT_SECRET } = process.env;

  if (!code) {
    return res.status(400).send('Missing code parameter');
  }

  try {
    const tokenRes = await fetch('https://github.com/login/oauth/access_token', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        Accept: 'application/json',
      },
      body: JSON.stringify({
        client_id: GITHUB_CLIENT_ID,
        client_secret: GITHUB_CLIENT_SECRET,
        code,
      }),
    });

    const data = await tokenRes.json();

    if (data.error) {
      return res.status(400).send('GitHub OAuth error: ' + data.error_description);
    }

    const payload = JSON.stringify({ token: data.access_token, provider: 'github' });
    const message = 'authorization:github:success:' + payload;

    res.setHeader('Content-Type', 'text/html');
    res.send([
      '<!DOCTYPE html><html><body>',
      '<script>',
      'var msg = ' + JSON.stringify(message) + ';',
      'function receiveMessage(e) {',
      '  window.opener.postMessage(msg, e.origin);',
      '}',
      'window.addEventListener("message", receiveMessage, false);',
      'window.opener.postMessage("authorizing:github", "*");',
      '</script>',
      '<p>Authorization complete. You may close this window.</p>',
      '</body></html>',
    ].join('\n'));

  } catch (err) {
    console.error(err);
    res.status(500).send('OAuth exchange failed');
  }
}
