;;(add-to-list 'load-path
;;	     "~/.emacs.d/plugins/")
;;(require 'yasnippet) ;; not yasnippet-bundle
;;(yas/initialize)
;;(yas/load-directory "~/.emacs.d/plugins/snippets")

(add-to-list 'load-path "/home/ershad/.emacs.d/")

(require 'python)
(require 'linum)
(require 'boxquote)
(require 'autopair)
(define-key python-mode-map (kbd "C-m") 'newline-and-indent)
(global-set-key (kbd "C-c p") (lambda () (interactive) (shell-command "git push origin master")))
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
 '(inhibit-startup-screen t))
 
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
