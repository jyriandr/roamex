;;; Code
(defvar roamex-conf-dir (file-name-directory load-file-name))
(require 'package)
(setq user-emacs-directory roamex-conf-dir)
(setq package-user-dir (locate-user-emacs-file "elpa"))
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;;; init.el ends here
