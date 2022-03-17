;; INIT.EL - my config


;; Disabling things
;;-----------------------------------------------------------------------
(menu-bar-mode -1) 
(toggle-scroll-bar -1) 
(tool-bar-mode -1) 

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(evil magit markdown-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(defun build-blog ()
  (save-buffer)
  (interactive)
  (shell-command "cd ~/src/wwwwssss/blog && ./gen.py build"))


;; Key bindings
(global-set-key (kbd "C-c b") 'build-blog)
(global-set-key (kbd "C-c g") 'magit)
