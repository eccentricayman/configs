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
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (atom-one-dark)))
 '(custom-safe-themes
   (quote
    ("0c1103b91002bd7f301b7f58585b55469eddf26d9d46518893e1269617a9ec86" "5058d3e0a733f07a0e4baf515224925c3036e55bca952460e3e38a79b1890ed5" "919469423e232db3cc35f6a94134051dd8a5a95d5cbb2a9b3c519e371a069615" "4f5bb895d88b6fe6a983e63429f154b8d939b4a8c581956493783b2515e22d6d" "1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "b47af5d58090932fbe1aa81683ff472a35b49b224c214173a86859dd8d6e4f0c" "1c7c3a5b599aa7e063dfb7bbbe602fea9ce020e9d12a761bea4f4734718f8825" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "03e3e79fb2b344e41a7df897818b7969ca51a15a67dc0c30ebbdeb9ea2cd4492" "e8e744a1b0726814ac3ab86ad5ccdf658b9ff1c5a63c4dc23841007874044d4a" "01c5ebefcabc983c907ee30e429225337d0b4556cc1d21df0330d337275facbb" "e681c4fc684a543ce97c2d55082c6585182c0089f605dc9a5fe193870f03edc6" "f2503f0a035c2122984e90eb184185769ee665de5864edc19b339856942d2d2d" "b04425cc726711a6c91e8ebc20cf5a3927160681941e06bc7900a5a5bfe1a77f" "870a63a25a2756074e53e5ee28f3f890332ddc21f9e87d583c5387285e882099" "79a3f477ac0cb4a106f78b6109614e991564a5c2467c36e6e854d4bc1102e178" "790e74b900c074ac8f64fa0b610ad05bcfece9be44e8f5340d2d94c1e47538de" "76626efc044daee1c402e50f185bd633d1a688c332bc15c8fd5db4cdf2966b79" default)))
 '(fancy-splash-image "C:/Users/ayman_000/emacs.png")
 '(fci-rule-color "#2e2e2e")
 '(org-startup-truncated t)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/"))))
 '(package-selected-packages
   (quote
    (powershell windresize ido-better-flex 2048-game ido-vertical-mode evil-tutor sublimity smex smart-compile recentf-ext rainbow-delimiters popup pdf-tools nlinum magit imenu+ highlight-parentheses fsm eshell-prompt-extras eshell-git-prompt eshell-did-you-mean esh-help emmet-mode auto-package-update aurora-theme)))
 '(vc-annotate-background "#3b3b3b")
 '(vc-annotate-color-map
   (quote
    ((20 . "#dd5542")
     (40 . "#CC5542")
     (60 . "#fb8512")
     (80 . "#baba36")
     (100 . "#bdbc61")
     (120 . "#7d7c61")
     (140 . "#6abd50")
     (160 . "#6aaf50")
     (180 . "#6aa350")
     (200 . "#6a9550")
     (220 . "#6a8550")
     (240 . "#6a7550")
     (260 . "#9b55c3")
     (280 . "#6CA0A3")
     (300 . "#528fd1")
     (320 . "#5180b3")
     (340 . "#6380b3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))

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

;because ido-speed-hacks is terribly coded
(setq warning-minimum-level :error)
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
(global-nlinum-mode 1)
;nlinum seperator
(setq nlinum-format "%4d \u2502 ")
(setq backup-directory-alist `(("." . "~/.emacsbackups")))
;;;;;;;;;;;; misc ;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;byebye menu;;;;;;;;;;;;;;;;;
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(require 'spaceline-config)
(spaceline-emacs-theme)
;(require 'powerline)
;(powerline-default-theme)
;(add-hook 'desktop-after-read-hook 'powerline-reset)
;;;;;;;;;;;;;;;;;;;;;Byebye menu;;;;;;;;;;;;;;;;;

;;;;;;;better mode-line ;;;;;;;;;;;;;;;;;;

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

;(add-hook 'window-setup-hook 'on-after-init)
(add-hook 'css-mode-hook 'rainbow-mode)
(require 'neotree)
(global-set-key (kbd "C-c f") 'neotree-toggle)
(add-to-list 'custom-theme-load-path "C:/Users/ayman_000/AppData/Roaming/.emacs.d/themes")
(load-theme 'atom-one-dark t)

;hides abbrev-mode, company-mode, and yas/minor-mode
(when (require 'diminish nil 'noerror)
  (eval-after-load "company"
      '(diminish 'company-mode ""))
  (eval-after-load "abbrev"
    '(diminish 'abbrev-mode ""))
  (eval-after-load "yasnippet"
    '(diminish 'yas/minor-mode "")))

;random testing, makes cursor go through entire rainbow spectrum
; (defvar blink-cursor-colors (list  "#FF0000" "#FF7F00" "#FFFF00" "#00FF00" "0000FF" "551A8B" "4b0082"))
; (setq blink-cursor-count 0)
; (defun blink-cursor-timer-function ()  
;  (when (not (internal-show-cursor-p))
;    (when (>= blink-cursor-count (length blink-cursor-colors))
;      (setq blink-cursor-count 0))
;    (set-cursor-color (nth blink-cursor-count blink-cursor-colors))
;    (setq blink-cursor-count (+ 1 blink-cursor-count))
;    )
;  (internal-show-cursor nil (not (internal-show-cursor-p)))
;  )
(if (eq system-type 'windows-nt)
    (setq tramp-default-method "plink"))
(setq doc-view-ghostscript-program "gswin64c")
(setq org-log-done 'time)
(defadvice doc-view-display (after fit-width activate)
  (doc-view-fit-width-to-window))
(defun always-use-fancy-splash-screens-p () 1)
  (defalias 'use-fancy-splash-screens-p 'always-use-fancy-splash-screens-p)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
(smex-initialize)
(defun smex-update-after-load (unused)
  (when (boundp 'smex-cache)
    (smex-update)))
(add-hook 'after-load-functions 'smex-update-after-load)
(defadvice smex (around space-inserts-hyphen activate compile)
  (let ((ido-cannot-complete-command 
         `(lambda ()
            (interactive)
            (if (string= " " (this-command-keys))
                (insert ?-)
              (funcall ,ido-cannot-complete-command)))))
    ad-do-it))
(require 'ido-vertical-mode)
(ido-mode 1)
(ido-vertical-mode 1)
(setq ido-vertical-show-count t)
(ido-better-flex/enable)
(setq neo-smart-open t)
;non elpa, marmalade, or melpa packages
(add-to-list 'load-path "~/.emacs.d/lisp/")
(load "~/.emacs.d/lisp/ido-speed-hack/ido-speed-hack.elc")

