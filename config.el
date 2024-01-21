;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-solarized-light)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; Can add these lines below to automatically have tree sitter highlighting
;; when downloading new grammars, can just use the ones that this repo uses: https://github.com/renzmann/treesit-auto/blob/main/treesit-auto.el
;; (global-tree-sitter-mode t)
;; (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)

(setq!
 projectile-project-search-path '("~/code/")
 )

(setq which-key-idle-delay 0)

(setq scroll-margin 8)
(setq hscroll-margin 8)
;; treesit-font-lock-level -> make this 4, is 3 by default
;; (load! "custom-config/keymaps")
;;

;; (defun mish/simulate-other-shortcut-if-exists (other-shortcut)
;;
  ;; )
;;
;; (defun mish/simulate-lsp-ui-peek-definition ()
  ;; "Simulate key sequence 'SPC c l g g' if the keymap is active."
  ;; (interactive)
  ;; (if (keymap-p (lookup-key evil-normal-state-map (kbd "SPC c l g g")))
      ;; (execute-kbd-macro (kbd "SPC c l g g"))
    ;; (message "LSP not active or keymap not defined")))
;;
;; ;; Add the function to the list of functions for definition lookup
;; (push (make-variable-buffer-local '+lookup-definition-functions) mish/simulate-lsp-ui-peek-definition)

;; For reference of what lsp-mode can do:
;; (defvar lsp-command-map
  ;; (-doto (make-sparse-keymap)
    ;; (lsp-define-conditional-key
      ;; ;; workspaces
      ;; "wD" lsp-disconnect "disconnect" (lsp-workspaces)
      ;; "wd" lsp-describe-session "describe session" t
      ;; "wq" lsp-workspace-shutdown "shutdown server" (lsp-workspaces)
      ;; "wr" lsp-workspace-restart "restart server" (lsp-workspaces)
      ;; "ws" lsp "start server" t
;;
      ;; ;; formatting
      ;; "==" lsp-format-buffer "format buffer" (or (lsp-feature? "textDocument/rangeFormatting")
                                                 ;; (lsp-feature? "textDocument/formatting"))
      ;; "=r" lsp-format-region "format region" (lsp-feature? "textDocument/rangeFormatting")
;;
      ;; ;; folders
      ;; "Fa" lsp-workspace-folders-add "add folder" t
      ;; "Fb" lsp-workspace-blocklist-remove "un-blocklist folder" t
      ;; "Fr" lsp-workspace-folders-remove "remove folder" t
;;
      ;; ;; toggles
      ;; "TD" lsp-modeline-diagnostics-mode "toggle modeline diagnostics" (lsp-feature?
                                                                        ;; "textDocument/publishDiagnostics")
      ;; "TL" lsp-toggle-trace-io "toggle log io" t
      ;; "TS" lsp-ui-sideline-mode "toggle sideline" (featurep 'lsp-ui-sideline)
      ;; "TT" lsp-treemacs-sync-mode "toggle treemacs integration" (featurep 'lsp-treemacs)
      ;; "Ta" lsp-modeline-code-actions-mode "toggle modeline code actions" (lsp-feature?
                                                                          ;; "textDocument/codeAction")
      ;; "Tb" lsp-headerline-breadcrumb-mode "toggle breadcrumb" (lsp-feature?
                                                               ;; "textDocument/documentSymbol")
      ;; "Td" lsp-ui-doc-mode "toggle documentation popup" (featurep 'lsp-ui-doc)
      ;; "Tf" lsp-toggle-on-type-formatting "toggle on type formatting" (lsp-feature?
                                                                      ;; "textDocument/onTypeFormatting")
      ;; "Th" lsp-toggle-symbol-highlight "toggle highlighting" (lsp-feature? "textDocument/documentHighlight")
      ;; "Tl" lsp-lens-mode "toggle lenses" (lsp-feature? "textDocument/codeLens")
      ;; "Ts" lsp-toggle-signature-auto-activate "toggle signature" (lsp-feature? "textDocument/signatureHelp")
;;
      ;; ;; goto
      ;; "ga" xref-find-apropos "find symbol in workspace" (lsp-feature? "workspace/symbol")
      ;; "gd" lsp-find-declaration "find declarations" (lsp-feature? "textDocument/declaration")
      ;; "ge" lsp-treemacs-errors-list "show errors" (fboundp 'lsp-treemacs-errors-list)
      ;; "gg" lsp-find-definition "find definitions" (lsp-feature? "textDocument/definition")
      ;; "gh" lsp-treemacs-call-hierarchy "call hierarchy" (and (lsp-feature? "callHierarchy/incomingCalls")
                                                             ;; (fboundp 'lsp-treemacs-call-hierarchy))
      ;; "gi" lsp-find-implementation "find implementations" (lsp-feature? "textDocument/implementation")
      ;; "gr" lsp-find-references "find references" (lsp-feature? "textDocument/references")
      ;; "gt" lsp-find-type-definition "find type definition" (lsp-feature? "textDocument/typeDefinition")
;;
      ;; ;; help
      ;; "hg" lsp-ui-doc-glance "glance symbol" (and (featurep 'lsp-ui-doc)
                                                  ;; (lsp-feature? "textDocument/hover"))
      ;; "hh" lsp-describe-thing-at-point "describe symbol at point" (lsp-feature? "textDocument/hover")
      ;; "hs" lsp-signature-activate "signature help" (lsp-feature? "textDocument/signatureHelp")
;;
      ;; ;; refactoring
      ;; "ro" lsp-organize-imports "organize imports" (lsp-feature? "textDocument/codeAction")
      ;; "rr" lsp-rename "rename" (lsp-feature? "textDocument/rename")
;;
      ;; ;; actions
      ;; "aa" lsp-execute-code-action "code actions" (lsp-feature? "textDocument/codeAction")
      ;; "ah" lsp-document-highlight "highlight symbol" (lsp-feature? "textDocument/documentHighlight")
      ;; "al" lsp-avy-lens "lens" (and (bound-and-true-p lsp-lens-mode) (featurep 'avy))
;;
      ;; ;; peeks
      ;; "Gg" lsp-ui-peek-find-definitions "peek definitions" (and (lsp-feature? "textDocument/definition")
                                                                ;; (fboundp 'lsp-ui-peek-find-definitions))
      ;; "Gi" lsp-ui-peek-find-implementation "peek implementations" (and
                                                                   ;; (fboundp 'lsp-ui-peek-find-implementation)
                                                                   ;; (lsp-feature? "textDocument/implementation"))
      ;; "Gr" lsp-ui-peek-find-references "peek references" (and (fboundp 'lsp-ui-peek-find-references)
                                                              ;; (lsp-feature? "textDocument/references"))
      ;; "Gs" lsp-ui-peek-find-workspace-symbol "peek workspace symbol" (and (fboundp
                                                                           ;; 'lsp-ui-peek-find-workspace-symbol)
                                                                          ;; (lsp-feature? "workspace/symbol")))))
