;; supress startup screen
(setq inhibit-startup-message t)

;; set default tab to 4
(setq-default tab-width 4)


;; turn toolbar off
(tool-bar-mode -1)

;; line numbers
(global-linum-mode t)


;; add .emacs.d
(add-to-list 'load-path "~/.emacs.d/")

;; C-z to undo
(global-set-key (kbd "C-z") 'undo)


;; color theme package
;(require 'color-theme)
;(color-theme-initialize)
;;(add-to-list 'load-path "~/.emacs.d/color-theme")
;;(load-file "~/.emacs.d/color-theme/themes/color-theme-mac-classic.el")
(load-file "~/.emacs.d/color-theme/themes/radiance-theme.el")

;; font
;;(set-face-attribute 'default nil :font "Consolas")
(set-face-attribute 'default nil :height 100)


;; auto reload
(global-auto-revert-mode t)

;; autocomplete
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")


;; paren mode
(show-paren-mode 1)


