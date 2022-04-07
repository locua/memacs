;;-----------------------------------------------------------------------
;; INIT.EL - memacs 
;;-----------------------------------------------------------------------
;; Disabling things
;;-----------------------------------------------------------------------
(menu-bar-mode -1) 
(toggle-scroll-bar -1) 
(tool-bar-mode -1)
;;-----------------------------------------------------------------------
;; Enabling things
;;-----------------------------------------------------------------------
(require 'evil)
(evil-mode 1)
;; mouse in terminal
(xterm-mouse-mode 1)
;;-----------------------------------------------------------------------
;; Installing things
;;-----------------------------------------------------------------------
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(neotree evil magit markdown-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; Make evil conform to markdown mode
(add-to-list 'load-path "~/.emacs.d/plugins/evil-markdown")
(require 'evil-markdown)
;;-----------------------------------------------------------------------
;; Custom things
;;-----------------------------------------------------------------------
(defun build-blog ()
  ;; run python script ting
  (save-buffer)
  (interactive)
  (shell-command "cd ~/src/wwwwssss/blog && ./gen.py build"))

(defun build-blog-all ()
  ;; run python script ting
  (save-buffer)
  (interactive)
  (shell-command "cd ~/src/wwwwssss/blog && ./gen.py all"))

(defun quick-git()
  ;; do a quick git commit -am push
  (save-buffer)
  (interactive)
  (shell-command "git commit -am 'Quick auto commit and push' && git push")) 

;; Key bindings
;;-----------------------------------------------------------------------
(global-set-key (kbd "C-c b") 'build-blog)
(global-set-key (kbd "C-c a") 'build-blog-all)
(global-set-key (kbd "C-c g") 'magit)
(global-set-key (kbd "C-c u") 'quick-git)
(global-set-key (kbd "C-x t") 'neotree-toggle)
