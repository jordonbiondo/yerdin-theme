;;; yerdin-theme.el
;;
;; Filename: yerdin-theme.el
;; Description:
;; Author: Jordon Biondo <jordonbiondo@gmail.com>
;; Created: Mon Oct 06 2014
;; Version: 0.1.0
;; Last-Updated: Tue Oct  7 09:10:47 2014 (-0400)
;;           By: Jordon Biondo
;;     Update #: 29
;; URL: https://github.com/jordonbiondo/yerdin-theme
;; Keywords: theme, dark
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;;  Yerdin-theme
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:
(deftheme yerdin "YERDIN!")

;; Not a bad idea to define a palette...
(let ((yerdin/green "#a9df90")
      (yerdin/dark-green "#596f50")
      (yerdin/blue "#91a0b3")
      (yerdin/blue-bg "#002843")
      (yerdin/light-blue "#9fbfdf")
      (yerdin/lighter-blue "#afcfef")
      (yerdin/orange "#cF9570")
      (yerdin/tan "#ddbc91")
      (yerdin/dark-tan "#7c7565")
      (yerdin/yellow "#aaca86")
      (yerdin/bright-yellow "#caca86")
      (yerdin/purple "#ab85a3")
      (yerdin/gray "#857575")
      (yerdin/dark-gray "#706565")
      (yerdin/darker-gray "#504545")
      (yerdin/darkest-gray "#302525")
      (yerdin/red "#ad8572")
      (yerdin/dark-red "#8d6552")

      (yerdin/cursor "#afffef")
      (yerdin/fringe "#262424")
      (yerdin/region "#343030")

      (yerdin/rb0 "#b1b0e3")
      (yerdin/rb1 "#a58585")
      (yerdin/rb2 "#9190a3")
      (yerdin/rb3 "#b59585")
      (yerdin/rb4 "#7180a3")
      (yerdin/rb5 "#957565")

      (yerdin/bg "gray15")
      (yerdin/fg "#bdbdb3"))




  ;; Set faces
  (custom-theme-set-faces
   `yerdin ;; you must use the same theme name here...
   `(default ((t (:foreground ,yerdin/fg :background ,yerdin/bg))))
   `(cursor  ((t (:foreground ,yerdin/bg :background ,yerdin/cursor))))
   `(fringe  ((t (:background ,yerdin/fringe))))
   `(region  ((t (:background ,yerdin/region))))

   ;; standard font lock
   `(font-lock-builtin-face  ((t (:foreground ,yerdin/light-blue))))
   `(font-lock-comment-face  ((t (:foreground ,yerdin/gray))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,yerdin/dark-gray))))
   `(font-lock-function-name-face ((t (:foreground ,yerdin/green))))
   `(font-lock-keyword-face  ((t (:foreground ,yerdin/blue))))
   `(font-lock-string-face  ((t (:foreground ,yerdin/tan))))
   `(font-lock-preprocessor-face ((t (:foreground ,yerdin/orange))))
   `(font-lock-type-face  ((t (:foreground ,yerdin/red))))
   `(font-lock-constant-face  ((t (:foreground ,yerdin/purple))))
   `(font-lock-warning-face  ((t (:foreground "red" :bold t))))
   `(font-lock-variable-name-face ((t (:foreground ,yerdin/yellow))))
   `(font-lock-doc-face   ((t (:foreground ,yerdin/dark-tan))))

   ;; mode line & powerline
   `(powerline-active1 ((t (:foreground ,yerdin/darkest-gray))))
   `(mode-line-inactive ((t (:background ,yerdin/darker-gray :foreground "cornsilk4"))))
   `(mode-line  ((t (:background "cornsilk4" :foreground ,yerdin/darkest-gray))))

   `(linum ((t (:background nil :foreground ,yerdin/gray))))

   `(popup-tip-face ((t (:background ,yerdin/fg :foreground ,yerdin/bg))))

   `(header-line ((t (:background ,yerdin/fg :foreground ,yerdin/bg))))

   `(button  ((t (:foreground ,yerdin/lighter-blue :background nil :underline t))))

   ;; search
   `(isearch  ((t (:background ,yerdin/blue :foreground ,yerdin/bg))))
   `(lazy-highlight ((t (:background ,yerdin/bg :foreground ,yerdin/purple :underline t))))

   ;; ace-jump
   `(ace-jump-face-background ((t (:inherit font-lock-comment-face))))
   `(ace-jump-face-foreground ((t (:foreground ,yerdin/orange))))

   `(vertical-border ((t (:background ,yerdin/darker-gray :foreground ,yerdin/darkest-gray))))

   `(hl-line ((t (:background "#1f1f1f"))))

   `(highlight-indentation-face ((t (:background ,yerdin/darkest-gray))))

   ;; mini buff
   `(minibuffer-prompt ((t (:foreground ,yerdin/bright-yellow :bold t :background nil))))


   `(compilation-error  ((t (:foreground ,yerdin/red :bold t))))
   `(compilation-warning ((t (:foreground ,yerdin/orange :bold t))))
   `(compilation-info  ((t (:foreground ,yerdin/green :bold t))))

   ;; eshell
   `(eshell-prompt ((t (:foreground ,yerdin/purple))))
   `(eshell-ls-directory ((t (:foreground ,yerdin/blue))))
   `(eshell-ls-product ((t (:foreground ,yerdin/orange))))
   `(eshell-ls-backup ((t (:foreground ,yerdin/darker-gray))))
   `(eshell-ls-executable ((t (:foreground ,yerdin/green))))

   ;; shell
   `(comint-highlight-prompt ((t (:foreground ,yerdin/green))))

   ;; erc
   `(erc-nick-default-face ((t (:foreground ,yerdin/blue))))
   `(erc-my-nick-face ((t (:foreground ,yerdin/yellow))))
   `(erc-current-nick-face ((t (:foreground ,yerdin/light-blue))))
   `(erc-notice-face ((t (:foreground ,yerdin/green))))
   `(erc-input-face ((t (:foreground "white"))))
   `(erc-timestamp-face ((t (:foreground ,yerdin/darker-gray))))
   `(erc-prompt-face ((t (:foreground "#191919" :background ,yerdin/purple))))

   ;;undo-tree
   `(undo-tree-visualizer-active-branch-face ((t (:inherit default))))
   `(undo-tree-visualizer-default-face ((t (:inherit font-lock-comment-face))))
   `(undo-tree-visualizer-register-face ((t (:foreground ,yerdin/yellow :background nil))))
   `(undo-tree-visualizer-current-face ((t (:foreground ,yerdin/red :background nil))))
   `(undo-tree-visualizer-unmodified-face ((t (:foreground ,yerdin/purple :background nil))))

   ;;show paren
   `(show-paren-match ((t (:foreground nil :background ,yerdin/dark-gray))))
   `(show-paren-mismatch ((t (:inherit error))))

   ;; error
   `(error ((t (:foreground "red"))))

   ;; ido
   `(ido-only-match  ((t (:foreground ,yerdin/green))))
   `(ido-first-match  ((t (:foreground ,yerdin/blue))))
   `(ido-incomplete-regexp ((t (:foreground ,yerdin/red))))
   `(ido-subdir   ((t (:foreground ,yerdin/yellow))))
   ;; flx-ido
   `(flx-highlight-face         ((t (:foreground ,yerdin/lighter-blue :background nil :underline nil :bold t))))

   ;;js2
   `(js2-external-variable  ((t (:foreground ,yerdin/orange :background nil))))
   `(js2-function-param   ((t (:foreground ,yerdin/dark-green :background nil))))
   `(js2-instance-member  ((t (:foreground ,yerdin/purple :background nil))))
   `(js2-jsdoc-html-tag-delimiter ((t (:foreground ,yerdin/dark-gray :background nil))))
   `(js2-jsdoc-html-tag-name  ((t (:foreground ,yerdin/darkest-gray :background nil))))
   `(js2-jsdoc-tag   ((t (:foreground ,yerdin/dark-red :background nil))))
   `(js2-jsdoc-type   ((t (:foreground ,yerdin/red :background nil))))
   `(js2-jsdoc-value   ((t (:foreground ,yerdin/tan :background nil))))
   `(js2-private-function-call  ((t (:foreground ,yerdin/dark-green :background nil))))
   `(js2-private-member   ((t (:foreground ,yerdin/dark-tan :background nil))))
   `(js2-warning   ((t (:foreground nil :background nil :underline ,yerdin/orange))))

   ;;web-mode
   `(web-mode-block-attr-name-face  ((t (:foreground "#8fbc8f" :background nil))))
   `(web-mode-block-attr-value-face  ((t (:inherit font-lock-string-face))))
   `(web-mode-block-comment-face  ((t (:inherit font-lock-comment-face))))
   `(web-mode-block-control-face  ((t (:inherit font-lock-preprocessor-face))))
   `(web-mode-block-delimiter-face  ((t (:inherit font-lock-preprocessor-face))))
   `(web-mode-block-face   ((t (:foreground nil :background "LightYellow1"))))
   `(web-mode-block-string-face   ((t (:inherit font-lock-string-face))))
   `(web-mode-builtin-face   ((t (:inherit font-lock-builtin-face))))
   `(web-mode-comment-face   ((t (:inherit font-lock-comment-face))))
   `(web-mode-comment-keyword-face  ((t (:foreground nil :background nil :bold t))))
   `(web-mode-constant-face   ((t (:foreground ,yerdin/purple :background nil))))
   `(web-mode-css-at-rule-face   ((t (:foreground ,yerdin/purple :background nil))))
   `(web-mode-css-color-face   ((t (:foreground ,yerdin/light-blue :background nil))))
   `(web-mode-css-comment-face   ((t (:inherit font-lock-comment-face))))
   `(web-mode-css-function-face   ((t (:foreground ,yerdin/light-blue :background nil))))
   `(web-mode-css-priority-face   ((t (:foreground ,yerdin/light-blue :background nil))))
   `(web-mode-css-property-name-face  ((t (:inherit font-lock-variable-name-face))))
   `(web-mode-css-pseudo-class-face  ((t (:foreground ,yerdin/light-blue :background nil))))
   `(web-mode-css-selector-face   ((t (:foreground ,yerdin/blue :background nil))))
   `(web-mode-css-string-face   ((t (:foreground ,yerdin/tan :background nil))))
   `(web-mode-current-element-highlight-face ((t (:foreground nil :background "#000000"))))
   `(web-mode-doctype-face   ((t (:inherit font-lock-doc-face))))
   `(web-mode-error-face   ((t (:inherit error))))
   `(web-mode-folded-face   ((t (:foreground nil :background nil :underline t))))
   `(web-mode-function-call-face  ((t (:inherit font-lock-function-name-face))))
   `(web-mode-function-name-face  ((t (:inherit font-lock-function-name-face))))
   `(web-mode-html-attr-custom-face  ((t (:inherit font-lock-comment-face))))
   `(web-mode-html-attr-equal-face  ((t (:inherit font-lock-comment-face))))
   `(web-mode-html-attr-name-face  ((t (:inherit font-lock-comment-face))))
   `(web-mode-html-attr-value-face  ((t (:inherit font-lock-string-face))))
   `(web-mode-html-tag-bracket-face  ((t (:inherit font-lock-comment-face))))
   `(web-mode-html-tag-custom-face  ((t (:inherit font-lock-comment-face))))
   `(web-mode-html-tag-face   ((t (:inherit font-lock-comment-face))))
   `(web-mode-javascript-comment-face  ((t (:inherit font-lock-comment-face))))
   `(web-mode-javascript-string-face  ((t (:inherit font-lock-string-face))))
   `(web-mode-json-comment-face   ((t (:inherit font-lock-comment-face))))
   `(web-mode-json-context-face   ((t (:foreground "orchid3" :background nil))))
   `(web-mode-json-key-face   ((t (:foreground "plum" :background nil))))
   `(web-mode-json-string-face   ((t (:inherit font-lock-string-face))))
   `(web-mode-keyword-face   ((t (:inherit font-lock-keyword-face))))
   `(web-mode-param-name-face   ((t (:foreground "Snow3" :background nil))))
   `(web-mode-part-comment-face   ((t (:inherit font-lock-comment-face))))
   `(web-mode-part-face    ((t (:foreground nil :background "LightYellow1"))))
   `(web-mode-part-string-face   ((t (:inherit font-lock-string-face))))
   `(web-mode-preprocessor-face   ((t (:inherit font-lock-preprocessor-face))))
   `(web-mode-string-face   ((t (:inherit font-lock-string-face))))
   `(web-mode-symbol-face   ((t (:foreground "gold" :background nil))))
   `(web-mode-type-face    ((t (:inherit font-lock-type-face))))
   `(web-mode-variable-name-face  ((t (:inherit font-lock-variable-name-face))))
   `(web-mode-warning-face   ((t (:inherit font-lock-warning-face))))
   `(web-mode-whitespace-face   ((t (:foreground nil :background "DarkOrchid4"))))

   ;; helm
   `(helm-M-x-key   ((t (:foreground ,yerdin/orange :underline nil))))
   ;;`(helm-action   ((t ())))
   ;;`(helm-bookmark-addressbook ((t ())))
   ;;`(helm-bookmark-directory  ((t ())))
   ;;`(helm-bookmark-file  ((t ())))
   ;;`(helm-bookmark-gnus  ((t ())))
   ;;`(helm-bookmark-info  ((t ())))
   ;;`(helm-bookmark-man  ((t ())))
   ;;`(helm-bookmark-w3m  ((t ())))
   ;;`(helm-buffer-not-saved  ((t ())))
   ;;`(helm-buffer-process  ((t ())))
   ;;`(helm-buffer-saved-out  ((t ())))
   ;;`(helm-buffer-size   ((t ())))
   `(helm-candidate-number  ((t (:foreground ,yerdin/green :background ,yerdin/darker-gray))))
   `(helm-ff-directory   ((t (:foreground ,yerdin/blue))))
   `(helm-ff-executable   ((t (:foreground ,yerdin/green))))
   `(helm-ff-file   ((t (:inherit default))))
   ;;`(helm-ff-invalid-symlink  ((t ())))
   `(helm-ff-prefix   ((t (:foreground ,yerdin/red))))
   ;;`(helm-ff-symlink   ((t ())))
   ;;`(helm-grep-cmd-line  ((t ())))
   ;;`(helm-grep-file   ((t ())))
   ;;`(helm-grep-finish   ((t ())))
   ;;`(helm-grep-lineno   ((t ())))
   ;;`(helm-grep-match   ((t ())))
   ;;`(helm-grep-running  ((t ())))
   `(helm-header   ((t (:foreground ,yerdin/bg :background ,yerdin/fg))))
   ;;`(helm-helper   ((t ())))
   ;;`(helm-history-deleted  ((t ())))
   ;;`(helm-history-remote  ((t ())))
   ;;`(helm-lisp-completion-info ((t ())))
   ;;`(helm-lisp-show-completion ((t ())))
   `(helm-match    ((t (:foreground ,yerdin/blue :background ,yerdin/darkest-gray))))
   ;;`(helm-moccur-buffer  ((t ())))
   `(helm-selection   ((t (:foreground ,yerdin/yellow :background ,yerdin/region :bold t))))
   ;;`(helm-selection-line  ((t ())))
   ;;`(helm-separator   ((t ())))
   `(helm-source-header   ((t (:foreground ,yerdin/darkest-gray :background ,yerdin/blue))))
   ;;`(helm-visible-mark  ((t ())))

   ;; jabber
   `(jabber-activity-face  ((t (:inherit font-lock-variable-name-face :bold t))))
   `(jabber-activity-personal-face ((t (:inherit font-lock-function-name-face :bold t))))
   `(jabber-chat-error   ((t (:inherit error :bold t))))
   `(jabber-chat-prompt-foreign  ((t (:foreground ,yerdin/green  :background nil :underline nil :bold t))))
   `(jabber-chat-prompt-local  ((t (:foreground ,yerdin/light-blue   :background nil :underline nil :bold t))))
   `(jabber-chat-prompt-system  ((t (:foreground ,yerdin/yellow :background nil :underline nil :bold t))))
   `(jabber-chat-text-foreign  ((t (:inherit default :background nil))))
   `(jabber-chat-text-local  ((t (:inherit default :bold t))))
   `(jabber-rare-time-face  ((t (:foreground ,yerdin/purple :background nil :underline t))))
   `(jabber-roster-user-away  ((t (:inherit font-lock-string-face))))
   `(jabber-roster-user-chatty  ((t (:foreground ,yerdin/orange :background nil :bold t))))
   ;;`(jabber-roster-user-dnd  ((t (:foreground "red" :background nil))))
   `(jabber-roster-user-error  ((t (:inherit error))))
   `(jabber-roster-user-offline  ((t (:inherit font-lock-comment-face))))
   `(jabber-roster-user-online  ((t (:inherit font-lock-keyword-face :bold t))))
   `(jabber-roster-user-xa  ((t (:inherit font-lock-doc-face))))
   ;;`(jabber-title-large  ((t (:foreground nil :background nil :bold t))))
   ;;`(jabber-title-medium  ((t (:foreground nil :background nil :bold t))))
   ;;`(jabber-title-small  ((t (:foreground nil :background nil :bold t))))


   ;; rainbow delim
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,yerdin/rb0 :background nil))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,yerdin/rb1 :background nil))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,yerdin/rb2 :background nil))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,yerdin/rb3 :background nil))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,yerdin/rb4 :background nil))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,yerdin/rb5 :background nil))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,yerdin/rb0 :background nil))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,yerdin/rb1 :background nil))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,yerdin/rb2 :background nil))))
   `(rainbow-delimiters-unmatched-face ((t (:inherit error))))

   ;; auto complete
   `(ac-candidate-face   ((t (:foreground "black" :background ,yerdin/fg))))
   `(ac-selection-face   ((t (:foreground ,yerdin/fg :background ,yerdin/blue))))
   `(ac-candidate-mouse-face  ((t (:inherit ac-selection-face))))
   `(ac-clang-candidate-face  ((t (:inherit ac-candidate-face))))
   `(ac-clang-selection-face  ((t (:inherit ac-selection-face))))
   `(ac-completion-face   ((t (:inherit font-lock-comment-face :underline t))))
   `(ac-gtags-candidate-face  ((t (:inherit ac-candidate-face))))
   `(ac-gtags-selection-face  ((t (:inherit ac-selection-face))))
   `(ac-slime-menu-face   ((t (:inherit ac-candidate-face))))
   `(ac-slime-selection-face  ((t (:inherit ac-selection-face))))
   `(ac-yasnippet-candidate-face ((t (:inherit ac-candidate-face))))
   `(ac-yasnippet-selection-face ((t (:inherit ac-selection-face))))

   ;;`(company-echo   ((t (:foreground nil :background nil))))
   ;;`(company-echo-common  ((t (:foreground nil :background "firebrick4"))))
   ;;`(company-preview   ((t (:foreground "wheat" :background "blue4"))))
   `(company-preview-common  ((t (:inherit font-lock-comment-face))))
   ;;`(company-preview-search  ((t (:foreground "wheat" :background "blue1"))))
   ;;`(company-template-field  ((t (:foreground "black" :background "orange"))))
   `(company-scrollbar-bg               ((t (:foreground nil :background ,yerdin/darkest-gray))))
   `(company-scrollbar-fg               ((t (:foreground nil :background ,yerdin/dark-gray))))
   `(company-tooltip   ((t (:foreground ,yerdin/bg :background ,yerdin/fg))))
   `(company-tooltip-common  ((t (:foreground ,yerdin/blue :background ,yerdin/fg))))
   `(company-tooltip-common-selection ((t (:foreground ,yerdin/bg :background ,yerdin/blue))))
   `(company-tooltip-mouse  ((t (:foreground nil :background ,yerdin/light-blue))))
   `(company-tooltip-selection  ((t (:foreground ,yerdin/fg :background ,yerdin/blue))))


   ;; w3m
   ;;`(w3m-anchor   ((t (:foreground "cyan" :background nil))))
   ;;`(w3m-arrived-anchor  ((t (:foreground "LightSkyBlue" :background nil))))
   `(w3m-bold    ((t (:foreground ,yerdin/blue :background nil :bold t))))
   `(w3m-current-anchor   ((t (:foreground nil :background nil :underline t :bold t))))
   ;;`(w3m-form    ((t (:foreground "red" :background nil :underline t))))
   ;;`(w3m-form-button   ((t (:foreground "red" :background nil :underline t))))
   ;;`(w3m-form-button-mouse  ((t (:foreground "red" :background nil :underline t))))
   ;;`(w3m-form-button-pressed  ((t (:foreground "red" :background nil :underline t))))
   ;;`(w3m-form-inactive  ((t (:foreground "grey70" :background nil :underline t))))
   ;;`(w3m-header-line-location-content ((t (:foreground "LightGoldenrod" :background "Gray20"))))
   ;;`(w3m-header-line-location-title ((t (:foreground "Cyan" :background "Gray20"))))
   ;;`(w3m-history-current-url  ((t (:foreground "LightSkyBlue" :background "SkyBlue4"))))
   ;;`(w3m-image   ((t (:foreground "PaleGreen" :background nil))))
   ;;`(w3m-image-anchor   ((t (:foreground nil :background "dark green"))))
   ;;`(w3m-insert   ((t (:foreground "orchid" :background nil))))
   `(w3m-italic    ((t (:foreground ,yerdin/orange :background nil :underline t))))
   ;;`(w3m-session-select  ((t (:foreground "cyan" :background nil))))
   ;;`(w3m-session-selected  ((t (:foreground "cyan" :background nil :underline t :bold t))))
   ;;`(w3m-strike-through  ((t (:foreground nil :background nil))))
   ;;`(w3m-tab-background  ((t (:foreground "black" :background "white"))))
   ;;`(w3m-tab-mouse   ((t (:foreground nil :background nil))))
   ;;`(w3m-tab-selected   ((t (:foreground "black" :background "cyan"))))
   ;;`(w3m-tab-selected-background ((t (:foreground "black" :background "white"))))
   ;;`(w3m-tab-selected-retrieving ((t (:foreground "red" :background "cyan"))))
   ;;`(w3m-tab-unselected  ((t (:foreground "black" :background "blue"))))
   ;;`(w3m-tab-unselected-retrieving ((t (:foreground "OrangeRed" :background "blue"))))
   ;;`(w3m-tab-unselected-unseen ((t (:foreground "gray60" :background "blue"))))
   `(w3m-underline   ((t (:foreground ,yerdin/green :background nil :underline t))))


   ;; ediff
   `(ediff-current-diff-A((t (:foreground nil :background "#482828"))))
   `(ediff-current-diff-B((t (:foreground nil :background "#284828"))))
   `(ediff-current-diff-C((t (:foreground nil :background "#484828"))))
   ;;`(ediff-current-diff-Ancestor((t ())))
   `(ediff-even-diff-A   ((t (:foreground nil :background "#191925"))))
   `(ediff-even-diff-B   ((t (:foreground nil :background "#191925"))))
   `(ediff-even-diff-C   ((t (:foreground nil :background "#191925"))))
   ;;`(ediff-even-diff-Ancestor  ((t ())))

   `(diff-added             ((t (:foreground nil :background "#284828"))))
   `(diff-changed           ((t (:foreground nil :background "#484828"))))
   `(diff-removed           ((t (:foreground nil :background "#482828"))))
   `(diff-context           ((t (:foreground ,yerdin/gray :background nil))))
   `(diff-file-header       ((t (:foreground ,yerdin/bg :background "grey60" :bold t))))
   `(diff-function          ((t (:foreground ,yerdin/bg :background "grey50"))))
   `(diff-header            ((t (:foreground ,yerdin/bg :background "grey50"))))
   `(diff-hunk-header       ((t (:foreground ,yerdin/bg :background "grey50"))))
   `(diff-index             ((t (:foreground ,yerdin/bg :background "grey50"))))
   `(diff-indicator-added   ((t (:inherit diff-added))))
   `(diff-indicator-changed ((t (:inherit diff-changed))))
   `(diff-indicator-removed ((t (:inherit diff-removed))))
   `(diff-nonexistent       ((t (:foreground nil :background "grey70"))))
   `(diff-refine-added      ((t (:foreground nil :background "#649694"))))
   `(diff-refine-changed    ((t (:foreground nil :background "#8f8f40"))))
   `(diff-refine-removed    ((t (:foreground nil :background "#694949"))))

   `(ediff-fine-diff-A   ((t (:foreground ,yerdin/fg :background "#694949"))))
   `(ediff-fine-diff-B   ((t (:foreground ,yerdin/fg :background "#496949"))))
   `(ediff-fine-diff-C   ((t (:foreground ,yerdin/fg :background "#696949"))))
   ;;`(ediff-fine-diff-Ancestor  ((t ())))

   `(ediff-odd-diff-A   ((t (:foreground nil :background "#171723"))))
   `(ediff-odd-diff-B   ((t (:foreground nil :background "#171723"))))
   `(ediff-odd-diff-C   ((t (:foreground nil :background "#171723"))))
   ;;`(ediff-odd-diff-Ancestor  ((t ())))

   ;; man pages
   `(Man-overstrike ((t (:foreground ,yerdin/blue))))
   `(Man-underline ((t (:foreground ,yerdin/yellow))))

   ;; org
   ;;`(org-agenda-calendar-event ((t (:foreground nil :background nil))))
   ;;`(org-agenda-calendar-sexp ((t (:foreground nil :background nil))))
   ;;`(org-agenda-clocking ((t (:foreground nil :background nil))))
   ;;`(org-agenda-column-dateline ((t (:foreground nil :background nil))))
   ;;`(org-agenda-current-time ((t (:foreground nil :background nil))))
   ;;`(org-agenda-date ((t (:foreground nil :background nil))))
   ;;`(org-agenda-date-today ((t (:foreground nil :background nil))))
   ;;`(org-agenda-date-weekend ((t (:foreground nil :background nil))))
   ;;`(org-agenda-diary ((t (:foreground nil :background nil))))
   ;;`(org-agenda-dimmed-todo-face ((t (:foreground nil :background nil))))
   ;;`(org-agenda-done ((t (:foreground nil :background nil))))
   ;;`(org-agenda-filter-category ((t (:foreground nil :background nil))))
   ;;`(org-agenda-filter-tags ((t (:foreground nil :background nil))))
   ;;`(org-agenda-restriction-lock ((t (:foreground nil :background nil))))
   ;;`(org-agenda-structure ((t (:foreground nil :background nil))))
   ;;`(org-archived ((t (:foreground nil :background nil))))
   ;;`(org-beamer-tag ((t (:foreground nil :background nil))))
   ;;`(org-block ((t (:foreground nil :background nil))))
   ;;`(org-block-background ((t (:foreground nil :background nil))))
   ;;`(org-block-begin-line ((t (:foreground nil :background nil))))
   ;;`(org-block-end-line ((t (:foreground nil :background nil))))
   ;;`(org-checkbox ((t (:foreground nil :background nil))))
   ;;`(org-checkbox-statistics-done ((t (:foreground nil :background nil))))
   ;;`(org-checkbox-statistics-todo ((t (:foreground nil :background nil))))
   ;;`(org-clock-overlay ((t (:foreground nil :background nil))))
   ;;`(org-code ((t (:foreground nil :background nil))))
   ;;`(org-column ((t (:foreground nil :background nil))))
   ;;`(org-column-title ((t (:foreground nil :background nil))))
   ;;`(org-date ((t (:foreground nil :background nil))))
   ;;`(org-date-selected ((t (:foreground nil :background nil))))
   ;;`(org-default ((t (:foreground nil :background nil))))
   ;;`(org-document-info ((t (:foreground nil :background nil))))
   ;;`(org-document-info-keyword ((t (:foreground nil :background nil))))
   ;;`(org-document-title ((t (:foreground nil :background nil))))
   `(org-done ((t (:foreground ,yerdin/green :background nil))))
   `(org-todo ((t (:foreground ,yerdin/red :background nil))))
   ;;`(org-drawer ((t (:foreground nil :background nil))))
   ;;`(org-ellipsis ((t (:foreground nil :background nil))))
   ;;`(org-footnote ((t (:foreground nil :background nil))))
   ;;`(org-formula ((t (:foreground nil :background nil))))
   ;;`(org-headline-done ((t (:foreground nil :background nil))))
   `(org-hide ((t (:foreground ,yerdin/bg :background nil))))
   ;;`(org-latex-and-export-specials ((t (:foreground nil :background nil))))
   ;;`(org-level-1 ((t (:foreground nil :background nil))))
   ;;`(org-level-2 ((t (:foreground nil :background nil))))
   ;;`(org-level-3 ((t (:foreground nil :background nil))))
   ;;`(org-level-4 ((t (:foreground nil :background nil))))
   ;;`(org-level-5 ((t (:foreground nil :background nil))))
   ;;`(org-level-6 ((t (:foreground nil :background nil))))
   ;;`(org-level-7 ((t (:foreground nil :background nil))))
   ;;`(org-level-8 ((t (:foreground nil :background nil))))
   ;;`(org-link ((t (:foreground nil :background nil))))
   ;;`(org-list-dt ((t (:foreground nil :background nil))))
   ;;`(org-meta-line ((t (:foreground nil :background nil))))
   ;;`(org-mode-line-clock ((t (:foreground nil :background nil))))
   ;;`(org-mode-line-clock-overrun ((t (:foreground nil :background nil))))
   ;;`(org-property-value ((t (:foreground nil :background nil))))
   ;;`(org-quote ((t (:foreground nil :background nil))))
   ;;`(org-scheduled ((t (:foreground nil :background nil))))
   ;;`(org-scheduled-previously ((t (:foreground nil :background nil))))
   ;;`(org-scheduled-today ((t (:foreground nil :background nil))))
   ;;`(org-sexp-date ((t (:foreground nil :background nil))))
   ;;`(org-special-keyword ((t (:foreground nil :background nil))))
   ;;`(org-table ((t (:foreground nil :background nil))))
   ;;`(org-tag ((t (:foreground nil :background nil))))
   ;;`(org-target ((t (:foreground nil :background nil))))
   ;;`(org-time-grid ((t (:foreground nil :background nil))))
   ;;`(org-upcoming-deadline ((t (:foreground nil :background nil))))
   ;;`(org-verbatim ((t (:foreground nil :background nil))))
   ;;`(org-verse ((t (:foreground nil :background nil))))
   ;;`(org-warning ((t (:foreground nil :background nil))))


   ;; message-mode
   `(message-cited-text  ((t (:inherit font-lock-comment-face))))
   `(message-header-cc  ((t (:foreground ,yerdin/light-blue :background nil :bold t))))
   `(message-header-name  ((t (:foreground ,yerdin/orange :background nil))))
   `(message-header-newsgroups  ((t (:foreground ,yerdin/dark-tan :background nil :bold t))))
   `(message-header-other  ((t (:foreground ,yerdin/blue :background nil))))
   `(message-header-subject  ((t (:foreground ,yerdin/tan :background nil))))
   `(message-header-to  ((t (:foreground ,yerdin/yellow :background nil :bold t))))
   `(message-header-xheader  ((t (:foreground ,yerdin/purple :background nil))))
   `(message-mml  ((t (:foreground ,yerdin/dark-tan :background nil))))

   ;; gnus
   `(gnus-button    ((t (:foreground nil :background nil :bold t))))
   `(gnus-cite-1    ((t (:foreground "light blue" :background nil))))
   `(gnus-cite-10    ((t (:foreground "plum1" :background nil))))
   `(gnus-cite-11    ((t (:foreground "turquoise" :background nil))))
   `(gnus-cite-2    ((t (:foreground "light cyan" :background nil))))
   `(gnus-cite-3    ((t (:foreground "light yellow" :background nil))))
   `(gnus-cite-4    ((t (:foreground "light pink" :background nil))))
   `(gnus-cite-5    ((t (:foreground "pale green" :background nil))))
   `(gnus-cite-6    ((t (:foreground "beige" :background nil))))
   `(gnus-cite-7    ((t (:foreground "orange" :background nil))))
   `(gnus-cite-8    ((t (:foreground "magenta" :background nil))))
   `(gnus-cite-9    ((t (:foreground "violet" :background nil))))
   `(gnus-cite-attribution   ((t (:foreground nil :background nil))))
   `(gnus-emphasis-bold    ((t (:foreground nil :background nil :bold t))))
   `(gnus-emphasis-bold-italic   ((t (:foreground nil :background nil :bold t))))
   `(gnus-emphasis-highlight-words  ((t (:foreground "yellow" :background "black"))))
   `(gnus-emphasis-italic   ((t (:foreground nil :background nil))))
   `(gnus-emphasis-strikethru   ((t (:foreground nil :background nil))))
   `(gnus-emphasis-underline   ((t (:foreground nil :background nil :underline t))))
   `(gnus-emphasis-underline-bold  ((t (:foreground nil :background nil :underline t :bold t))))
   `(gnus-emphasis-underline-bold-italic ((t (:foreground nil :background nil :underline t :bold t))))
   `(gnus-emphasis-underline-italic  ((t (:foreground nil :background nil :underline t))))
   `(gnus-group-mail-1    ((t (:foreground ,yerdin/blue :background nil :bold t))))
   `(gnus-group-mail-1-empty   ((t (:foreground ,yerdin/blue :background nil))))
   `(gnus-group-mail-2    ((t (:foreground ,yerdin/lighter-blue :background nil :bold t))))
   `(gnus-group-mail-2-empty   ((t (:foreground ,yerdin/lighter-blue :background nil))))
   `(gnus-group-mail-3    ((t (:foreground ,yerdin/light-blue :background nil :bold t))))
   `(gnus-group-mail-3-empty   ((t (:foreground ,yerdin/light-blue :background nil))))
   `(gnus-group-mail-low   ((t (:foreground ,yerdin/yellow :background nil :bold t))))
   `(gnus-group-mail-low-empty   ((t (:foreground ,yerdin/yellow :background nil))))
   `(gnus-group-news-1    ((t (:foreground "PaleTurquoise" :background nil :bold t))))
   `(gnus-group-news-1-empty   ((t (:foreground "PaleTurquoise" :background nil))))
   `(gnus-group-news-2    ((t (:foreground "turquoise" :background nil :bold t))))
   `(gnus-group-news-2-empty   ((t (:foreground "turquoise" :background nil))))
   `(gnus-group-news-3    ((t (:foreground nil :background nil :bold t))))
   `(gnus-group-news-3-empty   ((t (:foreground nil :background nil))))
   `(gnus-group-news-4    ((t (:foreground nil :background nil :bold t))))
   `(gnus-group-news-4-empty   ((t (:foreground nil :background nil))))
   `(gnus-group-news-5    ((t (:foreground nil :background nil :bold t))))
   `(gnus-group-news-5-empty   ((t (:foreground nil :background nil))))
   `(gnus-group-news-6    ((t (:foreground nil :background nil :bold t))))
   `(gnus-group-news-6-empty   ((t (:foreground nil :background nil))))
   `(gnus-group-news-low   ((t (:foreground "DarkTurquoise" :background nil :bold t))))
   `(gnus-group-news-low-empty   ((t (:foreground "DarkTurquoise" :background nil))))
   `(gnus-header-content   ((t (:inherit message-header-other))))
   `(gnus-header-from    ((t (:inherit message-header-other))))
   `(gnus-header-name    ((t (:inherit message-header-name))))
   `(gnus-header-newsgroups   ((t (:inherit message-header-newsgroups))))
   `(gnus-header-subject   ((t (:inherit message-header-subject))))
   `(gnus-server-agent    ((t (:foreground "PaleTurquoise" :background nil :bold t))))
   `(gnus-server-closed    ((t (:foreground "LightBlue" :background nil))))
   `(gnus-server-denied    ((t (:foreground "pink" :background nil :bold t))))
   `(gnus-server-offline   ((t (:foreground "yellow" :background nil :bold t))))
   `(gnus-server-opened    ((t (:foreground "green1" :background nil :bold t))))
   `(gnus-signature    ((t (:foreground nil :background nil))))
   `(gnus-splash    ((t (:foreground "#cccccc" :background nil))))
   `(gnus-summary-cancelled   ((t (:foreground "yellow" :background "black"))))
   `(gnus-summary-high-ancient   ((t (:foreground "SkyBlue" :background nil :bold t))))
   `(gnus-summary-high-read   ((t (:foreground "PaleGreen" :background nil :bold t))))
   `(gnus-summary-high-ticked   ((t (:foreground "pink" :background nil :bold t))))
   `(gnus-summary-high-undownloaded  ((t (:foreground "LightGray" :background nil :bold t))))
   `(gnus-summary-high-unread   ((t (:foreground nil :background nil :bold t))))
   `(gnus-summary-low-ancient   ((t (:foreground "SkyBlue" :background nil))))
   `(gnus-summary-low-read   ((t (:foreground "PaleGreen" :background nil))))
   `(gnus-summary-low-ticked   ((t (:foreground "pink" :background nil))))
   `(gnus-summary-low-undownloaded  ((t (:foreground "LightGray" :background nil))))
   `(gnus-summary-low-unread   ((t (:foreground nil :background nil))))
   `(gnus-summary-normal-ancient  ((t (:inherit default))))
   `(gnus-summary-normal-read   ((t (:foreground ,yerdin/green :background nil))))
   `(gnus-summary-normal-ticked   ((t (:foreground ,yerdin/orange :background nil))))
   `(gnus-summary-normal-undownloaded  ((t (:foreground ,yerdin/dark-gray :background nil))))
   `(gnus-summary-normal-unread   ((t (:foreground ,yerdin/light-blue :background nil))))
   `(gnus-summary-selected   ((t (:foreground nil :background nil :underline t))))

   `(twittering-timeline-footer-face ((t (:foreground nil :background nil :inherit font-lock-function-name-face))))
   `(twittering-timeline-header-face ((t (:foreground nil :background nil :inherit font-lock-function-name-face))))
   `(twittering-uri-face  ((t (:foreground nil :background nil :underline t))))
   `(twittering-username-face  ((t (:foreground nil :background nil :inherit font-lock-keyword-face :underline t))))

   ;; whitespace mode
   `(whitespace-empty   ((t (:foreground ,yerdin/gray :background "gray10"))))
   `(whitespace-hspace   ((t (:foreground ,yerdin/gray :background "grey11"))))
   `(whitespace-indentation  ((t (:foreground ,yerdin/gray :background "gray12"))))
   `(whitespace-line   ((t (:foreground ,yerdin/purple :background nil))))
   `(whitespace-newline   ((t (:foreground ,yerdin/gray :background nil))))
   `(whitespace-space   ((t (:foreground ,yerdin/gray :background nil))))
   `(whitespace-space-after-tab  ((t (:foreground ,yerdin/gray :background "gray13"))))
   `(whitespace-space-before-tab ((t (:foreground ,yerdin/gray :background "gray14"))))
   `(whitespace-tab   ((t (:foreground ,yerdin/gray :background "grey15"))))
   `(whitespace-trailing  ((t (:foreground ,yerdin/rb3 :background ,yerdin/bg :bold t))))

   ;;magit
   `(magit-branch    ((t (:foreground ,yerdin/orange :background nil))))
   ;;`(magit-cherry-equivalent   ((t (:foreground "cyan" :background nil))))
   ;;`(magit-cherry-unmatched   ((t (:foreground "magenta" :background nil))))
   `(magit-diff-add    ((t (:foreground nil :background ,yerdin/dark-green))))
   `(magit-diff-del    ((t (:foreground nil :background ,yerdin/dark-red))))
   `(magit-diff-file-header   ((t (:foreground ,yerdin/bg :background ,yerdin/blue :bold t))))
   `(magit-diff-hunk-header   ((t (:foreground ,yerdin/bg :background ,yerdin/blue))))
   `(magit-diff-merge-current   ((t (:foreground ,yerdin/orange :background nil))))
   `(magit-diff-merge-diff3-separator  ((t (:foreground ,yerdin/orange :background nil))))
   `(magit-diff-merge-proposed   ((t (:foreground ,yerdin/orange :background nil))))
   `(magit-diff-merge-separator   ((t (:foreground ,yerdin/orange :background nil))))
   `(magit-diff-none    ((t (:foreground ,yerdin/fg :background ,yerdin/darker-gray))))
   `(magit-header    ((t (:foreground ,yerdin/blue :background nil))))
   `(magit-item-highlight   ((t (:foreground nil :background ,yerdin/darker-gray))))
   ;;`(magit-item-mark    ((t (:foreground nil :background "darkolivegreen"))))
   ;;`(magit-key-mode-args-face   ((t (:foreground "black" :background "yellow3"))))
   `(magit-key-mode-button-face   ((t (:foreground ,yerdin/light-blue :background nil))))
   `(magit-key-mode-header-face   ((t (:foreground ,yerdin/blue :background nil))))
   ;;`(magit-key-mode-switch-face  ((t (:foreground "red" :background nil :bold t))))
   `(magit-log-author    ((t (:foreground ,yerdin/red :background nil))))
   `(magit-log-author-date-cutoff  ((t (:foreground ,yerdin/red :background nil :bold t))))
   `(magit-log-date    ((t (:foreground nil :background nil))))
   `(magit-log-graph    ((t (:foreground "grey80" :background nil))))
   ;;`(magit-log-head-label-bisect-bad  ((t (:foreground "IndianRed4" :background "IndianRed1"))))
   ;;`(magit-log-head-label-bisect-good  ((t (:foreground "dark olive green" :background "light green"))))
   ;;`(magit-log-head-label-default  ((t (:foreground nil :background "Grey50"))))
   ;;`(magit-log-head-label-head  ((t (:foreground "White" :background "Grey20"))))
   ;;`(magit-log-head-label-local  ((t (:foreground "LightSkyBlue1" :background "Grey13"))))
   ;;`(magit-log-head-label-patches  ((t (:foreground "IndianRed4" :background "IndianRed1"))))
   ;;`(magit-log-head-label-remote  ((t (:foreground "DarkSeaGreen2" :background "Grey11"))))
   ;;`(magit-log-head-label-tags  ((t (:foreground "goldenrod4" :background "LemonChiffon1"))))
   ;;`(magit-log-message   ((t (:foreground nil :background nil))))
   ;;`(magit-log-reflog-label-amend  ((t (:foreground "goldenrod4" :background "LemonChiffon1"))))
   ;;`(magit-log-reflog-label-checkout  ((t (:foreground "LightSkyBlue1" :background "Grey13"))))
   ;;`(magit-log-reflog-label-cherry-pick ((t (:foreground "dark olive green" :background "light green"))))
   ;;`(magit-log-reflog-label-commit  ((t (:foreground "goldenrod4" :background "LemonChiffon1"))))
   ;;`(magit-log-reflog-label-merge  ((t (:foreground "goldenrod4" :background "LemonChiffon1"))))
   ;;`(magit-log-reflog-label-other  ((t (:foreground nil :background "Grey50"))))
   ;;`(magit-log-reflog-label-rebase  ((t (:foreground "DarkSeaGreen2" :background "Grey11"))))
   ;;`(magit-log-reflog-label-remote  ((t (:foreground nil :background "Grey50"))))
   ;;`(magit-log-reflog-label-reset  ((t (:foreground "IndianRed4" :background "IndianRed1"))))
   `(magit-log-sha1    ((t (:foreground ,yerdin/purple :background nil))))
   `(magit-section-title   ((t (:foreground ,yerdin/blue :background nil))))
   `(magit-tag     ((t (:foreground ,yerdin/blue :background nil))))
   ;;`(magit-valid-signature   ((t (:foreground "PaleTurquoise" :background nil :bold t))))
   `(magit-whitespace-warning-face  ((t (:foreground ,yerdin/bg :background "white" :bold t))))

   `(git-gutter:deleted   ((t (:foreground ,yerdin/red :background nil :bold t))))
   `(git-gutter:modified  ((t (:foreground ,yerdin/purple :background nil :bold t))))
   `(git-gutter:separator ((t (:foreground ,yerdin/orange :background nil :bold t))))
   `(git-gutter:unchanged ((t (:foreground ,yerdin/yellow :background nil))))

   `(highlight-indentation-current-column-face ((t (:foreground nil :background ,yerdin/gray))))
   `(highlight-indentation-face                ((t (:foreground nil :background ,yerdin/darkest-gray))))

   ;; trailing whitespace
   `(trailing-whitespace ((t (:background "white" :bold t)))))

  (custom-theme-set-variables
   'yerdin
   `(ansi-color-names-vector
     [,yerdin/darker-gray ,yerdin/red ,yerdin/green ,yerdin/yellow ,yerdin/blue ,yerdin/purple ,yerdin/tan ,yerdin/fg])))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;;;###autoload
(defun yerdin-theme()
  "Apply the yerdin-theme."
  (interactive)
  (load-theme 'yerdin t))


(provide-theme 'yerdin)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; yerdin-theme.el ends here
