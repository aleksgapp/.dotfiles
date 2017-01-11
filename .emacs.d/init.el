(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; VIM simulation
(require 'evil)
(evil-mode 1)
(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-righ)

;; Required to make chord bindings
(require 'key-chord)
(key-chord-mode 1)

;; Change editing mode to normal with jk/kj
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
(key-chord-define evil-insert-state-map "kj" 'evil-normal-state)

;; disable menu/toolbar/scrollbar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; emable auto-complete
(require 'auto-complete)
(global-auto-complete-mode t)

(require 'ido)
(ido-mode t)

;; enable auto-pair
(electric-pair-mode 1)

;; highlight selected line
(global-hl-line-mode 1)

;; use dark solarized theme
(color-theme-initialize)
(color-theme-solarized-dark)

(require 'powerline)
(powerline-evil-vim-color-theme)

;; line numbers
(global-linum-mode t)
(setq linum-format "%4d ")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default)))
 '(package-selected-packages
   (quote
    (evil-terminal-cursor-changer evil-easymotion powerline-evil auto-complete key-chord color-theme-solarized evil))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(powerline-evil-emacs-face ((t (:background "#1c1c1c" :foreground "#8a8a8a"))))
 '(powerline-evil-insert-face ((t (:background "#1c1c1c" :foreground "#8a8a8a"))))
 '(powerline-evil-motion-face ((t (:background "#1c1c1c" :foreground "#e4e4e4"))))
 '(powerline-evil-normal-face ((t (:background "#1c1c1c" :foreground "#8a8a8a"))))
 '(powerline-evil-replace-face ((t (:background "#1c1c1c" :foreground "#8a8a8a"))))
 '(powerline-evil-visual-face ((t (:background "#1c1c1c" :foreground "#8a8a8a")))))

;; store all backup and autosave files in the tmp di
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; use ibuffer instead default buffer list
(global-set-key (kbd "C-x C-b") 'ibuffer)
