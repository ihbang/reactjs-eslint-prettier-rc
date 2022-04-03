# function definition for create-react-app and eslint config on fish shell
function create-react-app
    npx create-react-app .
    npm install --save prop-types
    npx install-peerdeps --dev eslint-config-airbnb
    npm install --save-dev --save-exact prettier
    npm install --save-dev eslint-plugin-prettier eslint-config-prettier
    cp ~/devel/reactjs-eslint-prettier-rc/.*.js .
    echo '.eslintrc.js' >> .gitignore
    echo '.prettierrc.js' >> .gitignore
end