;; Melpa
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; General stuff 
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-message t
      auto-save-default nil
      make-backup-files nil)

;; Window numbering
(require 'window-numbering)
(window-numbering-mode t)

;; Ido
(require 'ido)
(setq ido-enable-flex-matching t
      ido-everywhere t
      ido-use-filename-at-point 'guess) 
(ido-mode t)

;; Magit
(require 'magit)
(global-set-key (kbd "C-c g") 'magit-status)

;; C/C++
(setq c-default-style "linux"
      c-basic-offset 4)

;; Zenburn
(load-theme 'zenburn t)
