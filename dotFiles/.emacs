;; suppress startup screen
(setq inhibit-startup-message t)


;; gui settings
(if (display-graphic-p)
	(progn
	  (tool-bar-mode -1) ;; turn toolbar off
	  (scroll-bar-mode -1)   ;; no scroll bar
	  (set-frame-height (selected-frame) 65) ;; window size
	  (set-frame-width (selected-frame) 95)))

;; show column numbers
(setq column-number-mode t)

;; matching paren mode
(show-paren-mode 1)

;; auto reload for pdfs
(add-hook 'doc-view-mode-hook 'auto-revert-mode)

;; stops the second window from popping up
(setq ns-pop-up-frames nil)

;; set aspell instead of ispell
(setq ispell-program-name "aspell")

;; Auctex config
(setenv "PATH" (concat "/usr/texbin:/usr/local/bin:" (getenv "PATH")))
(setq exec-path (append '("/usr/texbin" "/usr/local/bin") exec-path))
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(add-hook 'LaTeX-mode-hook 'visual-line-mode) ;; better controls on wrapped lines
(add-hook 'LaTeX-mode-hook 'flyspell-mode)    ;; spell check mode
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)  ;; use ` to insert math stuff
;; maybe will use at some point
;;(add-hook 'LaTeX-mode-hook 'turn-on-reftex)   ;; for refrences
;;(setq reftex-plug-into-AUCTeX t)

;; interactively do things
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(setq ido-ignore-extensions t)
(ido-mode 1)

      
;; move autosaves to a default directory in the home folder
(setq backup-directory-alist `(("." . "~/.saves")))
