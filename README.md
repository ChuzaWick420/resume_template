# Resume Template (ATS Friendly)
This resume template is inspired by [basic resume](https://typst.app/universe/package/basic-resume)[^1]. In the original inspiration, the lengthy links (especially `LinkedIn` one) were breaking into multiple lines which has potential to confuse ATS systems. My implementation creates $n \times 2$ columns for the contacts instead of line breaking them. Rest of the implementation is visually similar.

## Pre-requisites

- Install `typst 0.14.2+`.

## How to use

Open [`data.json`](https://github.com/ChuzaWick420/resume_template/) and put in your data. Then run the following command:

```
typst compile ./src/main.typ pdf/example_Resume.pdf
```

## Acknowledgement
[^1]: https://typst.app/universe/package/basic-resume
