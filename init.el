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
(setq-default indent-tabs-mode nil)
(delete 'Git vc-handled-backends)
(column-number-mode 1)
(global-hl-line-mode 1)
(setq mouse-wheel-scroll-amount '(5))
(setq mouse-wheel-progressive-speed nil)
(global-set-key (kbd "C-^") 'join-line)

;; Abbrev
(quietly-read-abbrev-file)

;; Window numbering
(require 'window-numbering)
(window-numbering-mode t)

;; Ido
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-use-faces nil)

;; Magit
(require 'magit)
(global-set-key (kbd "C-c g") 'magit-status)

;; Projectile
(projectile-global-mode)

;; Prodigy
(require 'prodigy)
(prodigy-define-service
  :name "Kube"
  :command "~/Projects/Kube/local/test"
  :cwd "~/Projects/Kube/local")

;; ERC
(setq erc-autojoin-channels-alist '(("freenode.net" "##cpp ##cpp-general #emacs")
                                    ("mozilla.org" "#rust #rust-gamedev")))
(setq erc-hide-list '("JOIN" "PART" "QUIT"))

;; C/C++
(setq c-default-style "linux"
      c-basic-offset 4)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.icc\\'" . c++-mode))
(add-hook 'c++-mode-hook
	  (lambda()
	    (define-key c-mode-base-map (kbd "C-c c") 'recompile)))

;; Zenburn
(load-theme 'zenburn t)
