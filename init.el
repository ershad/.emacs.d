;; Disable menu bar
;;(menu-bar-mode 0)

(delete-selection-mode t)
(setq fill-column 80)
(auto-fill-mode)
(ido-mode)
(tool-bar-mode)
(menu-bar-mode)
;; (setq debug-on-error t)
(set-cursor-color "#EBDDE2")
(add-to-list 'default-frame-alist '(height . 24))
(add-to-list 'default-frame-alist '(width . 80))

;; (add-to-list 'load-path "/home/ershad/.emacs.d/newsticker/")
;; (autoload 'newsticker-start "newsticker" "Emacs Newsticker" t)
;; (autoload 'newsticker-show-news "newsticker" "Emacs Newsticker" t)

(add-to-list 'load-path "/home/ershad/dev/pony-mode")
(require 'pony-mode)



(add-to-list 'load-path "/home/ershad/.emacs.d/")
(autoload 'php-mode "php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))


;; (load-file "~/cedet-1.0/common/cedet.el")
;; (global-ede-mode 1)                      ; Enable the Project management system
;; (semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
;; (global-srecode-minor-mode 1)            ; Enable template insertion menu


;;(setq ansi-color-for-comint-mode t)
(add-to-list 'load-path "/home/ershad/.emacs.d/")
(require 'auto-complete-config)
(require 'auto-complete-etags)
(require 'cscope)
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

(add-to-list 'load-path
	     "~/.emacs.d/plugins/")
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/snippets")

(require 'auto-complete)
(global-auto-complete-mode t)
(setq ac-auto-start 3)


(when (require 'diminish nil 'noerror)
(eval-after-load "company"
   '(diminish 'company-mode "Cmp"))
(eval-after-load "abbrev"
   '(diminish 'abbrev-mode "Ab"))
(eval-after-load "yasnippet"
   '(diminish 'yas/minor-mode "Y")))

;;------------------------------------------
;; Set up Environment Variable
;;------------------------------------------

;; User of this emacs
(setq user-full-name
      "Ershad K")
(setq user-mail-address
      "ershad92@gmail.com")

;; "yes or no" to "y or n"
(fset 'yes-or-no-p 'y-or-n-p)

;; Show time
(display-time)

(setq x-select-enable-clipboard t)
(setq save-place-file "~/snippets/")

;; Space indentation
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(setq c-basic-indent 4)
(setq c-basic-offset 4)


;; Encoding
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)


;;(setq jabber-account-list
;;    '(("ershad92@gmail.com" 
;;       (:network-server . "talk.google.com")
;;       (:connection-type . ssl))))

;; (load-file "/home/ershad/Downloads/cedet-1.0/common/cedet.el")
;; (global-ede-mode 1)                      ; Enable the Project management system
;; (semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
;; (global-srecode-minor-mode 1)            ; Enable template insertion menu
;; (define-key your-mode-map-here "." 'semantic-complete-self-insert)

;;-----------------------------------------------------------------------------
;; Kernel stuff:
(defun c-lineup-arglist-tabs-only (ignored)
  "Line up argument lists by tabs, not spaces"
  (let* ((anchor (c-langelem-pos c-syntactic-element))
	 (column (c-langelem-2nd-pos c-syntactic-element))
	 (offset (- (1+ column) anchor))
	 (steps (floor offset c-basic-offset)))
    (* (max steps 1)
       c-basic-offset)))

(add-hook 'c-mode-common-hook
          (lambda ()
            ;; Add kernel style
            (c-add-style
             "linux-tabs-only"
             '("linux" (c-offsets-alist
                        (arglist-cont-nonempty
                         c-lineup-gcc-asm-reg
                         c-lineup-arglist-tabs-only))))))

(add-hook 'c-mode-hook
          (lambda ()
            (let ((filename (buffer-file-name)))
              ;; Enable kernel mode for the appropriate files
              (when (and filename
                         (string-match (expand-file-name "~/src/linux-trees")
                                       filename))
                (setq indent-tabs-mode t)
                (c-set-style "linux-tabs-only")))))



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
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(display-time-mode t)
 '(erc-autojoin-channels-alist (quote (("irc.freenode.net" "#fsug-tvm" "#zyxware" "#smc-project"))))
 '(erc-autojoin-mode t)
 '(erc-log-write-after-send t)
 '(erc-notify-list nil)
 '(erc-save-buffer-on-part t t)
 '(erc-sound-mode nil)
 '(erc-track-enable-keybindings t)
 '(erc-track-shorten-cutoff 5)
 '(erc-track-shorten-start 5)
 '(erc-track-visibility t)
 '(inhibit-startup-screen t)
 '(ispell-program-name "/usr/bin/ispell")
 '(jabber-account-list (quote (("ershad92@gmail.com" (:network-server . "talk.google.com") (:connection-type . ssl)))))
 '(latex-run-command "pdflatex")
 '(linum-format "%d  ")
 '(newsticker-html-renderer (quote w3m-region))
 '(newsticker-url-list (quote (("Syntax" "http://ershadk.wordpress.com/feed" nil nil nil) ("Kernel.net" "http://feeds.feedburner.com/kernelnet" nil nil nil) ("SMC Planet" "http://planet.smc.org.in/rss20.xml" nil nil nil))))
 '(python-default-interpreter (quote cpython))
 '(python-python-command "python2.7")
 '(show-paren-mode t)
 '(tex-run-command "pdftex")
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
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#201f1f" :foreground "#e0dedb" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "unknown" :family "DejaVu Sans Mono"))))
 '(erc-current-nick-face ((t (:foreground "green" :weight bold)))))
