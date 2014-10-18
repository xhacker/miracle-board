# Miracle Board

Just another damn simple status board.

## Configuration

Very simple.

```json
{
  "tasks": [
    {
      "type": "http",
      "id": "xhacker_im",
      "title": "http://xhacker.im",
      "address": "http://xhacker.im"
    },
    {
      "type": "shell",
      "id": "vps",
      "title": "VPS",
      "command": "ping -c 1 xhacker.im"
    }
  ]
}
```

By default, we expect ``http`` tasks to have status code ``200``, ``shell`` tasks to have return code ``0``. ``command`` field in ``shell`` tasks will be directly executed, please use with caution.
