# eSiLa website

Website hosted at https://esila.bayern
Original code taken and modified from Hamish Williams: https://github.com/HamishMW/portfolio

## Build & run

We modified the original repository in order to allow a static site build.
In essence this means the build process results in a .html file that can be hosted using any webserver.

```bash
npm install
npm run build
cd build/client
python -m http.server
```
