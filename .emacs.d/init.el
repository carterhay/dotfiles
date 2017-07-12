(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(package-initialize)

;; Installs use-package if it isn't already
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-archives (quote (("melpa" . "http://melpa.org/packages/"))))
 '(package-selected-packages
   (quote
    (chess centered-cursor-mode evil-org auto-org-md zenburn-theme hc-zenburn-theme helm escreen evil-tabs evil undo-tree))))

;; Evil
;; Note, the following must be before use-package
(setq evil-want-C-u-scroll t) ;; Enables C-u scrolling

(use-package evil :ensure t)

(with-eval-after-load 'evil-maps
  ;; nnoremap : ;
  (define-key evil-motion-state-map (kbd ":") 'evil-repeat-find-char)
  ;; nnoremap ; :
  (define-key evil-motion-state-map (kbd ";") 'evil-ex))

  (define-key evil-insert-state-map (kbd "C-c") [escape])
  (define-key evil-replace-state-map (kbd "C-c") [escape])
  (define-key evil-visual-state-map (kbd "C-c") [escape])

(evil-mode 1)

(use-package evil-tabs :ensure t)
(global-evil-tabs-mode t)

(setq evil-motion-state-modes (append evil-emacs-state-modes evil-motion-state-modes))
(setq evil-motion-state-modes nil)


(evil-define-command evil-tab-sensitive-write-quit ()
  :repeat nil
  (interactive)
  (progn
    (evil-save nil 1)
    (if (> (length (elscreen-get-screen-list)) 1)
	(elscreen-kill)
	(evil-quit))))

(evil-ex-define-cmd "wq" 'evil-tab-sensitive-write-quit)

;; Helm
(use-package helm :ensure t)
(global-set-key (kbd "M-x") 'helm-M-x)
(helm-mode t)

;; Editor (General)
(load-theme 'zenburn t)
(setq ring-bell-function 'ignore) ;; Turn off the anoying bell
(setq inhibit-startup-screen t) ;; Turn off welcome screen
(global-linum-mode t) ;; Turn on line numbers
(setq make-backup-files nil) ;; Turn off backup files
(tool-bar-mode -1)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
