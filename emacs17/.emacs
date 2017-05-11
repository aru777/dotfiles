;; setup proxy to talk to internet
(setq url-proxy-services
   '(("no_proxy" . "^\\(localhost\\|10.*\\)")
     ("http" . "fwdproxy:8080")
     ("https" . "fwdproxy:8080")))

(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-backends
   (quote
    (company-dabbrev-code company-nxml company-css company-eclim company-semantic company-clang company-xcode company-cmake company-capf company-files
			  (company-dabbrev-code company-gtags company-etags company-keywords)
			  company-oddmuse company-dabbrev)))
 '(company-idle-delay 0)
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(package-selected-packages (quote (helm company goto-chg undo-tree solarized-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'solarized-dark t)

(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
(define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)

(add-hook 'after-init-hook 'global-company-mode)

(require 'helm-config)
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(helm-mode 1)

(eval-after-load 'company
  '(progn
     (define-key company-active-map (kbd "C-n") 'company-complete-common-or-cycle)
     (define-key company-active-map (kbd "TAB") 'company-complete-selection)
     (define-key company-active-map (kbd "<tab>") 'company-complete-selection)
     (define-key company-active-map (kbd "C-p") 'company-select-previous)))
(setq company-frontends
      '(company-pseudo-tooltip-unless-just-one-frontend
        company-preview-frontend
        company-echo-metadata-frontend))
(setq company-require-match 'never)
(setq company-auto-complete t)

