;; change backup directory
(let ((backup-dir (expand-file-name "backup" user-emacs-directory)))
  (unless (file-directory-p backup-dir) ; If backup directory doesn't exist
	(mkdir backup-dir))                 ; Create directory
  ;; Set backup directory
  (setq-default backup-directory-alist (cons (cons "." backup-dir) nil)))

;; Set font
(if (string= window-system "x")
    (set-default-font "Monospace 11"))



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


;;install guide-key
(use-package guide-key :ensure guide-key)

;;config of guide key
(setq guide-key/guide-key-sequence t)

;;load guide-key
(guide-key-mode 1)


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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
