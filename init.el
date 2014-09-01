;; Packages
(setq my-packages '(zenburn-theme
                    rust-mode
                    projectile
                    magit
                    git-commit-mode
                    gitignore-mode
                    flx-ido
                    flx))
(require 'package)
(setq package-archives '(("elpa" . "http://tromey.com/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
(dolist (package my-packages)
  (unless (package-installed-p package)
    (package-install package)))

;; General stuff
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-message t
      auto-save-default nil
      make-backup-files nil)
(setq-default indent-tabs-mode nil)
(column-number-mode 1)
(global-hl-line-mode 1)
(setq mouse-wheel-scroll-amount 5)
(setq mouse-wheel-progressive-speed nil)
(set-face-attribute 'default nil :height 85)
(desktop-save-mode 1)

;; Global keys
(global-set-key (kbd "C-^") 'join-line)
(global-set-key (kbd "C-c c") 'recompile)

;; Abbrev
(quietly-read-abbrev-file)

;; Ido
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-use-faces nil)

;; Magit
(require 'magit)
(global-set-key (kbd "C-c g") 'magit-status)
(delete 'Git vc-handled-backends)

;; Projectile
(projectile-global-mode)

;; ERC
(setq erc-autojoin-channels-alist '(("freenode.net" "##cpp ##cpp-general #emacs")
                                    ("mozilla.org" "#rust #rust-gamedev")))
(setq erc-hide-list '("JOIN" "PART" "QUIT"))

;; Window numbering
(add-to-list 'load-path "~/.emacs.d/window-numbering")
(require 'window-numbering)
(window-numbering-mode t)

;; ws-butler
(add-to-list 'load-path "~/.emacs.d/ethan-wspace/lisp")
(require 'ethan-wspace)
(global-ethan-wspace-mode 1)

;; C/C++
(setq c-default-style "linux"
      c-basic-offset 4)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.icc\\'" . c++-mode))

;; Zenburn
(load-theme 'zenburn t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-require-final-newline nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
