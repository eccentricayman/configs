(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (aurora)))
 '(custom-safe-themes
   (quote
    ("79a3f477ac0cb4a106f78b6109614e991564a5c2467c36e6e854d4bc1102e178" "790e74b900c074ac8f64fa0b610ad05bcfece9be44e8f5340d2d94c1e47538de" "76626efc044daee1c402e50f185bd633d1a688c332bc15c8fd5db4cdf2966b79" default)))
 '(fancy-splash-image "~/emacs.png")
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/"))))
 '(package-selected-packages
   (quote
    (evil-tutor sublimity smex smart-mode-line-powerline-theme smart-compile recentf-ext rainbow-delimiters powerline-evil popup pdf-tools nlinum magit imenu+ highlight-parentheses fsm eshell-prompt-extras eshell-git-prompt eshell-did-you-mean esh-help emmet-mode auto-package-update aurora-theme))))

;;enable parens
(require 'highlight-parentheses)
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 113 :width normal)))))


;; Preset width nlinum
(add-hook 'nlinum-mode-hook
          (lambda ()
            (setq nlinum--width
		  (length (number-to-string
			   (count-lines (point-min) (point-max)))))))

 ;;;;;;;;;;;; misc ;;;;;;;;;;;;;;;;;;;;;;;
;; enable clipboard(
(setq x-select-enable-clipboard t)
;; autocomplete paired brackets
(electric-pair-mode 1)
(global-set-key [C-tab] 'other-window)
;; tramp mode for editing through ssh
(setq tramp-default-method "ssh")
;; show paren mode
(show-paren-mode 1)
;; enable lines mode
(global-linum-mode 1)
(setq backup-directory-alist `(("." . "~/.emacsbackups")))
;;;;;;;;;;;; misc ;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;byebye menu;;;;;;;;;;;;;;;;;
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(add-hook 'desktop-after-read-hook 'powerline-reset)
;;;;;;;;;;;;;;;;;;;;;Byebye menu;;;;;;;;;;;;;;;;;

;;;;;;;better mode-line ;;;;;;;;;;;;;;;;;;
(setq sml/theme 'powerline)
(sml/setup)
;;;;;;;better mode-line;;;;;;;;;;;;;;;;;

;;;;;;;;starting dir;;;;;;;;;;;
(setq default-directory "C:/Users/ayman_000")

;(setq desktop-buffers-not-to-save
;    (concat "\\("
;            "^nn\\.a[0-9]+\\|\\.log\\|(ftp)\\|^tags\\|^TAGS"
;            "\\|\\.emacs.*\\|\\.diary\\|\\.newsrc-dribble\\|\\.bbdb"
;        "\\)$"))
;(add-to-list 'desktop-modes-not-to-save 'dired-mode)
;(add-to-list 'desktop-modes-not-to-save 'Info-mode)
;(add-to-list 'desktop-modes-not-to-save 'info-lookup-mode)
;(add-to-list 'desktop-modes-not-to-save 'fundamental-mode)
;(defun emacs-process-p (pid)
;  "If pid is the process ID of an emacs process, return t, else nil.
;Also returns nil if pid is nil."
;  (when pid
;    (let ((attributes (process-attributes pid)) (cmd))
;      (dolist (attr attributes)
;        (if (string= "comm" (car attr))
;            (setq cmd (cdr attr))))
; q      (if (and cmd (or (string= "emacs" cmd) (string= "emacs.exe" cmd))) t))))

;(defadvice desktop-owner (after pry-from-cold-dead-hands activate)
;  "Don't allow dead emacsen to own the desktop file."
;  (when (not (emacs-process-p ad-return-value))
;    (setq ad-return-value nil)))

;;(require 'sublimity)
;;(require 'sublimity-scroll)
;;(require 'sublimity-map)
;;(require 'sublimity-attractive)
;;(sublimity-mode 1)
(global-hl-line-mode 1)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.

;unused tab expansion because of auto-complete
(global-set-key [(tab)] 'smart-tab)
       
(defun smart-tab ()
  "This smart tab is minibuffer compliant: it acts as usual in
    the minibuffer. Else, if mark is active, indents region. Else if
    point is at the end of a symbol, expands it. Else indents the
    current line."
  (interactive)
  (if (minibufferp)
      (unless (minibuffer-complete)
        (dabbrev-expand nil))
    (if mark-active
        (indent-region (region-beginning)
                       (region-end))
      (if (looking-at "\\_>")
          (dabbrev-expand nil)
        (indent-for-tab-command)))))

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
;change block to line cursor if enabled
;(setq-default cursor-type 'bar)

(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))

(add-hook 'window-setup-hook 'on-after-init)
(add-hook 'css-mode-hook 'rainbow-mode)
(setq fancy-splash-image (expand-file-name "~/emacs.png"))
