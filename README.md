# JMusicBot on fly.io
[JMusicBot](https://github.com/jagrosh/MusicBot) Discord music bot on [fly.io](https://fly.io)

Run your own Discord music bot for free (within free tier) on fly.io

## fly.io Deployment
### GitHub Codespaces
1. Fork this repository.
2. On your own fork, click Code, and click Codespaces tab.
3. Click "Create codespace on main".
4. Check if JMusicBot version in `Dockerfile` is latest, if not, change to the latest version.
5. Login to flyctl by using `fly auth login` or you can generate [access tokens](https://fly.io/user/personal_access_tokens) and paste it to `FLY_API_TOKEN` in Codespaces secrets.
6. Create an app on fly.io `fly launch --copy-config --name app-name --no-deploy --vm-memory 256`.
7. When asked to tweak these settings before proceeding, enter yes if you want to tweak settings like selecting the region closest to you, otherwise, enter no.
8. After fly launch, flyctl will add `[http_service]` section, remove the whole `[http_service]` section in fly.toml, we don't need that.
9. Set environment variables for JMusicBot. `fly secrets set -a app-name TOKEN=<your_discord_bot_token> OWNER=<your_discord_user_id>`
10. Deploy to fly.io `fly deploy -a app-name --ha=false`.
11. When asked to allocate a dedicated IPv4 address, enter no.
12. Add the Discord bot to a server and check if the bot is online.

### Local
You need [flyctl](https://github.com/superfly/flyctl) installed.

1. Clone this repository.
2. Check if JMusicBot version in `Dockerfile` is latest, if not, change to the latest version.
3. Login to flyctl by using `fly auth login`.
4. Create an app on fly.io `fly launch --copy-config --name app-name --no-deploy --vm-memory 256`.
5. When asked to tweak these settings before proceeding, enter yes if you want to tweak settings like selecting the region closest to you, otherwise, enter no.
6. After fly launch, flyctl will add `[http_service]` section, remove the whole `[http_service]` section in `fly.toml`, we don't need that.
7. Set environment variables for JMusicBot. `fly secrets set -a app-name TOKEN=<your_discord_bot_token> OWNER=<your_discord_user_id>`
8. Deploy to fly.io `fly deploy -a app-name --ha=false`.
9. When asked to allocate a dedicated IPv4 address, enter no.
10. Add the Discord bot to a server and check if the bot is online.

## Change server configuration
Type `fly deploy -a app-name` on the repository after editing config.txt

### fly.io free tier
fly.io requires a credit card in order to work. If you don't have a credit card or if you are afraid that fly.io will charge you so much, it is recommended to buy prepaid credits that can be used with virtual credit cards.