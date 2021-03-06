# function definition for create-next-app and eslint config on fish shell
function create-next-app
    if count $argv > /dev/null
        npx create-next-app@latest $argv --use-npm --ts
        cd $argv
    else
        npx create-next-app@latest . --use-npm --ts
    end
    npm i -D prettier eslint-config-prettier eslint-plugin-prettier
    npm i -D @typescript-eslint/eslint-plugin @typescript-eslint/parser
    cp ~/devel/reactjs-eslint-prettier-rc/.prettierrc.js .
    cp ~/devel/reactjs-eslint-prettier-rc/.eslintrc.json .
end