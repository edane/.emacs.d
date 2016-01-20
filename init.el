;; change backup directory
(let ((backup-dir (expand-file-name "backup" user-emacs-directory)))
  (unless (file-directory-p backup-dir) ; If backup directory doesn't exist
	(mkdir backup-dir))                 ; Create directory
  ;; Set backup directory
  (setq-default backup-directory-alist (cons (cons "." backup-dir) nil)))

;; Set font
(add-to-list 'default-frame-alist '(font . "Liberation Mono 11"))




;; Load the package manager
(require 'package)

;; Add Melpa
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

;;set up packages
(package-initialize)

;;Install use-package
(unless (package-installed-p 'use-package)
  (progn
    (package-refresh-contents)
    (package-install 'use-package)))

;;load use-package
(require 'use-package)

;;install php-mode
(use-package php-mode :ensure php-mode)

;;install guide-key
(use-package guide-key :ensure guide-key)

;;config of guide key
(setq guide-key/guide-key-sequence t)

;;load guide-key
(guide-key-mode 1)

;;install web-mode
(use-package web-mode :ensure web-mode)

;;config web-mode
:config (progn
		  (setq-default web-mode-markup-indent-offset 4) ;;html
		  (setq-default web-mode-css-indent-offset 4) ;;css
		  (setq-default web-mode-code-indent-offset 4));;PHP/JS/etc


;; install auto-complete
(use-package auto-complete :ensure auto-complete)

;;load auto-complete mode
(ac-config-default)


;;enable linenum to show line number
(setq linum-format "%3d ")
(global-linum-mode 1)

;;set tab-width to 4 spaces
(setq-default tab-width 4)

;; enable ido-mode
(ido-mode 1)


;;highlight parenthesises
(show-paren-mode 1)
  
;;load theme
(load-theme 'tango-dark)
