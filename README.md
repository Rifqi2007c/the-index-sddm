- !! Blatanly stolen code from [SDDM Sugar Dark](https://github.com/MarianArit/sddm-sugar-dark) !!
- !! Blatantly stolen and trace over from [YoRHa](https://github.com/NeekoKun/YoRHa-sddm-theme/tree/master) !!

## Previews
![Default Preview](./Previews/default.png)
![DE Select Preview](./Previews/de-select.png)

## Features
- The user will be shown with a **Capital Letter** regardless of the typed case, this is only a graphical effect
- Last logged in user will be used as text placeholder
- Random prescript will be fetched from the [Quotes Folder](./Quotes/)
    - The prescript file selected can be changed in the [LoginForm.qml](./Components/LoginForm.qml)
    - Every line will be read as a single prescript, everything after a tilde (~) will be considered as the source of the quote and will be placed in the bottom right

## Installation
1. Copy the theme folder to `/usr/share/sddm/themes/`
2. Edit `/etc/sddm.conf` and set:
    ```
    [Theme]
        Current=the-index-sddm
    ```
3. Restart your display manager or reboot your system

**Optional:** To preview the theme before applying it, run:
```bash
sddm-greeter --test-mode --theme <theme root folder>
```

### Nixos Modules
created by: [ixora-0](https://github.com/ixora-0)
- [the-index-sddm.nix](https://github.com/Rifqi2007c/the-index-sddm/blob/main/the-index-sddm.nix)
