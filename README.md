# xCloud QA seed repo — deliberately broken dependency install

Used to seed `seed_site_docker_failing` for QA-testing xCloud PR #6837
(MCP server rebuild + git-deploy diagnosis/retry). The Dockerfile runs
`npm ci` with no `package-lock.json` committed, so the Docker build fails
deterministically at the dependency-install step every time.
