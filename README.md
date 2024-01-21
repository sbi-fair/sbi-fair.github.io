# SBI FAIR

## install hugo

```bash
wget https://github.com/gohugoio/hugo/releases/download/v0.121.2/hugo_extended_0.121.2_linux-amd64.deb
sudo dpkg -i hugo_extended_0.121.2_linux-amd64.deb
```


## node


```bash
sudo apt install nodejs
nvm install --lts
npm install --save-dev autoprefixer
npm install --save-dev postcss-cli
npm install -D postcss
```

## Run locally

Create local repo

```bash
git clone --depth 1 git@github.com:sbi-fair/sbi-fair.github.io.git
npm install
hugo server
```

## Running a container locally

You can run docsy-example inside a [Docker](https://docs.docker.com/)
container, the container runs with a volume bound to the `docsy-example`
folder. This approach doesn't require you to install any dependencies other
than [Docker Desktop](https://www.docker.com/products/docker-desktop) on
Windows and Mac, and [Docker Compose](https://docs.docker.com/compose/install/)
on Linux.

1. Build the docker image

   ```bash
   docker-compose build
   ```

1. Run the built image

   ```bash
   docker-compose up
   ```

   > NOTE: You can run both commands at once with `docker-compose up --build`.

1. Verify that the service is working.

   Open your web browser and type `http://localhost:1313` in your navigation bar,
   This opens a local instance of the docsy-example homepage. You can now make
   changes to the docsy example and those changes will immediately show up in your
   browser after you save.

### Cleanup

To stop Docker Compose, on your terminal window, press **Ctrl + C**.

To remove the produced images run:

```bash
docker-compose rm
```
For more information see the [Docker Compose documentation][].

## Using a local Docsy clone

Make sure your installed go version is `1.18` or higher.

Clone the latest version of the docsy theme into the parent folder of your project. The newly created repo should now reside in a sibling folder of your site's root folder.

```shell
cd root-of-your-site
git clone --branch v0.7.2 https://github.com/google/docsy.git ../docsy
```

Now run:

```shell
HUGO_MODULE_WORKSPACE=docsy.work hugo server --ignoreVendorPaths "**"
```

or, when using npm, prepend `local` to the script you want to invoke, e.g.:

```shell
npm run local serve
```

By using the `HUGO_MODULE_WORKSPACE` directive (either directly or via prefix `local` when using npm), the server now watches all files and directories inside the sibling directory `../docsy` , too. Any changes inside the local `docsy` theme clone are  now immediately picked up (hot reload), you can instantly see the effect of your local edits.

In the command above, we used the environment variable `HUGO_MODULE_WORKSPACE` to tell hugo about the local workspace file `docsy.work`. Alternatively, you can declare the workspace file inside your settings file `hugo.toml`:

```toml
[module]
  workspace = "docsy.work"
```

Your project's `hugo.toml` file already contains these lines, the directive for workspace assignment is commented out, however. Remove the two trailing comment characters '//' so that this line takes effect.

## Troubleshooting

As you run the website locally, you may run into the following error:

```console
$ hugo server
WARN 2023/06/27 16:59:06 Module "project" is not compatible with this Hugo version; run "hugo mod graph" for more information.
Start building sites …
hugo v0.101.0-466fa43c16709b4483689930a4f9ac8add5c9f66+extended windows/amd64 BuildDate=2022-06-16T07:09:16Z VendorInfo=gohugoio
Error: Error building site: "C:\Users\foo\path\to\docsy-example\content\en\_index.md:5:1": failed to extract shortcode: template for shortcode "blocks/cover" not found
Built in 27 ms
```

This error occurs if you are running an outdated version of Hugo. As of docsy theme version `v0.7.0`, hugo version `0.110.0` or higher is required.
See this [section](https://www.docsy.dev/docs/get-started/docsy-as-module/installation-prerequisites/#install-hugo) of the user guide for instructions on how to install Hugo.

Or you may be confronted with the following error:

```console
$ hugo server

INFO 2021/01/21 21:07:55 Using config file:
Building sites … INFO 2021/01/21 21:07:55 syncing static files to /
Built in 288 ms
Error: Error building site: TOCSS: failed to transform "scss/main.scss" (text/x-scss): resource "scss/scss/main.scss_9fadf33d895a46083cdd64396b57ef68" not found in file cache
```

This error occurs if you have not installed the extended version of Hugo.
See this [section](https://www.docsy.dev/docs/get-started/docsy-as-module/installation-prerequisites/#install-hugo) of the user guide for instructions on how to install Hugo.

Or you may encounter the following error:

```console
$ hugo server

Error: failed to download modules: binary with name "go" not found
```

This error occurs if you have not installed the `go` programming language on your system.
See this [section](https://www.docsy.dev/docs/get-started/docsy-as-module/installation-prerequisites/#install-go-language) of the user guide for instructions on how to install `go`.


[alternate dashboard]: https://app.netlify.com/sites/goldydocs/deploys
[deploys]: https://app.netlify.com/sites/docsy-example/deploys
[Docsy user guide]: https://docsy.dev/docs
[Docsy]: https://github.com/google/docsy
[example.docsy.dev]: https://example.docsy.dev
[Hugo theme module]: https://gohugo.io/hugo-modules/use-modules/#use-a-module-for-a-theme
[Netlify]: https://netlify.com
[Docker Compose documentation]: https://docs.docker.com/compose/gettingstarted/
