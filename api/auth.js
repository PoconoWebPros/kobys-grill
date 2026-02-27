// OAuth start — redirects to GitHub authorization page
export default function handler(req, res) {
  const { GITHUB_CLIENT_ID } = process.env;
  if (!GITHUB_CLIENT_ID) {
    return res.status(500).send('GITHUB_CLIENT_ID not configured');
  }

  const params = new URLSearchParams({
    client_id: GITHUB_CLIENT_ID,
    scope: 'repo,user',
    redirect_uri: `https://${req.headers.host}/api/callback`,
  });

  res.redirect(`https://github.com/login/oauth/authorize?${params}`);
}
