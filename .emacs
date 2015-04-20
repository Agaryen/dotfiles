(setq emacs-lisp-dir "~/.emacs.d/lisp"
      my-elmode-dir (concat emacs-lisp-dir "elmodes/"))
(setq load-path
      (append load-path (list my-elmode-dir)))

(load "std.el")
(load "std_comment.el")

(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "/usr/share/24.4/site-lisp/")

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(if (file-exists-p "~/.myemacs")
    (load-file "~/.myemacs"))

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(add-to-list 'load-path "~/.emacs.d/elpa/")

;; affiche trailing space + ligne > 80 colones
(require 'whitespace)
(setq whitespace-style '(face lines-tail trailing))
(global-whitespace-mode t)
;; affiche les accolades et parentheses parentes
(require 'paren)
(show-paren-mode)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'gotham t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("246a51f19b632c27d7071877ea99805d4f8131b0ff7acb8a607d4fd1c101e163" "a041a61c0387c57bb65150f002862ebcfe41135a3e3425268de24200b82d6ec9" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
