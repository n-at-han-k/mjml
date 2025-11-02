# @n-at-han-k/mjml-browser-esm

MJML browser ESM bundle - the only framework that makes responsive-email easy.

## What is this?

This package contains a bundled ESM (ECMAScript Module) version of MJML for use in browser environments. It's a pre-built, ready-to-use bundle that can be directly imported into modern JavaScript projects.

## Installation

```bash
npm install @n-at-han-k/mjml-browser-esm
```

or

```bash
yarn add @n-at-han-k/mjml-browser-esm
```

## Usage

### ESM Import

```javascript
import mjml from '@n-at-han-k/mjml-browser-esm';

const mjmlCode = `
  <mjml>
    <mj-body>
      <mj-section>
        <mj-column>
          <mj-text>Hello World!</mj-text>
        </mj-column>
      </mj-section>
    </mj-body>
  </mjml>
`;

const result = mjml(mjmlCode);
console.log(result.html);
```

### In the Browser (via script tag)

You can also use it directly in the browser with a module script:

```html
<script type="module">
  import mjml from './node_modules/@n-at-han-k/mjml-browser-esm/mjml-browser.esm.js';

  const mjmlCode = `...`;
  const result = mjml(mjmlCode);
  document.body.innerHTML = result.html;
</script>
```

## Features

- ✅ Pre-bundled and ready to use
- ✅ ESM module format
- ✅ Browser-compatible
- ✅ No build step required
- ✅ All MJML components included

## About MJML

MJML is a markup language designed to reduce the pain of coding responsive emails. Its semantic syntax makes it easy and straightforward, while its rich standard components library fastens your development time and lightens your email codebase.

## Links

- [MJML Website](https://mjml.io)
- [MJML Documentation](https://documentation.mjml.io)
- [MJML GitHub](https://github.com/mjmlio/mjml)

## License

MIT
