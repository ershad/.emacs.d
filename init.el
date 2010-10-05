(add-to-list 'load-path "/home/ershad/.emacs.d/")

;;newline-and-indent in C++ mode, Thanks to ashawley - #emacs
(add-hook 'c++-mode-hook 'ershad-c++-hook-fun)
(defun ershad-c++-hook-fun ()
  (local-set-key "\r" 'newline-and-indent))



;;------------------------------------------------------------------------------
;; require(s)

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

;;------------------------------------------------------------------------------
;; Misc

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
 '(twitter-include-replies t)
 '(twitter-status-source "erel")
 '(twitter-username "ershus"))
 
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
