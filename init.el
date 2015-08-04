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



;; install auto-complete
(use-package auto-complete :ensure auto-complete)

;;load auto-complete mode
(ac-config-default)


;;enable linenum to show line number
(setq linum-format "%3d ")
(global-linum-mode 1)


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
