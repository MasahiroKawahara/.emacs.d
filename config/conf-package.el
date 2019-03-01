;; (add-to-list 'package-archives
;;	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; ido-mode
;; > https://maskaw.hatenablog.com/entry/2018/09/01/181243
(ido-mode t)
(require 'ido-vertical-mode)
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

;; markdown-mode
;; > https://jblevins.org/projects/markdown-mode/
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(markdown-code-face ((t (:inherit nil :background "azure"))))
 '(markdown-pre-face ((t (:inherit nil :background "azure")))))
