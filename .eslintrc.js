module.exports = {
  root: true,
  env: {
    node: true,
    jest: true,
  },
  extends: ['plugin:vue/essential', '@vue/airbnb', 'prettier'],
  plugins: ['prettier'],
  rules: {
    'no-console': process.env.NODE_ENV === 'production' ? 'error' : 'off',
    'no-debugger': process.env.NODE_ENV === 'production' ? 'error' : 'off',
    'import/extensions': 'off',
    'import/no-unresolved': 'off',
    'prettier/prettier': 'off',
  },
  parserOptions: {
    parser: 'babel-eslint',
  },
};
