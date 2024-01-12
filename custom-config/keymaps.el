
;; for examples look here: https://github.com/doomemacs/doomemacs/blob/develop/modules/config/default/%2Bemacs-bindings.el

(map!
 :leader
 :prefix "c"
 :desc "Jump to references" "r" #'+lookup/references
 :desc "LSP Rename" "R" #'lsp-rename
 :desc "Jump to documentation" "D" #'+lookup/documentation
 :desc "" "k" nil
 :desc "Jump to documentation" "D" #'+lookup/documentation
)

;; things wanted in SPC c ...:
;;

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
