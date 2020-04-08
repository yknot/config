;; suppress startup screen
(setq inhibit-startup-message t)

;; turn tabs off
(setq-default indent-tabs-mode nil)

;; set python3
(setq elpy-rpc-python-command "python3")
(setq python-shell-interpreter "python3")

;; load theme to be used in terminal
(load-theme 'wombat)

;; gui settings
(if (display-graphic-p)  
    (progn
      (tool-bar-mode -1) ;; turn toolbar off
      (scroll-bar-mode -1)   ;; no scroll bar
      (set-frame-height (selected-frame) 65) ;; window size
      (set-frame-width (selected-frame) 95)
      ;; theme
      (add-to-list 'custom-theme-load-path "~/.emacs.d/emacs-material-theme/")
      (load-theme 'material t)
      ;; (set-frame-font "Roboto Mono for Powerline-12" nil t)
      (set-frame-font "IBM Plex Mono-12" nil t)
      (add-to-list 'load-path "~/.emacs.d/powerline/")
      (require 'powerline)
      (powerline-default-theme)
      ))


;; Auto Revert mode
(global-auto-revert-mode 1)

;; show column numbers
(setq column-number-mode t)

;; matching paren mode
(show-paren-mode 1)

;; Doc View config
;; auto reload
(add-hook 'doc-view-mode-hook 'auto-revert-mode)
;; continuous mode
(setq doc-view-continuous t)

;; stops the second window from popping up
(setq ns-pop-up-frames nil)

;; set hunspell instead of ispell
(setq ispell-program-name "hunspell")

;; Auctex config
(setenv "PATH" (concat "/Library/TeX/texbin;/usr/local/bin:" (getenv "PATH")))
(setq exec-path (append '("/Library/TeX/texbin" "/usr/local/bin") exec-path))
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



;; compile commands with makefile
(global-set-key "\C-xc" 'compile)  ;; command to compile
(global-set-key "\C-x\C-u" 'shell) ;; open up shell in buffer


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-command-list
   (quote
    (("TeX" "%(PDF)%(tex) %(file-line-error) %(extraopts) %`%S%(PDFout)%(mode)%' %t" TeX-run-TeX nil
      (plain-tex-mode texinfo-mode ams-tex-mode)
      :help "Run plain TeX")
     ("LaTeX" "%`%l%(mode)%' %t" TeX-run-TeX nil
      (latex-mode doctex-mode)
      :help "Run LaTeX")
     ("Makeinfo" "makeinfo %(extraopts) %t" TeX-run-compile nil
      (texinfo-mode)
      :help "Run Makeinfo with Info output")
     ("Makeinfo HTML" "makeinfo %(extraopts) --html %t" TeX-run-compile nil
      (texinfo-mode)
      :help "Run Makeinfo with HTML output")
     ("AmSTeX" "amstex %(PDFout) %(extraopts) %`%S%(mode)%' %t" TeX-run-TeX nil
      (ams-tex-mode)
      :help "Run AMSTeX")
     ("ConTeXt" "%(cntxcom) --once --texutil %(extraopts) %(execopts)%t" TeX-run-TeX nil
      (context-mode)
      :help "Run ConTeXt once")
     ("ConTeXt Full" "%(cntxcom) %(extraopts) %(execopts)%t" TeX-run-TeX nil
      (context-mode)
      :help "Run ConTeXt until completion")
     ("BibTeX" "bibtex %s" TeX-run-BibTeX nil t :help "Run BibTeX")
     ("Biber" "biber %s" TeX-run-Biber nil t :help "Run Biber")
     ("View" "%V -a skim" TeX-run-discard-or-function t t :help "Run Viewer")
     ("Print" "%p" TeX-run-command t t :help "Print the file")
     ("Queue" "%q" TeX-run-background nil t :help "View the printer queue" :visible TeX-queue-command)
     ("File" "%(o?)dvips %d -o %f " TeX-run-dvips t t :help "Generate PostScript file")
     ("Dvips" "%(o?)dvips %d -o %f " TeX-run-dvips nil t :help "Convert DVI file to PostScript")
     ("Ps2pdf" "ps2pdf %f" TeX-run-ps2pdf nil t :help "Convert PostScript file to PDF")
     ("Index" "makeindex %s" TeX-run-index nil t :help "Run makeindex to create index file")
     ("Xindy" "texindy %s" TeX-run-command nil t :help "Run xindy to create index file")
     ("Check" "lacheck %s" TeX-run-compile nil
      (latex-mode)
      :help "Check LaTeX file for correctness")
     ("ChkTeX" "chktex -v6 %s" TeX-run-compile nil
      (latex-mode)
      :help "Check LaTeX file for common mistakes")
     ("Spell" "(TeX-ispell-document \"\")" TeX-run-function nil t :help "Spell-check the document")
     ("Clean" "TeX-clean" TeX-run-function nil t :help "Delete generated intermediate files")
     ("Clean All" "(TeX-clean t)" TeX-run-function nil t :help "Delete generated intermediate and output files")
     ("Other" "" TeX-run-command t t :help "Run an arbitrary command"))))
 '(custom-safe-themes
   (quote
    ("98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" default)))
 '(package-selected-packages
   (quote
    (deft zygospore helm-gtags helm yasnippet ws-butler volatile-highlights use-package undo-tree iedit dtrt-indent counsel-projectile company clean-aindent-mode anzu))))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(default ((t (:inherit nil :stipple nil :background "White" :foreground "Black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "nil" :family "consolas")))))


(require 'package)
(load "package")
(package-initialize)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

(setq package-archive-enable-alist '(("melpa" magit)))
(defalias 'yes-or-no-p 'y-or-n-p)


(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)


(defun activate-python()
(message "Loading Python mode")
;(require 'epy-setup)      ;; It will setup other loads, it is required!
;(require 'epy-python)     ;; If you want the python facilities [optional]
;(require 'epy-completion) ;; If you want the autocompletion settings [optional]
;(require 'epy-editing)    ;; For configurations related to editing [optional]
;(require 'epy-bindings)   ;; For my suggested keybindings [optional]
;(require 'epy-nose)       ;; For nose integration

;(require 'flymake-python-pyflakes)
;(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)

;(epy-setup-ipython)
(global-hl-line-mode t) ;; To enable
(require 'highlight-indentation)
(add-hook 'python-mode-hook 'highlight-indentation)
;(add-hook 'python-mode-hook 'jedi:setup)
;(setq jedi:complete-on-dot t)                 ; optional

(elpy-enable)
(setq elpy-rpc-backend "jedi")  
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

)


(activate-python )
(setq global-linum-mode t)



(add-to-list 'load-path "~/.emacs.d/deft/")
(require 'deft)
(setq deft-directory "~/Dropbox/Apps/Notes/")
(global-set-key [f6] 'deft)



;; (add-to-list 'load-path "~/.emacs.d/ESS/lisp/")
;; (load "ess-site")


;; (add-hook 'python-mode-hook 'jedi:setup)
;; (setq jedi:complete-on-dot t)                 ; optional
;; (add-hook 'python-mode-hook 'flycheck-mode)
;; (add-hook 'elpy-mode-hook 'git-gutter-mode)



(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; change alarm bell to be only in the mode line
(setq ring-bell-function 'ignore)
(setq visible-bell nil
      ring-bell-function 'flash-mode-line)
(defun flash-mode-line ()
  (invert-face 'mode-line)
  (run-with-timer 0.1 nil #'invert-face 'mode-line))

