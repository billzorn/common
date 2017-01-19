(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("9d91458c4ad7c74cf946bd97ad085c0f6a40c370ac0a1cbeb2e3879f15b40553" "282606e51ef2811142af5068bd6694b7cf643b27d63666868bc97d04422318c1" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "943bff6eada8e1796f8192a7124c1129d6ff9fbd1a0aed7b57ad2bf14201fdd4" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(inhibit-startup-screen t)
 '(safe-local-variable-values (quote ((noweb-code-mode . sml-mode))))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/lisp/rscope")
(tool-bar-mode -1)
(setq mouse-wheel-progressive-speed nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; arrow keys to change windows, kind of like tmux ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)

(global-set-key (kbd "C-x <M-left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-x <M-right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-x <M-up>") 'enlarge-window)
(global-set-key (kbd "C-x <M-down>") 'shrink-window)

;; Note that C-x <C-left> etc. are still bound to buffer switching.
;; However, note that putty is stupid and incapable of sending C-arrow keys,
;; so repurpose (tmux-like) C-x n and C-x p as a backup.

(global-set-key (kbd "C-x c d") 'narrow-to-defun)
(global-set-key (kbd "C-x c n") 'narrow-to-region)
(global-set-key (kbd "C-x c p") 'narrow-to-page)
(global-set-key (kbd "C-x c w") 'widen)

(global-set-key (kbd "C-x n") 'next-buffer)
(global-set-key (kbd "C-x p") 'previous-buffer)

;;;;;;;;;;;;;;;;;;;
;; c indentation ;;
;;;;;;;;;;;;;;;;;;;

(setq c-default-style "linux"
      c-basic-offset 4)

(defun my-c-mode-hook ()
  (c-set-offset 'case-label '+))
(add-hook 'c-mode-common-hook 'my-c-mode-hook)

;;;;;;;;;;;;;;
;; packages ;;
;;;;;;;;;;;;;;

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t))

;;;;;;;;;;;;
;; themes ;;
;;;;;;;;;;;;

(load-theme 'zenburn)

;;;;;;;;;;;;;;;;;;
;; autocomplete ;;
;;;;;;;;;;;;;;;;;;

(require 'auto-complete-config)
(ac-config-default)

;;;;;;;;;;;;
;; cscope ;;
;;;;;;;;;;;;

(require 'rscope)
