# function definition for create-next-app and eslint config on fish shell
function create-next-app
    if count $argv > /dev/null
        npx create-next-app@latest $argv
        cd $argv
    else
        npx create-next-app@latest .
    end
    yarn add --dev eslint-config-prettier
    cp ~/devel/reactjs-eslint-prettier-rc/.prettierrc.js .
end