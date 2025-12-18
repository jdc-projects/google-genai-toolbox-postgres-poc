# google-genai-toolbox-postgres-poc

PoC for using the Google GenAI Toolbox (MCP Server) with PostgreSQL.

## TLDR

```BASH
docker compose up -d
./populate-db.sh
```

# Claude Code Config

In your local `claude_desktop_config.json`:

```json
{
  "mcpServers": {
    "local-server": {
      "command": "npx",
      "args": [
        "mcp-remote",
        "http://localhost:5000/mcp"
      ]
    }
  }
}
```
