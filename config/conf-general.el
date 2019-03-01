;; デフォルトを UTF-8 に
(prefer-coding-system 'utf-8)
; (setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)

;; フォントをIPAゴシックに
(set-face-attribute 'default nil :family "IPAゴシック" :height 110)

;; 行番号表示
(column-number-mode t)

;; 対応する括弧をハイライト
(show-paren-mode t)

;; ツールバー非表示
(tool-bar-mode -1)

;; 起動時の Emacsロゴ等、メッセージを出さない
(setq inhibit-startup-message t) 

;; *scratch* バッファの初期メッセージを消す
(setq initial-scratch-message "")

;; メッセージ音を出さない
(set-message-beep 'silent)

;; 左端に行数を表示させる + 色の設定
(global-linum-mode t) 
(set-face-attribute 'linum nil 
                    :foreground "#fe4b4b" 
                    :height 0.9)

;; 行頭 C-k (kill-line) で行ごと削除
(setq kill-whole-line t) 

;; CUAモード有効 (C-Return)
(cua-mode t) 
(setq cua-enable-cua-keys nil) 

;; 自動保存されるバックアップファイルの置き場所を ~/.emacs.d/backup に変更する
(setq backup-directory-alist 
  (cons (cons ".*" (expand-file-name "~/.emacs.d/backup")) 
        backup-directory-alist)) 
(setq auto-save-file-name-transforms 
      `((".*", (expand-file-name "~/.emacs.d/backup/") t))) 

;; ################
;; --- Key Bind ---
;; ################

;; C-h > バックスペース
(global-unset-key (kbd "C-h")) 
(global-set-key (kbd "C-h") 'delete-backward-char) 

;; C-x C-k > 現在のバッファを閉じる
(defun my-kill-current-buffer () 
  (interactive) 
  (kill-buffer (current-buffer))) 
(define-key global-map (kbd "C-x C-k") 'my-kill-current-buffer)

;; C-x b   > list-buffers
;; C-x C-b > switch-to-buffer
(global-unset-key (kbd "C-x C-b")) 
(global-set-key (kbd "C-x C-b") 'switch-to-buffer) 
(global-unset-key (kbd "C-x b")) 
(global-set-key (kbd "C-x b") 'list-buffers) 

;; C-l C-c > recenter
(global-unset-key (kbd "C-l"))
(global-set-key (kbd "C-l C-c") 'recenter)

;; C-l C-l > 文字置換
(global-set-key (kbd "C-l C-l") 'replace-string)

;; C-l C-p > 文字置換 (正規表現)
(global-set-key (kbd "C-l C-p") 'replace-regexp)

;; C-l C-8 > マクロ記録開始
;; C-l C-9 > マクロ記録終了
;; C-l C-, > マクロ呼び出し
(global-set-key (kbd "C-l C-8") 'kmacro-start-macro) 
(global-set-key (kbd "C-l C-9") 'kmacro-end-macro) 
(global-set-key (kbd "C-l C-,") 'kmacro-end-and-call-macro) 

;; C-l C-e C-m > org-mode: Markdown エクスポート
(global-set-key (kbd "C-l C-e C-m") 'org-md-export-as-markdown) 

;; ################
;; --- for IME ---
;; ################
;; 参考:  https://github.com/chuntaro/NTEmacs64/issues/3#issuecomment-252144335
(menu-bar-open)
(defun send-esc ()
  (start-process "my-proc" nil "cscript.exe"
                 (expand-file-name "~/.emacs.d/sendesc.js")))
(add-hook 'emacs-startup-hook 'send-esc)
