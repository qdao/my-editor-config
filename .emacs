(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(menu-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))

 ;;关闭启动时的画面
 (setq inhibit-startup-message t)
 (setq gnus-inhibit-startup-message t)

 ;;关闭出错时的提示音
 ;;(setq visible-bell t)

;;设置窗口位置为屏库左上角(0,0)
(set-frame-position (selected-frame) 100 100)
;;设置宽和高,我的十寸小本是110,33,大家可以调整这个参数来适应自己屏幕大小
(set-frame-width (selected-frame) 90)
(set-frame-height (selected-frame) 28)

;;设置utf-8编码
(set-language-environment 'Chinese-GB)
(set-keyboard-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
(setq-default pathname-coding-system 'utf-8)




;;设置scheme模式和解释器
(autoload 'scheme-mode "cmuscheme" "Major mode for scheme" t)
(autoload 'run-scheme "cmuscheme" "Switch to interactive Scheme buffer" t)
(setq auto-mode-alist (cons '("\\.ss" . scheme-mode) auto-mode-alist))
(custom-set-variables '(scheme-program-name "petite.exe"))

;;设置common lisp模式和解释器
(setq inferior-lisp-program "sbcl.exe")  ;解释器路径
(add-to-list 'load-path "C:/Mines/emacs/slime") ;slime路径
(require 'slime)
(slime-setup)
(require 'slime-autoloads)
(slime-setup '(slime-fancy))
