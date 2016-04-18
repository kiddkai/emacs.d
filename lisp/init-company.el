;;;; init company

(when (maybe-require-package 'company)
  (add-hook 'after-init-hook 'global-company-mode)
  (company-quickhelp-mode 1))

(provide 'init-company)
