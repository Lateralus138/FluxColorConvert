# Flux Color Convert <img src="./docs/media/logo/FluxColorConvert.png" width="28" alt="Box Unicode Characters Logo" style="vertical-align: middle;">

![Readme Card](https://github-readme-stats.vercel.app/api/pin/?username=Lateralus138&repo=FluxColorConvert)

<!-- ---
---

***This project is*** ![Under Construction](https://img.shields.io/static/v1?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAYAAAAfSC3RAAACmElEQVQokUWSa0iTcRTGn//26u4b6ZQ0U8lKMqykwPpgZVBEHyLp8jEoIZJADCQ0iCiStIwuZmHRioIuroQss2VkrkIrdeFckiZqdhctTXPOve8Tr7M6X8/zO+fwPEfIwy7IwQA0GgExGYQwyhCmMLRX1z2hJCJSN+xZgqAZnPgCaAUQ0EHICjSYLlKBCDdNQb7HLmeRoy3zQFnzYk/1WTckGUIXCVD+Kw+BpAxtuBXCpkN7bdXt/JL3W3J3xuHg3iTsL/NkNFWVPoWkQOj/wxooCrRhFgiTjI4n9ZVHHQObjxVEY8UGIi1zEhVFCahwdq5qvn+hHkKC0EcBigxwvAnkW3ge7L6TMi+VztOLOOKOY8ulKL68GM2emnjeLF3AZSlz2FCZ6yaHwLGv6pkv8MyxsUoHLcsLwBuHwE0rtdy2UuLWNTpmpkkszQEfnAPDAd47tbaB7NaJR+eXujfmtGTUXgFWp5uwPd8Oi1GBJEmwWYlP34L4PSFw7chPeD+MYnkWUVmy0CeNfe5N8ANIjNWpNmHzqklYrDIGRwRm2gXsM/xofRMOf1AgcbYOAfgxMvgxCmS9+dbh5A6VarxuIMdBDoJ0g+vSreytNpAEux7qqWrK82I+kC2xYOAzyFbz5QNJPrXhdRo4XK/n3WILkxPsbKqwsr8xBB3PjukhGyJJv+qqB+QvkN0mR2Fim5pU1hobzxTYOPbcyJoTNpoAlu6wdZKvIslR0O9VXe0Clc5p2Ge4WDh36ux3ThM/1RqnNhXvilU32cjvINtAf4cKdkzlSHpBTqgNY11JfLtFA+o14NU8Wx/piggNfg2yGVR8EF9/dP37PyCIoDQLs8z9hmv71nsC4wFz9klX2tD4/AEG+gBoQ7KghD8MZ2xdnt7s7wAAAABJRU5ErkJggg==&label=Under&message=Construction&style=for-the-badge&labelColor=1D1D1D&color=ffff99)

Coming Soon!

---

This is complete, but not officially released and may be deleted and re-uploaded again before release.

The gui for this is written in `AutoHotkey` with my custom [_Gui class library](https://github.com/Lateralus138/AutoHotkey-Gui-Class), but the main functions for color conversion are from my custom [AutoHotkey DLL function library](https://github.com/Lateralus138/AutoHotkeyFluxDLL) written in C++.

--- -->

- [Flux Color Convert ](#flux-color-convert-)
  - [About](#about)
    - [Description](#description)
    - [Motivation](#motivation)
  - [Support Me If You Like](#support-me-if-you-like)
  - [Usage](#usage)
    - [Environment](#environment)
    - [How To Use](#how-to-use)
      - [Install](#install)
      - [Portable](#portable)
    - [Examples](#examples)
  - [Project Information](#project-information)
    - [Source File Quality](#source-file-quality)
    - [File MD5 Hashes](#file-md5-hashes)
    - [Current Windows X64 Installer MD5](#current-windows-x64-installer-md5)
    - [Other Miscellaneous File Information](#other-miscellaneous-file-information)
  - [Media](#media)
  - [Notes](#notes)
    - [Note 1](#note-1)
  - [LICENSE](#license)


---

## About

### Description

&#x47;&#x75;&#x69;&#x20;&#x74;&#x6f;&#x20;&#x63;&#x6f;&#x6e;&#x76;&#x65;&#x72;&#x74;&#x20;&#x68;&#x65;&#x78;&#x61;&#x64;&#x65;&#x63;&#x69;&#x6d;&#x61;&#x6c;&#x20;&#x63;&#x6f;&#x6c;&#x6f;&#x72;&#x73;&#x20;&#x74;&#x6f;&#x20;&#x64;&#x65;&#x63;&#x69;&#x6d;&#x61;&#x6c;&#x20;&#x52;&#x47;&#x42;&#x20;&#x66;&#x6f;&#x72;&#x6d;&#x61;&#x74;&#x20;&#x61;&#x6e;&#x64;&#x20;&#x76;&#x69;&#x63;&#x65;&#x20;&#x76;&#x65;&#x72;&#x73;&#x61;&#x20;&#x77;&#x69;&#x74;&#x68;&#x20;&#x61;&#x20;&#x66;&#x65;&#x77;&#x20;&#x6f;&#x70;&#x74;&#x69;&#x6f;&#x6e;&#x73;&#x20;&#x66;&#x6f;&#x72;&#x20;&#x74;&#x68;&#x65;&#x20;&#x6f;&#x75;&#x74;&#x70;&#x75;&#x74;&#x73;&#x20;&#x66;&#x6f;&#x72;&#x6d;&#x61;&#x74;&#x20;&lpar;&#x70;&#x72;&#x65;&#x70;&#x65;&#x6e;&#x64;&#x20;&apos;&#x30;&#x78;&apos;&comma;&#x20;&apos;&num;&apos;&comma;&#x20;&#x6f;&#x72;&#x20;&#x6e;&#x6f;&#x74;&#x68;&#x69;&#x6e;&#x67;&#x20;&#x74;&#x6f;&#x20;&#x74;&#x68;&#x65;&#x20;&#x68;&#x65;&#x78;&#x61;&#x64;&#x65;&#x63;&#x69;&#x6d;&#x61;&#x6c;&#x20;&#x6f;&#x75;&#x74;&#x70;&#x75;&#x74;&#x20;&#x61;&#x6e;&#x64;&#x20;&#x74;&#x68;&#x65;&#x20;&#x6f;&#x70;&#x74;&#x69;&#x6f;&#x6e;&#x20;&#x74;&#x6f;&#x20;&#x61;&#x75;&#x74;&#x6f;&#x6d;&#x61;&#x74;&#x69;&#x63;&#x61;&#x6c;&#x6c;&#x79;&#x20;&#x63;&#x6f;&#x70;&#x79;&#x20;&#x74;&#x68;&#x65;&#x20;&#x6f;&#x75;&#x74;&#x70;&#x75;&#x74;&#x20;&#x74;&#x6f;&#x20;&#x74;&#x68;&#x65;&#x20;&#x63;&#x6c;&#x69;&#x70;&#x62;&#x6f;&#x61;&#x72;&#x64;&rpar;&period;

&#x54;&#x68;&#x69;&#x73;&#x20;&#x69;&#x73;&#x20;&#x61;&#x20;&#x68;&#x79;&#x62;&#x72;&#x69;&#x64;&#x20;&#x70;&#x72;&#x6f;&#x67;&#x72;&#x61;&#x6d;&semi;&#x20;&#x74;&#x68;&#x65;&#x20;**gui**&#x20;&#x69;&#x73;&#x20;&#x77;&#x72;&#x69;&#x74;&#x74;&#x65;&#x6e;&#x20;&#x69;&#x6e;&#x20;***AutoHotkey***<sup>[[1](#note-1)]</sup>&#x20;&#x61;&#x6e;&#x64;&#x20;&#x74;&#x68;&#x65;&#x20;&#x63;&#x6f;&#x6e;&#x76;&#x65;&#x72;&#x73;&#x69;&#x6f;&#x6e;&#x20;**functions**&#x20;&#x61;&#x72;&#x65;&#x20;&#x77;&#x72;&#x69;&#x74;&#x74;&#x65;&#x6e;&#x20;&#x69;&#x6e;&#x20;***C++***&period;

### Motivation

&#x49;&#x20;&#x75;&#x73;&#x65;&#x20;&#x63;&#x6f;&#x6c;&#x6f;&#x72;&#x73;&#x20;&#x69;&#x6e;&#x20;&#x6d;&#x61;&#x6e;&#x79;&#x20;&#x74;&#x68;&#x69;&#x6e;&#x67;&#x73;&#x20;&#x6c;&#x69;&#x6b;&#x65;&#x20;&#x70;&#x72;&#x6f;&#x67;&#x72;&#x61;&#x6d;&#x6d;&#x69;&#x6e;&#x67;&comma;&#x20;&#x77;&#x65;&#x62;&#x20;&#x64;&#x65;&#x73;&#x69;&#x67;&#x6e;&comma;&#x20;&#x67;&#x72;&#x61;&#x70;&#x68;&#x69;&#x63;&#x20;&#x64;&#x65;&#x73;&#x69;&#x67;&#x6e;&comma;&#x20;&#x63;&#x6f;&#x6e;&#x66;&#x69;&#x67;&#x75;&#x72;&#x61;&#x74;&#x69;&#x6f;&#x6e;&#x20;&#x66;&#x69;&#x6c;&#x65;&#x73;&comma;&#x20;&#x61;&#x6e;&#x64;&#x20;&#x6d;&#x6f;&#x72;&#x65;&#x20;&#x73;&#x6f;&#x20;&#x49;&#x20;&#x6f;&#x66;&#x74;&#x65;&#x6e;&#x20;&#x6e;&#x65;&#x65;&#x64;&#x20;&#x74;&#x6f;&#x20;&#x63;&#x6f;&#x6e;&#x76;&#x65;&#x72;&#x74;&#x20;&#x74;&#x68;&#x65;&#x20;&#x76;&#x61;&#x6c;&#x75;&#x65;&#x73;&#x20;&#x66;&#x6f;&#x72;&#x20;&#x74;&#x68;&#x65;&#x20;&#x76;&#x61;&#x72;&#x69;&#x6f;&#x75;&#x73;&#x20;&#x66;&#x6f;&#x72;&#x6d;&#x61;&#x74;&#x73;&period;&#x20;&#x54;&#x68;&#x69;&#x73;&#x20;&#x74;&#x6f;&#x6f;&#x6c;&#x20;&#x68;&#x65;&#x6c;&#x70;&#x73;&#x20;&#x77;&#x69;&#x74;&#x68;&#x20;&#x74;&#x68;&#x61;&#x74;&period;

---

## Support Me If You Like

&#x49;&#x66;&#x20;&#x79;&#x6f;&#x75;&#x20;&#x6c;&#x69;&#x6b;&#x65;&#x20;&#x61;&#x6e;&#x79;&#x20;&#x6f;&#x66;&#x20;&#x74;&#x68;&#x65;&#x20;&#x70;&#x72;&#x6f;&#x6a;&#x65;&#x63;&#x74;&#x73;&#x20;&#x62;&#x65;&#x6c;&#x6f;&#x77;&#x20;&#x61;&#x6e;&#x64;&#x20;&#x63;&#x61;&#x72;&#x65;&#x20;&#x74;&#x6f;&#x20;&#x64;&#x6f;&#x6e;&#x61;&#x74;&#x65;&#x20;&#x74;&#x6f;&#x20;&#x6d;&#x79;&#x20;***PayPal***&#x3a;

[![PayPal Donation](docs/media/misc/paypal_donate_button.png)](https://paypal.me/ianapride?locale.x=en_US)

&#x4f;&#x72;&#x20;***Buy Me A Coffee***&#x20;&#x69;&#x66;&#x20;&#x79;&#x6f;&#x75;&#x72;&#x20;&#x70;&#x72;&#x65;&#x66;&#x65;&#x72;&#x3a;

[![Buy Me A Coffee](./docs/media/misc/buymeacoffe_a.png)](https://www.buymeacoffee.com/ianalanpride)

---

## Usage

### Environment

&#x54;&#x68;&#x69;&#x73;&#x20;&#x69;&#x73;&#x20;&#x61;&#x20;&#x57;&#x69;&#x6e;&#x64;&#x6f;&#x77;&#x73;&#x20;&#x67;&#x75;&#x69;&#x20;&#x74;&#x6f;&#x6f;&#x6c;&#x20;&#x74;&#x68;&#x61;&#x74;&#x20;&#x63;&#x61;&#x6e;&#x20;&#x62;&#x65;&#x20;&#x69;&#x6e;&#x73;&#x74;&#x61;&#x6c;&#x6c;&#x65;&#x64;&#x20;&#x6f;&#x72;&#x20;&#x75;&#x73;&#x65;&#x64;&#x20;&#x70;&#x6f;&#x72;&#x74;&#x61;&#x62;&#x6c;&#x79;&period;

### How To Use

#### Install

&#x41;&#x6e;&#x20;&#x69;&#x6e;&#x73;&#x74;&#x61;&#x6c;&#x6c;&#x65;&#x72;&#x20;&#x69;&#x73;&#x20;&#x70;&#x72;&#x6f;&#x76;&#x69;&#x64;&#x65;&#x64;&#x20;&#x69;&#x6e;&#x20;&#x74;&#x68;&#x65;&#x20;[Releases](https://github.com/Lateralus138/FluxColorConvert/releases)&#x20;&#x73;&#x65;&#x63;&#x74;&#x69;&#x6f;&#x6e;&#x20;&#x74;&#x68;&#x61;&#x74;&#x20;&#x69;&#x6e;&#x73;&#x74;&#x61;&#x6c;&#x6c;&#x73;&#x20;&#x74;&#x68;&#x69;&#x73;&#x20;&#x74;&#x6f;&#x20;*Program Files*&#x20;&#x69;&#x6e;&#x20;&#x74;&#x68;&#x65;&#x20;*Flux Color Convert*&#x20;&#x64;&#x69;&#x72;&#x65;&#x63;&#x74;&#x6f;&#x72;&#x79;&period;&#x20;&#x54;&#x68;&#x65;&#x20;&#x69;&#x6e;&#x73;&#x74;&#x61;&#x6c;&#x6c;&#x65;&#x72;&#x20;&#x70;&#x72;&#x6f;&#x76;&#x69;&#x64;&#x65;&#x73;&#x20;&#x61;&#x20;&#x77;&#x61;&#x79;&#x20;&#x74;&#x6f;&#x20;&#x75;&#x6e;&#x69;&#x6e;&#x73;&#x74;&#x61;&#x6c;&#x6c;&#x20;&#x74;&#x68;&#x65;&#x20;&#x70;&#x72;&#x6f;&#x67;&#x72;&#x61;&#x6d;&#x20;&#x6c;&#x69;&#x6b;&#x65;&#x20;&#x79;&#x6f;&#x75;&#x20;&#x77;&#x6f;&#x75;&#x6c;&#x64;&#x20;&#x61;&#x6e;&#x79;&#x20;&#x6f;&#x74;&#x68;&#x65;&#x72;&#x20;&#x69;&#x6e;&#x73;&#x74;&#x61;&#x6c;&#x6c;&#x61;&#x62;&#x6c;&#x65;&#x20;&#x70;&#x72;&#x6f;&#x67;&#x72;&#x61;&#x6d;&#x20;&#x69;&#x6e;&#x20;&#x57;&#x69;&#x6e;&#x64;&#x6f;&#x77;&#x73;&#x20;&#x61;&#x6e;&#x64;&#x20;&#x69;&#x74;&#x20;&#x61;&#x6c;&#x73;&#x6f;&#x20;&#x63;&#x72;&#x65;&#x61;&#x74;&#x65;&#x73;&#x20;&#x61;&#x20;&#x70;&#x72;&#x6f;&#x67;&#x72;&#x61;&#x6d;&#x20;&#x73;&#x68;&#x6f;&#x72;&#x74;&#x63;&#x75;&#x74;&#x20;&#x66;&#x6f;&#x72;&#x20;&#x79;&#x6f;&#x75;&#x72;&#x20;&#x53;&#x74;&#x61;&#x72;&#x74;&#x20;&#x4d;&#x65;&#x6e;&#x75;&#x20;&#x61;&#x6e;&#x64;&#x20;&#x61;&#x6c;&#x6c;&#x6f;&#x77;&#x73;&#x20;&#x63;&#x72;&#x65;&#x61;&#x74;&#x69;&#x6f;&#x6e;&#x20;&#x6f;&#x66;&#x20;&#x61;&#x20;&#x44;&#x65;&#x73;&#x6b;&#x74;&#x6f;&#x70;&#x20;&#x73;&#x68;&#x6f;&#x72;&#x74;&#x63;&#x75;&#x74;&period;

#### Portable

&#x59;&#x6f;&#x75;&#x20;&#x63;&#x61;&#x6e;&#x20;&#x75;&#x73;&#x65;&#x20;&#x74;&#x68;&#x69;&#x73;&#x20;&#x70;&#x6f;&#x72;&#x74;&#x61;&#x62;&#x6c;&#x79;&#x20;&#x69;&#x66;&#x20;&#x79;&#x6f;&#x75;&#x20;&#x6c;&#x69;&#x6b;&#x65;&comma;&#x20;&#x62;&#x75;&#x74;&#x20;&#x69;&#x74;&#x20;&#x6e;&#x65;&#x67;&#x61;&#x74;&#x65;&#x73;&#x20;&#x74;&#x68;&#x65;&#x20;&#x63;&#x6f;&#x6e;&#x76;&#x65;&#x6e;&#x69;&#x65;&#x6e;&#x63;&#x65;&#x73;&#x20;&#x6f;&#x66;&#x20;&#x74;&#x68;&#x65;&#x20;&#x69;&#x6e;&#x73;&#x74;&#x61;&#x6c;&#x6c;&#x65;&#x72;&period;

&#x54;&#x6f;&#x20;&#x75;&#x73;&#x65;&#x20;&#x70;&#x6f;&#x72;&#x74;&#x61;&#x62;&#x6c;&#x79;&#x20;&#x6a;&#x75;&#x73;&#x74;&#x20;&#x64;&#x6f;&#x77;&#x6e;&#x6c;&#x6f;&#x61;&#x64;&#x20;&#x74;&#x68;&#x65;&#x20;[`FluxColorConvert.exe`](FluxColorConvert.exe)&#x20;&#x65;&#x78;&#x65;&#x63;&#x75;&#x74;&#x61;&#x62;&#x6c;&#x65;&comma;&#x20;&#x74;&#x68;&#x65;&#x20;&#x63;&#x6f;&#x6e;&#x74;&#x65;&#x6e;&#x74;&#x73;&#x20;&#x6f;&#x66;&#x20;[`./lib/`](./lib/)&#x20;&#x64;&#x69;&#x72;&#x65;&#x63;&#x74;&#x6f;&#x72;&#x79;&comma;&#x20;&#x61;&#x6e;&#x64;&#x20;&#x74;&#x68;&#x65;&#x20;&#x63;&#x6f;&#x6e;&#x74;&#x65;&#x6e;&#x74;&#x73;&#x20;&#x6f;&#x66;&#x20;&#x74;&#x68;&#x65;&#x20;[`./resources/`](./resources/)&#x20;&#x64;&#x69;&#x72;&#x65;&#x63;&#x74;&#x6f;&#x72;&#x79;&#x20;&#x66;&#x72;&#x6f;&#x6d;&#x20;&#x74;&#x68;&#x65;&#x20;&#x72;&#x6f;&#x6f;&#x74;&#x20;&#x6f;&#x66;&#x20;&#x74;&#x68;&#x69;&#x73;&#x20;&#x70;&#x72;&#x6f;&#x6a;&#x65;&#x63;&#x74;&#x20;&#x61;&#x6e;&#x64;&#x20;&#x70;&#x6c;&#x61;&#x63;&#x65;&#x20;&#x74;&#x68;&#x65;&#x20;&#x65;&#x78;&#x65;&#x63;&#x75;&#x74;&#x61;&#x62;&#x6c;&#x65;&#x20;&#x61;&#x6e;&#x79;&#x77;&#x68;&#x65;&#x72;&#x65;&#x20;&#x79;&#x6f;&#x75;&#x20;&#x6c;&#x69;&#x6b;&#x65;&#x20;&#x61;&#x6e;&#x64;&#x20;&#x63;&#x72;&#x65;&#x61;&#x74;&#x65;&#x20;&#x74;&#x68;&#x65;&#x20;`lib`&#x20;&#x61;&#x6e;&#x64;&#x20;`directories`&#x20;&#x69;&#x6e;&#x20;&#x74;&#x68;&#x65;&#x20;&#x73;&#x61;&#x6d;&#x65;&#x20;&#x64;&#x69;&#x72;&#x65;&#x63;&#x74;&#x6f;&#x72;&#x79;&#x20;&#x61;&#x6e;&#x64;&#x20;&#x70;&#x6c;&#x61;&#x63;&#x65;&#x20;&#x74;&#x68;&#x65;&#x20;&#x65;&#x78;&#x74;&#x72;&#x61;&#x20;&#x66;&#x69;&#x6c;&#x65;&#x73;&#x20;&#x69;&#x6e;&#x20;&#x74;&#x68;&#x65;&#x69;&#x72;&#x20;&#x63;&#x6f;&#x72;&#x72;&#x65;&#x73;&#x70;&#x6f;&#x6e;&#x64;&#x69;&#x6e;&#x67;&#x20;&#x64;&#x69;&#x72;&#x65;&#x63;&#x74;&#x6f;&#x72;&#x69;&#x65;&#x73;&period;

&#x49;&#x66;&#x20;&#x79;&#x6f;&#x75;&#x20;&#x75;&#x73;&#x65;&#x20;&#x67;&#x69;&#x74;&#x20;&#x79;&#x6f;&#x75;&#x20;&#x63;&#x61;&#x6e;&#x20;&#x61;&#x6c;&#x73;&#x6f;&#x20;&#x6a;&#x75;&#x73;&#x74;&#x20;&#x63;&#x6c;&#x6f;&#x6e;&#x65;&#x20;&#x74;&#x68;&#x69;&#x73;&#x20;&#x72;&#x65;&#x70;&#x6f;&#x73;&#x69;&#x74;&#x6f;&#x72;&#x79;&#x20;&#x61;&#x6e;&#x64;&#x20;&#x75;&#x73;&#x65;&#x20;&#x66;&#x72;&#x6f;&#x6d;&#x20;&#x74;&#x68;&#x65;&#x72;&#x65;&#x20;&#x6f;&#x72;&#x20;&#x64;&#x6f;&#x77;&#x6e;&#x6c;&#x6f;&#x61;&#x64;&#x20;&#x74;&#x68;&#x65;&#x20;&#x61;&#x66;&#x6f;&#x72;&#x65;&#x20;&#x6d;&#x65;&#x6e;&#x74;&#x69;&#x6f;&#x6e;&#x65;&#x64;&#x20;&#x66;&#x69;&#x6c;&#x65;&#x73;&#x20;&#x61;&#x6e;&#x64;&#x20;&#x64;&#x69;&#x72;&#x65;&#x63;&#x74;&#x6f;&#x72;&#x69;&#x65;&#x73;&#x20;&#x74;&#x6f;&#x20;&#x77;&#x68;&#x65;&#x72;&#x65;&#x76;&#x65;&#x72;&#x20;&#x79;&#x6f;&#x75;&#x20;&#x6c;&#x69;&#x6b;&#x65;&period;

&#x54;&#x6f;&#x20;&#x63;&#x6c;&#x6f;&#x6e;&#x65;&colon;

```
git clone "https://github.com/Lateralus138/FluxColorConvert.git"
```

### Examples

Convert the the RGB value `255 127 255` to its correspoding hexadecimal value `0xFF7FFF` prepending with *0x* for use in lower level programming and in uppercase rather than the default lower case:

![Preview](docs/media/screenshots/Screenshot%202023-06-06%20230851.png)

---

## Project Information

&#x54;&#x68;&#x69;&#x73;&#x20;&#x70;&#x72;&#x6f;&#x6a;&#x65;&#x63;&#x74;&#x20;&#x69;&#x73;&#x20;&#x77;&#x72;&#x69;&#x74;&#x74;&#x65;&#x6e;&#x20;&#x69;&#x6e;&#x20;[`AutoHotkey`](https://www.autohotkey.com/) and [`C++`](https://isocpp.org/).

[![AutoHotkey](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/Lateralus138/FluxColorConvert/master/docs/json/autohotkey.json&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAEvklEQVRIiW2Uz2tcVRTHP%2FPmzY%2FMJE1EJG1SWmrroo3FVIogpS7sRuyii24q0p0FcWv%2FAqHFhVARatCCqy6kFRGlLgJq7aIUQSFpJIkhQdu00zTNTObXy7z7U%2B59eZlJ2%2Fs43Pfevfd7zvme7z0Zay1u3PjuxtE7j%2B6818q3dlbr1c7Sf0uy8rhilFa4PQazNRtrsFg%2Fp%2B82sBljTTaeixfif%2BIrwLrDzVhluTxx%2BYOb4uZXY2%2BPBcUXi9yL7lHNVDEFg0ajrErMKKSVfnbf0sjk2yb%2FdaCJ2zGN7xuPmp82T1nsH%2BH1b68fn4wnr5z7%2BBwDtQGWG8vURZ3V1ioN1fCHtdUe1M%2Bps02HvesuW13UFD8q7lRK3Yw%2Bi%2FZky0fKl8bfHz84Eo8gpWSls0Jlo8JsY5YH8QP6c%2F0YbbYi1UZ7qjb0BoutRQggH%2BSROllXUiGqAvuazalflAybYbM%2FO5hlcWWR2MQsbywz15zj4OBBBjOD3KrdIpfNdSO1yu%2FrmA5nRs8wtT7FQ%2FWQrMkmDlDIlkQNKOyr9nCwVltr34%2FuM9OY4W79LvONeR7Hj7l45CKXjl5iz%2BoeKrLSpcEqFpuLnHjpBFffvMr5wnmq%2F1aROZnUSylkLFEdBXlE%2BGT9ialTpxbVPA01WaOcLdOX7fPqGhJDtFWbHbkdHlwYgTGG06On%2FXpciaEOKlToSHtwLTTEbhETCimsQNCxna0I3XAKwUJLt%2Fx3WlhHTy7MMVIa8f8X6gtQBB0n4EoocBASMBA4Dbv0nTmNOxBXxGyQBQ1CiiT1Hmm6dfe4EWUjyIGMNsHlJrhIHITuorhDTh2p9HJBjjAT%2Bg1OWZGJqOka62Id3dHQwdPpKRKxB9sGnmagIXSRpOm7LJyzYlCkQMHzOPNoBrFLUCqWODB0gOHCMHtLe9nfv987aEdtD7QFnjp4OoMtB1Z6qpyuc%2FkcF05dYPTlUcb6xxguDrNtCGiYBmQ2AXujF5sZpLynGk%2FpimREuVTm7Btnt4OuwtqTNfK78gzkBoiiyBd5G7jsFjlMaentNW6UwpKf56bnuP3nbaYfTrPQWWCeeSrNCpMfTnJs7zHEhoDwKeDeIvsamG5fiXXsi1wOy17fJ78%2ByVJ5CYaA3c5zkojMS2jhFfVM5KqXItvtM85cj3G9xY8mRLsjOA599T5kU6KayhffR150wYdd%2Fp%2BmKS1yb3d0F6mYLSYaFxFCC6iBrPfoXIHoCP%2BeD%2FPPRt9T5MArxnQzcBuKmcRBabBEu9XernPlWwD9QT%2B8AIVMATY2%2F6vn1CClyCnHFbyv0MdUY4qp2Snmf573GbmNWwd1YtdmrmF%2Ft34fh9hOU2rWFTm0oW%2ByJmm1rv%2Bv6BXGfxqHe8Dr%2BGJvoyCEiekJJv6egNHkm%2Bi5FBVDLXTedUJ3sUyQ0FWQBaJ9EbwCVHmWAnfYNdtjm8DrdG%2Bz6tJIjVYQ%2FRr90LnfwY5YpJLehBBegu5Sub7jD%2Ffym8qwRrKvF9wBOymvABW%2ByZq2%2BUvOy8Phu%2BEhNayQGYkquEqDa0d%2BdqpNLdczO2qcZXvM7XcZ%2FcYXbPCl6yJ%2BBPuCT4J3grdUW2mk6%2BHdgnpzhX7ee%2B8%2FSwZNhll%2BpMPnAP8D2IjRlq4cdOYAAAAASUVORK5CYII%3D)](http://www.cplusplus.org/)

[![C++](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/Lateralus138/FluxColorConvert/master/docs/json/cpp.json&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAABGdBTUEAALGPC%2FxhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAABcVBMVEUAAAAAgM0Af8wolNQAa7YAbbkAQIcAQIYAVJ0AgM0AgM0AgM0AgM0AgM0AgM0AgM0AgM0AgM0AgM0Af8wAfswAfswAf8wAgM0AgM0AgM0Af80AgM0AgM0AgM0AgM0Af8wAgM0Af80djtIIg84Af8wAfsxYrN4Fg84Gg85RqNwej9MLhM8LhM8AfcsAgM0Hg88AfsshkNNTqd1%2Fv%2BUXi9AHdsAAYKoAY64ih8kAf81YkcEFV54GV55Sj8EnlNULhc8AecYdebwKcrsAe8gAb7oAXacAXqgAcLwAImUAUpoAVJ0AUpwAUZoAIWMAVJ0AVJ0AUpwAUZwAVJ0AVJ0AVJ0AVJ0AgM0cjtJqteGczetqtOEAf807ndjL5fT9%2Fv7%2F%2F%2F%2FM5fQ9ntnu9vu12vCi0Oz%2F%2F%2F6Hw%2Bebzeufz%2Bx%2Bv%2BW12e%2Bgz%2BxqteLu9fmRx%2BjL3Ovu8%2Fi1zeKrzeUAUpw7e7M8fLQAU50cZ6hqm8WcvNgAVJ3xWY3ZAAAAVnRSTlMAAAAAAAAAAAAREApTvrxRCQQ9rfX0qwErleyUKjncOFv%2B%2Fv5b%2Ff7%2B%2Fv7%2B%2Fv1b%2Ff7%2B%2Fv7%2BW%2F7%2B%2Fv79%2Fv7%2B%2Fv7%2B%2Fv7%2B%2Fjfa2jcBKJHqKAEEO6r0CVC8EFaOox4AAAABYktHRF9z0VEtAAAACXBIWXMAAA7DAAAOwwHHb6hkAAAAB3RJTUUH5QYKDQws%2FBWF6QAAAONJREFUGNNjYAABRkZOLkZGBhhgZOTm4eXjF4AJMQoKCYuEhYmKCQmCRBjFJSSlwiMiI6PCpaRlxBkZGGXlomNi4%2BLj4xISo%2BXkgQIKikqx8UnJyUnxKcqKKiAB1ajUJDV1Dc00LW0dXSaggF56fLK%2BgYFhhlGmsQkzRCDL1MzcIhsmYJkTn2tlbWObZ2cP0sKk4OCYH19QWFgQX%2BTkrMLEwOLiWlySD7I2v7TMzZ2Vgc3D08u7vKKysqLc28vHlx3oVg4%2F%2F4DAqqrAAH8%2FDohnODiCgkNCgoM4OOD%2B5eAIDYVyAZ9mMF8DmkLwAAAAJXRFWHRkYXRlOmNyZWF0ZQAyMDIxLTA2LTEwVDE4OjEyOjQ0LTA1OjAwkjvGQgAAACV0RVh0ZGF0ZTptb2RpZnkAMjAyMS0wNi0xMFQxODoxMjo0NC0wNTowMONmfv4AAAAASUVORK5CYII%3D)](http://www.cplusplus.org/)

### Source File Quality

&#x54;&#x68;&#x69;&#x73;&#x20;&#x69;&#x73;&#x20;&#x67;&#x72;&#x61;&#x64;&#x65;&#x64;&#x20;&#x62;&#x79;&#x20;&#x43;&#x6f;&#x64;&#x65;&#x46;&#x61;&#x63;&#x74;&#x6f;&#x72;&#x20;&#x61;&#x6e;&#x64;&#x20;&#x69;&#x73;&#x20;&#x73;&#x75;&#x62;&#x6a;&#x65;&#x63;&#x74;&#x69;&#x76;&#x65;&#x2c;&#x20;&#x62;&#x75;&#x74;&#x20;&#x68;&#x65;&#x6c;&#x70;&#x73;&#x20;&#x6d;&#x65;&#x20;&#x74;&#x6f;&#x20;&#x72;&#x65;&#x66;&#x61;&#x63;&#x74;&#x6f;&#x72;&#x20;&#x6d;&#x79;&#x20;&#x77;&#x6f;&#x72;&#x6b;&#x2e;

|Name|Status|
|:---:|:---:|
|[codefactor.io](https://www.codefactor.io/repository/github/lateralus138/FluxColorConvert)|![](https://img.shields.io/codefactor/grade/github/Lateralus138/FluxColorConvert/master?style=for-the-badge&labelColor=1D1D1D&color=ffff99)|

### File MD5 Hashes

&#x41;&#x6c;&#x6c;&#x20;&#x68;&#x61;&#x73;&#x68;&#x65;&#x73;&#x20;&#x61;&#x72;&#x65;&#x20;&#x72;&#x65;&#x74;&#x72;&#x69;&#x65;&#x76;&#x65;&#x64;&#x20;&#x61;&#x74;&#x20;&#x63;&#x6f;&#x6d;&#x70;&#x69;&#x6c;&#x65;&#x2f;&#x62;&#x75;&#x69;&#x6c;&#x64;&#x20;&#x74;&#x69;&#x6d;&#x65;&#x2e;

### Current Windows X64 Installer MD5

![WINDOWS X64 MD5](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/Lateralus138/FluxColorConvert/master/docs/json/FluxColorConvert_x64_Installer_md5.json)

### Other Miscellaneous File Information

|Description|Status|
|:---:|:---:|
|Project Release Date|![GitHub Release Date](https://img.shields.io/github/release-date/Lateralus138/FluxColorConvert?style=for-the-badge&labelColor=1D1D1D&color=ffff99)|
|Total downloads for this project|![GitHub all releases](https://img.shields.io/github/downloads/Lateralus138/FluxColorConvert/total?style=for-the-badge&labelColor=1D1D1D&color=ffff99)|
|Complete repository size|![This Repo Size](https://img.shields.io/github/repo-size/Lateralus138/FluxColorConvert?style=for-the-badge&labelColor=1D1D1D&color=ffff99)|
|Commits in last month|![GitHub commit activity](https://img.shields.io/github/commit-activity/m/Lateralus138/FluxColorConvert?style=for-the-badge&labelColor=1D1D1D&color=ffff99)|
|Commits in last year|![GitHub commit activity](https://img.shields.io/github/commit-activity/y/Lateralus138/FluxColorConvert?style=for-the-badge&labelColor=1D1D1D&color=ffff99)|

---

## Media

Program's icon (made by me):

![LOGO](docs/media/logo/FluxColorConvert.png)

---

## Notes

Any web queries are done at DuckDuckGo.

### Note 1

Web query for "AutoHotkey"

[AutoHoey search @ DDG](https://duckduckgo.com/?q=Autohotkey&ia=web)

---

## [LICENSE](./LICENSE)

![License Info](https://img.shields.io/github/license/Lateralus138/unishellectv2?style=for-the-badge&labelColor=1D1D1D&color=ffff99)

<details>
  <summary>&#x4C;&#x69;&#x63;&#x65;&#x6E;&#x73;&#x65;&#x20;&#x45;&#x78;&#x63;&#x65;&#x72;&#x70;&#x74;</summary>
  <br>
  <blockquote>
  &#x20;&#x54;&#x68;&#x69;&#x73;&#x20;&#x70;&#x72;&#x6F;&#x67;&#x72;&#x61;&#x6D;&#x20;&#x69;&#x73;&#x20;&#x66;&#x72;&#x65;&#x65;&#x20;&#x73;&#x6F;&#x66;&#x74;&#x77;&#x61;&#x72;&#x65;&colon;&#x20;&#x79;&#x6F;&#x75;&#x20;&#x63;&#x61;&#x6E;&#x20;&#x72;&#x65;&#x64;&#x69;&#x73;&#x74;&#x72;&#x69;&#x62;&#x75;&#x74;&#x65;&#x20;&#x69;&#x74;&#x20;&#x61;&#x6E;&#x64;&sol;&#x6F;&#x72;&#x20;&#x6D;&#x6F;&#x64;&#x69;&#x66;&#x79;&#x20;&#x69;&#x74;&#x20;&#x75;&#x6E;&#x64;&#x65;&#x72;&#x20;&#x74;&#x68;&#x65;&#x20;&#x74;&#x65;&#x72;&#x6D;&#x73;&#x20;&#x6F;&#x66;&#x20;&#x74;&#x68;&#x65;&#x20;&#x47;&#x4E;&#x55;&#x20;&#x47;&#x65;&#x6E;&#x65;&#x72;&#x61;&#x6C;&#x20;&#x50;&#x75;&#x62;&#x6C;&#x69;&#x63;&#x20;&#x4C;&#x69;&#x63;&#x65;&#x6E;&#x73;&#x65;&#x20;&#x61;&#x73;&#x20;&#x70;&#x75;&#x62;&#x6C;&#x69;&#x73;&#x68;&#x65;&#x64;&#x20;&#x62;&#x79;&#x20;&#x74;&#x68;&#x65;&#x20;&#x46;&#x72;&#x65;&#x65;&#x20;&#x53;&#x6F;&#x66;&#x74;&#x77;&#x61;&#x72;&#x65;&#x20;&#x46;&#x6F;&#x75;&#x6E;&#x64;&#x61;&#x74;&#x69;&#x6F;&#x6E;&comma;&#x20;&#x65;&#x69;&#x74;&#x68;&#x65;&#x72;&#x20;&#x76;&#x65;&#x72;&#x73;&#x69;&#x6F;&#x6E;&#x20;&#x33;&#x20;&#x6F;&#x66;&#x20;&#x74;&#x68;&#x65;&#x20;&#x4C;&#x69;&#x63;&#x65;&#x6E;&#x73;&#x65;&comma;&#x20;&#x6F;&#x72;&#x20;&lpar;&#x61;&#x74;&#x20;&#x79;&#x6F;&#x75;&#x72;&#x20;&#x6F;&#x70;&#x74;&#x69;&#x6F;&#x6E;&rpar;&#x20;&#x61;&#x6E;&#x79;&#x20;&#x6C;&#x61;&#x74;&#x65;&#x72;&#x20;&#x76;&#x65;&#x72;&#x73;&#x69;&#x6F;&#x6E;&period;
  </blockquote>
  <br>
  <blockquote>
  &#x54;&#x68;&#x69;&#x73;&#x20;&#x70;&#x72;&#x6F;&#x67;&#x72;&#x61;&#x6D;&#x20;&#x69;&#x73;&#x20;&#x64;&#x69;&#x73;&#x74;&#x72;&#x69;&#x62;&#x75;&#x74;&#x65;&#x64;&#x20;&#x69;&#x6E;&#x20;&#x74;&#x68;&#x65;&#x20;&#x68;&#x6F;&#x70;&#x65;&#x20;&#x74;&#x68;&#x61;&#x74;&#x20;&#x69;&#x74;&#x20;&#x77;&#x69;&#x6C;&#x6C;&#x20;&#x62;&#x65;&#x20;&#x75;&#x73;&#x65;&#x66;&#x75;&#x6C;&comma;&#x20;&#x62;&#x75;&#x74;&#x20;&#x57;&#x49;&#x54;&#x48;&#x4F;&#x55;&#x54;&#x20;&#x41;&#x4E;&#x59;&#x20;&#x57;&#x41;&#x52;&#x52;&#x41;&#x4E;&#x54;&#x59;&semi;&#x20;&#x77;&#x69;&#x74;&#x68;&#x6F;&#x75;&#x74;&#x20;&#x65;&#x76;&#x65;&#x6E;&#x20;&#x74;&#x68;&#x65;&#x20;&#x69;&#x6D;&#x70;&#x6C;&#x69;&#x65;&#x64;&#x20;&#x77;&#x61;&#x72;&#x72;&#x61;&#x6E;&#x74;&#x79;&#x20;&#x6F;&#x66;&#x20;&#x4D;&#x45;&#x52;&#x43;&#x48;&#x41;&#x4E;&#x54;&#x41;&#x42;&#x49;&#x4C;&#x49;&#x54;&#x59;&#x20;&#x6F;&#x72;&#x20;&#x46;&#x49;&#x54;&#x4E;&#x45;&#x53;&#x53;&#x20;&#x46;&#x4F;&#x52;&#x20;&#x41;&#x20;&#x50;&#x41;&#x52;&#x54;&#x49;&#x43;&#x55;&#x4C;&#x41;&#x52;&#x20;&#x50;&#x55;&#x52;&#x50;&#x4F;&#x53;&#x45;&period;&#x20;&#x20;&#x53;&#x65;&#x65;&#x20;&#x74;&#x68;&#x65;&#x20;&#x47;&#x4E;&#x55;&#x20;&#x47;&#x65;&#x6E;&#x65;&#x72;&#x61;&#x6C;&#x20;&#x50;&#x75;&#x62;&#x6C;&#x69;&#x63;&#x20;&#x4C;&#x69;&#x63;&#x65;&#x6E;&#x73;&#x65;&#x20;&#x66;&#x6F;&#x72;&#x20;&#x6D;&#x6F;&#x72;&#x65;&#x20;&#x64;&#x65;&#x74;&#x61;&#x69;&#x6C;&#x73;&period;
  </blockquote>
</details>
