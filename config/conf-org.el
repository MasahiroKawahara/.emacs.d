;; org-mode 9
(add-to-list 'load-path "c:/Users/outer/emacs/my_packages/org-9.1.6/lisp" t)
(add-to-list 'load-path "c:/Users/outer/emacs/my_packages/org-9.1.6/contrib/lisp" t)

;; 先頭以外のな "*" を表示しない
(setq org-hide-leading-stars t)

;; TODO
(setq org-todo-keywords 
      '((sequence "TODO(t)" "WAIT(w)" "|" "DONE(d)" "SOMEDAY(s)"))) 
(setq org-log-done 'time) 

;; ################
;; --- Org-Agenda ---
;; ################

;; Key Bind
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cr" 'org-remember)

;; アジェンダ表示の対象ファイル設定
(setq org-directory "c:/Users/outer/org/")
(setq org-agenda-files (list org-directory))

;; アジェンダ表示で下線を使用
(add-hook 'org-agenda-mode-hook '(lambda () (hl-line-mode 1)))
(setq hl-line-face 'underline)

;; 標準の祝日を利用しない
(setq calendar-holidays nil)
