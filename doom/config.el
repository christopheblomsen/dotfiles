;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Christophe Blomsen"
      user-mail-address "christophe.blomsen@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-solarized-dark)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")
(setq org-startup-folded t)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type `relative)

;;(setq fancy-splash-image "~/.doom.d/black_hole.png")
(setq fancy-splash-image "~/.doom.d/black_hole.png")

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
(set-file-template! ".tex$" :trigger "__.tex" :mode 'latex-mode)
(set-file-template! ".py$" :trigger "__.py" :mode 'python-mode)

(projectile-add-known-project "~/Documents/cpp")

(defvar outline-minor-mode-prefix "\M-#")
(add-hook 'emacs-lisp-mode-hook 'outshine-mode)
;;(global-unset-key "\C-o")
;;(setq outline-minor-mode-prefix "\C-o")
;; extra outline headers
;;(setq TeX-outline-extra
;;      '(("%chapter" 1)
;;        ("%section" 2)
;;        ("%subsection" 3)
;;        ("%subsubsection" 4)
;;        ("%paragraph" 5)))
;;
;;;; add font locking to the headers
;;(font-lock-add-keywords
;; 'latex-mode
;; '(("^%\\(chapter\\|\\(sub\\|subsub\\)?section\\|paragraph\\)"
;;    0 'font-lock-keyword-face t)
;;   ("^%chapter{\\(.*\\)}"       1 'font-latex-sectioning-1-face t)
;;   ("^%section{\\(.*\\)}"       1 'font-latex-sectioning-2-face t)
;;   ("^%subsection{\\(.*\\)}"    1 'font-latex-sectioning-3-face t)
;;   ("^%subsubsection{\\(.*\\)}" 1 'font-latex-sectioning-4-face t)
;;   ("^%paragraph{\\(.*\\)}"     1 'font-latex-sectioning-5-face t)))
