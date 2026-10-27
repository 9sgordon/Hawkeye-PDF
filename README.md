<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="assets/brand/hawkeye-wordmark-white.svg">
    <img alt="Hawkeye" src="assets/brand/hawkeye-wordmark.svg" width="320">
  </picture>
</p>

# Hawkeye PDF

A free PDF reader and editor for Windows. Open, read, search, organize, combine, split, fill in
and sign PDFs. It works offline: your documents never leave your computer, and there is no
account and no telemetry.

## Download (Windows)

**[Download Hawkeye PDF](https://github.com/9sgordon/Hawkeye-PDF/releases/latest/download/HawkeyePDF-Setup.msi)**
(installer, needs an admin password)

No admin rights? Use the
**[portable version](https://github.com/9sgordon/Hawkeye-PDF/releases/latest/download/HawkeyePDF-Portable.zip)**
instead: right-click the zip, choose **Extract All**, and run `HawkeyePDF.exe`.

### Installing

1. Double-click **HawkeyePDF-Setup.msi**.
2. If Windows says **"Windows protected your PC"**, click **More info**, then **Run anyway**.
3. When asked **"Do you want to allow this app to make changes?"**, click **Yes**.
4. Click through the installer. Hawkeye PDF appears in the Start menu and on the desktop, and
   "Edit with Hawkeye PDF" appears when you right-click a PDF.

Windows shows those warnings because the installer isn't code-signed. If your PC blocks it with
no **Run anyway** option ("Smart App Control"), ask Shane.

To make Hawkeye PDF open PDFs when you double-click them: right-click any PDF, choose
**Open with** ▸ **Choose another app**, pick **Hawkeye PDF**, and click **Always**.

## New versions

Help ▸ Check for updates opens the [releases page](https://github.com/9sgordon/Hawkeye-PDF/releases).
Installing a newer `HawkeyePDF-Setup.msi` upgrades the one you have.

## Building a new release (maintainer)

The `hawkeye` branch holds the rebrand. To build:

1. Pull in the latest PdfCraft changes if you want them: merge `storytold/pdfcraft` `main` into `hawkeye`.
2. Push a tag starting with `v` to the `hawkeye` branch, or run **Build Hawkeye PDF for Windows**
   from the **Actions** tab. GitHub builds the installer and publishes a release; the download links above
   always point to the newest one.

## Credits and licence

Hawkeye PDF is a rebranded build of [PdfCraft](https://github.com/storytold/pdfcraft), the
open-source PDF application by the ArtCraft Team and the PdfCraft contributors. It is not made,
endorsed or supported by the ArtCraft Team. The source code is licensed under
[MIT](LICENSE-MIT) or [Apache-2.0](LICENSE-APACHE), at your option; see [NOTICE](NOTICE) and
[ATTRIBUTION.md](ATTRIBUTION.md).

The Hawkeye name, logo and app icon belong to Shane Gordon and are not covered by those
licences; see [assets/brand/LICENSE-brand.txt](assets/brand/LICENSE-brand.txt).
