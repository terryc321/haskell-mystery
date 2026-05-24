
;; haskell configuration for language server protocol lsp with tree-sitter

;; 1. Install and Configure Tree-sitter (Emacs 29+)
(setq treesit-language-source-alist
      '((haskell "https://github.com/tree-sitter/tree-sitter-haskell")))
(require 'treesit-auto)
(global-treesit-auto-mode)

;; 2. Configure Haskell Mode (Targets haskell-ts-mode automatically via treesit-auto)
(use-package haskell-mode
  :ensure t
  ;; Remove the :mode line to let treesit-auto handle file associations
  :hook ((haskell-ts-mode . lsp-deferred)   ; LSP for TS mode
         (haskell-ts-mode . company-mode)   ; Completion for TS mode
         (haskell-ts-mode . flycheck-mode)) ; Errors for TS mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  (setq lsp-log-io nil)
  (setq lsp-haskell-server-path "haskell-language-server-wrapper")
  (setq lsp-completion-provider :capf)
  (setq company-minimum-prefix-length 1))

;; 3. Ensure LSP, Company, and Flycheck are loaded
(use-package lsp-mode :ensure t :commands (lsp lsp-deferred))
(use-package company :ensure t)
(use-package flycheck :ensure t)

(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

