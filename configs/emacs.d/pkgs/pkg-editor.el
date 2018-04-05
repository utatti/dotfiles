(use-package editorconfig
  :ensure t
  :init
  (add-hook 'prog-mode-hook (editorconfig-mode 1))
  (add-hook 'text-mode-hook (editorconfig-mode 1))
  (add-hook 'editorconfig-custom-hooks
            (lambda (hash)
              (setq web-mode-script-padding 0)
              (setq web-mode-style-padding 0)))
  )

(use-package smartparens
  :ensure t
  :config
  (require 'smartparens-config)
  (smartparens-global-mode t)
  (show-smartparens-global-mode t)

  (setq sp-autoinsert-pair nil)
  (setq sp-autodelete-pair nil)
  (setq sp-autodelete-closing-pair nil)
  (setq sp-autodelete-opening-pair nil)
  (customize-set-variable 'sp-autoskip-closing-pair nil)
  (customize-set-variable 'sp-autoskip-opening-pair nil)
  (setq sp-cancel-autoskip-on-backward-movement nil)
  (setq sp-autodelete-wrap nil)
  (setq sp-autowrap-region nil)
  (setq sp-autoinsert-quote-if-followed-by-closing-pair nil)
  (setq sp-escape-wrapped-region nil)
  (setq sp-escape-quotes-after-insert nil)

  (set-face-attribute 'sp-show-pair-match-face nil
                      :underline nil
                      :foreground "red")
  )

(setq ad-redefinition-action 'accept)

(use-package avy
  :ensure t
  )

(provide 'pkg-editor)
