# Supabase Edge Functions Bug: `deno.jsonc` Compatibility Issue

This repository demonstrates a bug in Supabase's Edge Functions where the `deno.jsonc` file is not fully supported, despite being explicitly recommended for use (see [Using deno.jsonc (recommended)](https://supabase.com/docs/guides/functions/import-maps#using-denojsonc-recommended)).
The issue arises when the `deno.jsonc` file includes JSONC-specific features like comments (line or block) or trailing commas, which cause the edge functions to fail.

Bug report: https://github.com/supabase/cli/issues/3050

## Issue Summary

**Expected behavior:**
Supabase should support the `deno.jsonc` file format as advertised, including all JSONC features (comments and trailing commas).

**Actual behavior:**
Edge functions only support `deno.jsonc` files that are valid JSON (without comments or trailing commas).
Edge functions using JSONC-specific features fail with the following error message:

```
InvalidWorkerCreation: worker boot error: Unable to parse import map JSON: key must be a string at line 3 column 5
    at async UserWorker.create (ext:sb_user_workers/user_workers.js:139:15)
    at async Object.handler (file:///root/index.ts:156:22)
    at async respond (ext:sb_core_main_js/js/http.js:197:14) {
  name: "InvalidWorkerCreation"
}
```

And edge function response:

```json
{"code":"BOOT_ERROR","message":"Worker failed to boot (please check logs)"}
```

## Demonstration

This repository includes six edge functions to showcase the behavior:

- Working functions:
  - `import-map`: Uses a valid `import_map.json` file.
  - `deno-json`: Uses a `valid deno.json` file.
  - `deno-jsonc-with-json`: Uses a `deno.jsonc` file with valid JSON (without comments or trailing commas).
- Failing functions:
  - `deno-jsonc-with-line-comment`: Uses a `deno.jsonc` file with line comments.
  - `deno-jsonc-with-block-comment`: Uses a `deno.jsonc` file with block comments.
  - `deno-jsonc-with-trailing-comma`: Uses a `deno.jsonc` file with trailing commas.

## How to Reproduce

1. Clone this repository.
2. Start Supabase (`cd supabase`, `supabase start`, and optionally `supabase functions serve`).
3. Invoke the edge functions (for example with the `test-edge-functions.sh` script or using curl) observe the results.

## License

This repository is open-source and available under the MIT License.
