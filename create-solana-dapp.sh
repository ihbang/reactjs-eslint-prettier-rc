# function definition for create-next-app and eslint config on fish shell
function create-solana-dapp
    if count $argv > /dev/null
        npx create-next-app@latest $argv --use-npm --ts -e https://github.com/solana-labs/dapp-scaffold
        cd $argv
    else
        npx create-next-app@latest . --use-npm --ts -e https://github.com/solana-labs/dapp-scaffold
    end
    npm i -D prettier eslint-config-prettier eslint-plugin-prettier
    npm i -D @typescript-eslint/eslint-plugin @typescript-eslint/parser
    cp ~/devel/reactjs-eslint-prettier-rc/.prettierrc.js .
    cp ~/devel/reactjs-eslint-prettier-rc/.eslintrc.json .
end