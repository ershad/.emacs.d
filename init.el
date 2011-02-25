;; (load-file "~/cedet-1.0/common/cedet.el")
;; (global-ede-mode 1)                      ; Enable the Project management system
;; (semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
;; (global-srecode-minor-mode 1)            ; Enable template insertion menu


;;(setq ansi-color-for-comint-mode t)
(add-to-list 'load-path "/home/ershad/.emacs.d/")
(require 'auto-complete-config)
(require 'auto-complete-etags)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

;;(add-to-list 'load-path "/home/ershad/dev/emacschess")
;;(require 'chess)
(global-linum-mode 1)


(add-to-list 'load-path "/home/ershad/.emacs.d/")

;;newline-and-indent in C++ mode, Thanks to ashawley in #emacs IRC channel
(add-hook 'c++-mode-hook 'ershad-c++-hook-fun)
(defun ershad-c++-hook-fun ()
  (local-set-key "\r" 'newline-and-indent))
  
(add-hook 'c-mode-hook 'ershad-c-hook-fun)
(defun ershad-c-hook-fun ()
  (local-set-key "\r" 'newline-and-indent))



;; (setq user-mail-address "ershad92@gmail.com")
;; (setq user-full-name "Ershad K")
;; (load-library "smtpmail")
;; (load-library "nnimap")
;; (load-library "starttls")
;; (setq gnus-select-method '(nnimap "imap.gmail.com"
;;            (nnimap-address "imap.gmail.com")
;;            (nnimap-server-port 993)
;;            (nnimap-authinfo-file "~/.imap-authinfo")
;;            (nnimap-stream ssl)))

;; (setq smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
;;       smtpmail-smtp-server "smtp.gmail.com"
;;       smtpmail-default-smtp-server "smtp.gmail.com"
;;       send-mail-function 'smtpmail-send-it
;;       message-send-mail-function 'smtpmail-send-it
;;       smtpmail-smtp-service 587
;;       smtpmail-auth-credentials '(("smtp.gmail.com"
;;        587
;;        "ershad92@gmail.com"
;;        nil)))
;; (add-hook 'gnus-topic-mode-hook 'gnus-topic-mode)
;; (setq gnus-select-method
;;       '(nnimap "gmail"
;;                (nnimap-address "imap.gmail.com")
;;                (nnimap-server-port 993)
;;                (nnimap-stream ssl)))



;;------------------------------------------------------------------------------
;; require(s)

;;(require 'gnus)
(require 'python)
(require 'linum)
(require 'boxquote)
(require 'autopair)
(require 'twitter)

;;------------------------------------------------------------------------------
;; Jabber stuffs

;;(add-to-list 'load-path "/home/ershad/.emacs.d/plugins/emacs-jabber/")
;;(require 'jabber)

;;(global-set-key (kbd "S-<f9>") 'jabber-connect-all)
;;(global-set-key (kbd "S-<f8>") 'switch-to-buffer "*-jabber-roster-*")
;;(global-set-key     (kbd "S-<f8>") (lambda () (interactive)
;;				   (switch-to-buffer "*-jabber-roster-*")))

;;------------------------------------------------------------------------------
;; Twitter stuffs

;;(autoload 'twitter-get-friends-timeline "twitter" nil t)
;;(autoload 'twitter-status-edit "twitter" nil t)
;;(global-set-key "\C-xt" 'twitter-get-friends-timeline)
;;(add-hook 'twitter-status-edit-mode-hook 'longlines-mode)

;;------------------------------------------------------------------------------
;; Autoloads / Confs

(autopair-global-mode) ;;Auto pair completion
(show-paren-mode) ;;Parenthesis highlighting 
(define-key python-mode-map (kbd "C-m") 'newline-and-indent)

;;------------------------------------------------------------------------------
;; Git stuffs

(global-set-key (kbd "C-c p") (lambda () (interactive) (shell-command "git push origin master")))


;;------------------------------------------------------------------------------
;; Inactive(s)

;;(add-to-list 'load-path
;;	     "~/.emacs.d/plugins/")
;;(require 'yasnippet) ;; not yasnippet-bundle
;;(yas/initialize)
;;(yas/load-directory "~/.emacs.d/plugins/snippets")

;;(setq jabber-account-list
;;    '(("ershad92@gmail.com" 
;;       (:network-server . "talk.google.com")
;;       (:connection-type . ssl))))

;; (load-file "/home/ershad/Downloads/cedet-1.0/common/cedet.el")
;; (global-ede-mode 1)                      ; Enable the Project management system
;; (semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
;; (global-srecode-minor-mode 1)            ; Enable template insertion menu
;; (define-key your-mode-map-here "." 'semantic-complete-self-insert)


;;------------------------------------------------------------------------------
;; Misc

(setq erc-log-channels-directory "~/.erc/logs/")
(setq erc-save-buffer-on-part t)
(setq erc-hide-timestamps t)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(erc-notify-list nil)
 '(erc-track-enable-keybindings t)
 '(erc-track-shorten-cutoff 5)
 '(erc-track-shorten-start 5)
 '(erc-track-visibility t)
 '(inhibit-startup-screen t)
 '(jabber-account-list (quote (("ershad92@gmail.com" (:network-server . "talk.google.com") (:connection-type . ssl)))))
 '(show-paren-mode t)
 '(twitter-include-replies t)
 '(twitter-status-source "erel")
 '(twitter-username "ershus"))
 
;; (custom-set-faces
;;   ;; custom-set-faces was added by Custom.
;;   ;; If you edit it by hand, you could mess it up, so be careful.
;;   ;; Your init file should contain only one such instance.
;;   ;; If there is more than one, they won't work right.
;;  '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))
;; (put 'upcase-region 'disabled nil)
;; (set-background-color "black")
