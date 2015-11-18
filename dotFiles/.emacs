;; supress startup screen
(setq inhibit-startup-message t)

;; set default tab to 4
(setq-default tab-width 4)


;; turn toolbar off
(tool-bar-mode -1)

;; line numbers
(global-linum-mode t)

;; no scroll bar
(scroll-bar-mode -1)

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


(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;;(load-theme 'subatomic t)
(load-theme 'leuven t)
;;(load-theme 'tomorrow-day t)

;; aspell
(setq ispell-program-name "/usr/local/bin/aspell")

(setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin"))

;; Enable Flyspell mode for TeX modes such as AUCTeX. Highlights all misspelled words.
(add-hook 'TeX-mode-hook 'flyspell-mode)
(add-hook 'emacs-lisp-mode-hook 'flyspell-prog-mode)
(setq ispell-dictionary "english")
(add-hook 'TeX-mode-hook
          (lambda () (TeX-fold-mode 1))); Automatically activate TeX-fold-mode.
(setq LaTeX-babel-hyphen nil); Disable language-specific hyphen insertion.


;; tramp default
(setq tramp-default-method "ssh")




(add-to-list 'load-path "~/.emacs.d/markdown-mode")
;; markdown mode
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))


;; go mode
(add-to-list 'load-path "~/.emacs.d/go-mode")
(require 'go-mode-autoloads)


;; Setting up matlab-mode
(add-to-list 'load-path "~/.emacs.d/matlab-mode")
(load-library "matlab-load")
(custom-set-variables
'(matlab-shell-command-switches '("-nodesktop -nosplash")))
(add-hook 'matlab-mode-hook 'auto-complete-mode)
(setq auto-mode-alist
    (cons
     '("\\.m$" . matlab-mode)
     auto-mode-alist))



