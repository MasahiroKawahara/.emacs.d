(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

(setq load-path (cons "~/.emacs.d/config" load-path))

(load "conf-general")
(load "conf-package")
(load "conf-org")
(load "conf-last")
