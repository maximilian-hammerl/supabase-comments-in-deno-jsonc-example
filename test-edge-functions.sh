#!/bin/bash

echo -e "import_map.json test:\n"

curl -i --location --request POST 'http://127.0.0.1:54321/functions/v1/import-map' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0' \
--header 'Content-Type: application/json' \

echo -e "\n\n\n----------"
echo -e "deno.json test:\n"

curl -i --location --request POST 'http://127.0.0.1:54321/functions/v1/deno-json' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0' \
--header 'Content-Type: application/json' \

echo -e "\n\n\n----------"
echo -e "deno.jsonc with json test:\n"

curl -i --location --request POST 'http://127.0.0.1:54321/functions/v1/deno-jsonc-with-json' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0' \
--header 'Content-Type: application/json' \

echo -e "\n\n\n----------"
echo -e "deno.jsons with line comment test:\n"

curl -i --location --request POST 'http://127.0.0.1:54321/functions/v1/deno-jsonc-with-line-comment' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0' \
--header 'Content-Type: application/json' \

echo -e "\n\n\n----------"
echo -e "deno.jsons with block comment test:\n"

curl -i --location --request POST 'http://127.0.0.1:54321/functions/v1/deno-jsonc-with-block-comment' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0' \
--header 'Content-Type: application/json' \

echo -e "\n\n\n----------"
echo -e "deno.jsons with trailing comma test:\n"

curl -i --location --request POST 'http://127.0.0.1:54321/functions/v1/deno-jsonc-with-trailing-comma' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0' \
--header 'Content-Type: application/json' \
