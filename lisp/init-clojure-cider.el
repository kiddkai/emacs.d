(require 'init-clojure)

(when (maybe-require-package 'cider)

  (setq nrepl-popup-stacktraces nil)

  (after-load 'cider

    (add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
    (add-hook 'cider-repl-mode-hook 'subword-mode)
    (add-hook 'cider-repl-mode-hook 'paredit-mode)
    (add-hook 'cider-repl-mode-hook 'company-mode)
    (add-hook 'cider-mode-hook 'company-mode)
    (setq cider-annotate-completion-candidates t
          cider-prompt-for-symbol nil)
    ;; nrepl isn't based on comint
    (add-hook 'cider-repl-mode-hook
              (lambda () (setq show-trailing-whitespace nil))))

  (require-package 'flycheck-clojure)
  (after-load 'clojure-mode
    (after-load 'flycheck
      (flycheck-clojure-setup))))


(provide 'init-clojure-cider)
