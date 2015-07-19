;; supress startup screen
(setq inhibit-startup-message t)

;; set default tab to 4
(setq-default tab-width 4)


;; turn toolbar off
(tool-bar-mode -1)

;; line numbers
(global-linum-mode t)


;; C-z to undo
(global-set-key (kbd "C-z") 'undo)


;; auto reload
(global-auto-revert-mode t)


;; paren mode
(show-paren-mode 1)


;; move autosaves to a default directory in the home folder
(setq backup-directory-alist `(("." . "~/.saves")))


;; set window size
(if (window-system)
	(set-frame-height (selected-frame) 60))
(if (window-system)
	(set-frame-width (selected-frame) 100))
;; font size
(set-face-attribute 'default nil :height 120)


