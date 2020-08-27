;; set initial size and position
;; (setq initial-frame-alist '((top . 0) (left . 25)))
(setq default-frame-alist
  '((width . 109) (height . 48)))
;; overwrite selected text ala windows
(delete-selection-mode t)
;; default to unix-style coding
(prefer-coding-system 'utf-8-unix)
;; Middle-mouse pastes from clipboard
;; (global-set-key [mouse-2] 'mouse-yank-at-click)
(global-set-key [mouse-2] 'clipboard-yank)
;; Selecting a region copies to clipboard
(setq mouse-drag-copy-region t)
;; Pasting with mouse doesn't move the point
(setq mouse-yank-at-point t)
;; Show command keys as they're pressed
(setq echo-keystrokes .01)

(setq column-number-mode t)
(setq tab-width 2)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(js-indent-level 2)
 '(package-selected-packages (quote (expand-region yaml-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(require 'expand-region)
(global-set-key (kbd "C-'") 'er/expand-region)
(global-set-key (kbd "C-\"") 'er/contract-region)
(global-set-key "\M-z" 'zap-up-to-char)
