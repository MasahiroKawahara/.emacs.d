(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; ido-mode 関連
;; > https://maskaw.hatenablog.com/entry/2018/09/01/181243
(ido-mode t)
(require 'ido-vertical-mode)
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)
