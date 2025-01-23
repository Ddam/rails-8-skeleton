export default {
  env: {
    browser: true,
    es2021: true
  },
  plugins: ["@typescript-eslint", "prettier"],
  extends: [
    "eslint:recommended",
    "plugin:import/recommended",
    "plugin:import/typescript",
    "plugin:@typescript-eslint/recommended",
    "plugin:prettier/recommended",
    "prettier"
  ],
  parser: "@typescript-eslint/parser",
  parserOptions: {
    ecmaVersion: "latest",
    sourceType: "module",
    warnOnUnsupportedTypeScriptVersion: true
  },
  rules: {
    "prettier/prettier": "warn",
    "eqeqeq": ["warn", "smart"],
    "@typescript-eslint/no-non-null-asserted-optional-chain": "warn",
    "@typescript-eslint/ban-ts-comment": "warn",
    "@typescript-eslint/explicit-function-return-type": "error",
    "@typescript-eslint/no-explicit-any": "off",
    "@typescript-eslint/no-non-null-assertion": "error",
    "@typescript-eslint/no-unsafe-argument": "error",
    "@typescript-eslint/no-unsafe-assignment": "error",
    "@typescript-eslint/no-unsafe-call": "error",
    "@typescript-eslint/no-unsafe-member-access": "error",
    "@typescript-eslint/no-unsafe-return": "error",
    "@typescript-eslint/no-unsafe-type-assertion": "error",
    "@typescript-eslint/prefer-for-of": "error",
    "@typescript-eslint/prefer-nullish-coalescing": "error",
    "@typescript-eslint/prefer-optional-chain": "error",
    "@typescript-eslint/restrict-plus-operands": ["error", {
      "allowAny": false,
      "allowBoolean": false,
      "allowNullish": false,
      "allowNumberAndString": false,
      "allowRegExp": false,
    }],
    "@typescript-eslint/restrict-template-expressions": "error",
    "@typescript-eslint/strict-boolean-expressions": ["error", {
      "allowNumber": false,
      "allowString": false,
    }],
    "@typescript-eslint/use-unknown-in-catch-callback-variable": "error",
    "no-empty": "warn",
    "prefer-const": "warn",
    "no-debugger": "warn"
  }
};
