# Mason Collection
Just my personal collection, I have no guarantee whether these collection still up to date with current mason version or not.

## How to create "COMPLEX" path
### Windows, POWERSHELL, who use CMD nowadays anyway
Basic commands:\
`New-Item -Force -Path 'bricks/brickname/__brick__/insertcomplexsyntaxhere'`\
\
Example for loop brick in basic directory: \
`New-Item -Force -Path 'bricks/bloc/__brick__/{{path}}/{{#names}}{{#snakeCase}}{{{str}}}{{/snakeCase}}_file.txt{{/names}}'`

### NIX bash command
TBH I still struggle finding one-liner command to make this happen, either install powershell for the OS and use same command as windows or have these 2-liner command.\
Basic commands:\
`mkdir -p 'bricks/brickname/__brick__/insertcomplexsyntaxhere_exclude_last_slash`\
`touch 'bricks/brickname/__brick__/insertcomplexsyntaxhere`\
\
Example for loop brick in basic directory: \
`mkdir -p 'bricks/bloc/__brick__/{{path}}/{{#names}}{{#snakeCase}}{{{str}}}{{/snakeCase}}_file.txt{{'`\
`touch 'bricks/bloc/__brick__/{{path}}/{{#names}}{{#snakeCase}}{{{str}}}{{/snakeCase}}_file.txt{{/names}}'`