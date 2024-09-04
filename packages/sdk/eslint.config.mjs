import { FlatCompat } from "@eslint/eslintrc";
import js from "@eslint/js";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const compat = new FlatCompat({
  baseDirectory: __dirname,
  recommendedConfig: js.configs.recommended,
  allConfig: js.configs.all,
});

export default [
  ...compat.extends(
    "../config/eslint/index.js",
    "plugin:jsdoc/recommended-typescript"
  ),
  {
    languageOptions: {
      ecmaVersion: 12,
      sourceType: "module",

      parserOptions: {
        project: ["./tsconfig.json"],
      },
    },

    rules: {
      "jsdoc/require-jsdoc": [
        "warn",
        {
          contexts: [
            "ClassDeclaration",
            "ClassProperty",
            "FunctionDeclaration",
            "MethodDefinition",
          ],
        },
      ],

      "jsdoc/require-returns-description": 0,
    },
  },
  {
    files: ["**/*.ts", "**/*.tsx"],

    rules: {
      "@typescript-eslint/no-floating-promises": "warn",
    },
  },
];
