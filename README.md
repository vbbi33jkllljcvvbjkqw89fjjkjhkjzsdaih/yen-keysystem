# Yen Key System (private)

The key and Terms flow, on its own. The loader runs this before any game script.

- `KeySystem.lua` — the key window, validation, the 1 hour timer and the Terms gate.
- `KeyConfig.lua` — the keys, the 1 hour duration, the Discord link, Static or Http provider.
- `Terms.lua` — the Terms of Service text, versioned.

Flow: the loader calls `KeySystem.Run` → on a valid key it checks `KeySystem.Terms` → only then does the game script load. A key inside its hour is trusted on rejoin, so autofarms are not interrupted. At expiry the hub unloads and the key window returns once.

This is the shared key system for every Yen production. Private, obfuscated with Luraph, whitelisted with Luarmor. Review copy of the files in `Documents\Yen\src`.
