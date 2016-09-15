;Custom emacs configuration by eccentricayman on Github

;(let ((file-name-handler-alist nil))
;(run-with-idle-timer
; 5 nil
; (lambda ()
;   (setq gc-cons-threshold 1000000)
;   (message "gc-cons-threshold restored to %S"
;            gc-cons-threshold)))
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
    ("b61c55259c639a54628f91452b060b99c550a1269eb947e372321b806b68f114" "6998bd3671091820a6930b52aab30b776faea41449b4246fdce14079b3e7d125" "70340909b0f7e75b91e66a02aa3ad61f3106071a1a4e717d5cdabd8087b47ec4" "fbcdb6b7890d0ec1708fa21ab08eb0cc16a8b7611bb6517b722eba3891dfc9dd" "1160f5fc215738551fce39a67b2bcf312ed07ef3568d15d53c87baa4fd1f4d4e" "4f0f2f5ec60a4c6881ba36ffbfef31b2eea1c63aad9fe3a4a0e89452346de278" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "b869a1353d39ab81b19eb79de40ff3e7bb6eaad705e61f7e4dbdcb183f08c5a6" "0788bfa0a0d0471984de6d367bb2358c49b25e393344d2a531e779b6cec260c5" "51277c9add74612c7624a276e1ee3c7d89b2f38b1609eed6759965f9d4254369" "977513781c8dd86f4f0a04dbf518df5ba496da42b71173368b305478703eea42" "2a5be663818e1e23fd2175cc8dac8a2015dcde6b2e07536712451b14658bbf68" "8e7ca85479dab486e15e0119f2948ba7ffcaa0ef161b3facb8103fb06f93b428" "e8586a76a96fd322ccb644ca0c3a1e4f4ca071ccfdb0f19bef90c4040d5d3841" "beeb5ac6b65fcccfe434071d4624ff0308b5968bf2f0c01b567d212bcaf66054" "e87a2bd5abc8448f8676365692e908b709b93f2d3869c42a4371223aab7d9cf8" "705f3f6154b4e8fac069849507fd8b660ece013b64a0a31846624ca18d6cf5e1" "0c1103b91002bd7f301b7f58585b55469eddf26d9d46518893e1269617a9ec86" "5058d3e0a733f07a0e4baf515224925c3036e55bca952460e3e38a79b1890ed5" "919469423e232db3cc35f6a94134051dd8a5a95d5cbb2a9b3c519e371a069615" "4f5bb895d88b6fe6a983e63429f154b8d939b4a8c581956493783b2515e22d6d" "1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "b47af5d58090932fbe1aa81683ff472a35b49b224c214173a86859dd8d6e4f0c" "1c7c3a5b599aa7e063dfb7bbbe602fea9ce020e9d12a761bea4f4734718f8825" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "03e3e79fb2b344e41a7df897818b7969ca51a15a67dc0c30ebbdeb9ea2cd4492" "e8e744a1b0726814ac3ab86ad5ccdf658b9ff1c5a63c4dc23841007874044d4a" "01c5ebefcabc983c907ee30e429225337d0b4556cc1d21df0330d337275facbb" "e681c4fc684a543ce97c2d55082c6585182c0089f605dc9a5fe193870f03edc6" "f2503f0a035c2122984e90eb184185769ee665de5864edc19b339856942d2d2d" "b04425cc726711a6c91e8ebc20cf5a3927160681941e06bc7900a5a5bfe1a77f" "870a63a25a2756074e53e5ee28f3f890332ddc21f9e87d583c5387285e882099" "79a3f477ac0cb4a106f78b6109614e991564a5c2467c36e6e854d4bc1102e178" "790e74b900c074ac8f64fa0b610ad05bcfece9be44e8f5340d2d94c1e47538de" "76626efc044daee1c402e50f185bd633d1a688c332bc15c8fd5db4cdf2966b79" default)))
 '(fancy-splash-image "~/.emacs.d/emacs.png")
 '(fci-rule-color "#2e2e2e")
 '(org-startup-truncated t)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/"))))
 '(package-selected-packages
   (quote
    (windresize ido-better-flex ido-vertical-mode smex recentf-ext rainbow-delimiters popup highlight-parentheses fsm atom-one-dark-theme)))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
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
 '(default ((t (:family "Monaco" :height 120)))))

;because ido-speed-hacks is terribly coded
;(setq warning-minimum-level :error)
;; Preset width nlinum
;(add-hook 'nlinum-mode-hook
;          (lambda ()
;            (setq nlinum--width
;                  (length (number-to-string
;                           (count-lines (point-min) (point-max)))))))

 ;;;;;;;;;;;; misc ;;;;;;;;;;;;;;;;;;;;;;;
;; enable clipboard
(setq x-select-enable-clipboard t)
;; autocomplete paired brackets
(electric-pair-mode 1)
(global-set-key [C-tab] 'other-window)
;; tramp mode for editing through ssh
(setq tramp-default-method "ssh")
;; show paren mode
(show-paren-mode 1)
;;disabled because emacsclient is weird with it
;(global-nlinum-mode 1)
;; enable lines mode
(global-linum-mode 1)
(setq backup-directory-alist `(("." . "~/.emacsbackups")))
;;;;;;;;;;;; misc ;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;byebye menu;;;;;;;;;;;;;;;;;
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;loading f.el (os x is the load one)
;(require 'f.el)
(load "~/.emacs.d/lisp/f/f.elc")
    
;if opening a file, don't open *gnu emacs* buffer
(when (and (string= "*scratch*" (buffer-name)) (not (buffer-file-name)))
    (display-splash-screen))

;better terminal line, faster
(if (display-graphic-p)
    (progn
      (require 'spaceline-config)
      (spaceline-emacs-theme)
      (global-hl-line-mode 1))
  (progn
    (powerline-default-theme)
    (require 'airline-themes)
    (load-theme 'airline-distinguished)))

;also useless, was to fix powerline messing up but we have spaceline now!
;(add-hook 'desktop-after-read-hook 'powerline-reset)
;;;;;;;;;;;;;;;;;;;;;Byebye menu;;;;;;;;;;;;;;;;;

;;;;;;;better mode-line ;;;;;;;;;;;;;;;;;;

;;;;;;;better mode-line;;;;;;;;;;;;;;;;;

;;;;;;;;starting dir;;;;;;;;;;;
(setq default-directory "~")

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


;grr @ difficult autocompletes..
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
(require 'neotree)
(global-set-key (kbd "C-c f") 'neotree-toggle)

;magit
(global-set-key (kbd "C-c g") 'magit-status)

;hides abbrev-mode, company-mode, and yas/minor-mode
(when (require 'diminish nil 'noerror)
  (eval-after-load "company"
    '(diminish 'company-mode ""))
  (eval-after-load "abbrev"
    '(diminish 'abbrev-mode ""))
  (eval-after-load "yasnippet"
    '(diminish 'yas/minor-mode ""))
)

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
;non elpa/melpa/marmalade packages, like the M-x speed fixy thingy
(add-to-list 'load-path "~/.emacs.d/lisp/")
(load "~/.emacs.d/lisp/ido-speed-hack/ido-speed-hack.elc")

;gets rid of that shitty as fuck light blue background
(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))
(add-hook 'window-setup-hook 'on-after-init)

;miscellanous new stuff!
;(evil-define-key 'normal emacs-lisp-mode-map (kbd ";") 'smex)

;moving lines up and down
(defun move-line-up ()
  "Move up the current line."
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

(defun move-line-down ()
  "Move down the current line."
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))
(global-set-key [(meta shift up)]  'move-line-up)
(global-set-key [(meta shift down)]  'move-line-down)

;might slowdown, but allows vim + emacs
;(require 'powerline)

1;;;;;;TEMP;;;;;;
;(spaceline-emacs-theme)
;;;;;;TEMP;;;;;;

;;;;;;;;;;FIX THIS;;;;;;;;;;
;dat vim
;(defun to-evil ()
;    (evil-mode 1)
;    (powerline-default-theme)
;    (load-theme 'airline-base16-shell-dark)
;    )

;(defun to-emacs ()
;    (evil-mode 0)
;    ;(powerline-reset)
;    (spaceline-emacs-theme))

;defining keys for emacs-mode and vim-mode
;(global-set-key (kbd "C-c e") 'to-emacs())
;(global-set-key (kbd "C-c v") 'to-vim())

;start in emacs mode
;(add-hook 'after-init 'to-emacs())
;;;;;;;;;;FIX THIS;;;;;;;;;;;
(setq redisplay-dont-pause t)
;)

;processing
(autoload 'processing-mode "processing-mode" "Processing mode" t)
(add-to-list 'auto-mode-alist '("\\.pde$" . processing-mode))

(setq processing-location "/home/eccentricayman/Github/processing-3.1.1/processing-java")
(setq processing-application-dir "/home/eccentricayman/Github/processing-3.1.1/processing")
(setq processing-sketchbook-dir "/home/eccentricayman/sketchbook")
(global-set-key (kbd "C-c p") 'processing-sketch-run)


;java sht (install f.el manually on os x)
(defun jcompile ()
  "Runs java code with javac, only for simple shit"
  (interactive)
  (shell-command-on-region
  ;seperate buffer
   (point-min)
   (point-max)
   ;da command
   (concat "javac " (buffer-file-name) " && " "java " (f-base buffer-file-name))
   ;name of buffer
   "Java Compilation"
   ))

(global-set-key (kbd "C-c j") 'jcompile)


