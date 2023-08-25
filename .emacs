(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(calendar-column-width 4)
 '(calendar-intermonth-spacing 2)
 '(calendar-left-margin 2)
 '(column-number-mode t)
 '(custom-enabled-themes '(wheatgrass))
 '(desktop-save-mode t)
 '(eww-download-directory "C:/Users/Kelsey/Downloads")
 '(fill-column 80)
 '(fringe-mode '(nil . 0) nil (fringe))
 '(inhibit-startup-screen t)
 '(initial-buffer-choice "C:/Users/Kelsey/Dropbox (University of Michigan)")
 '(mouse-wheel-scroll-amount '(5 ((shift) . 1) ((meta) . 5) ((control) . text-scale)))
 '(org-agenda-files
   '("C:/Users/Kelsey/Dropbox (University of Michigan)/misc/personal.org" "C:/Users/Kelsey/Dropbox (University of Michigan)/grad_school/spring_2023/semester.org"))
 '(org-export-backends '(ascii beamer html icalendar latex md odt))
 '(org-roam-directory
   "C:/Users/Kelsey/Dropbox (University of Michigan)/research/org-roam")
 '(org-startup-indented t)
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages
   '(ssh csv-mode emms-soundcloud org-roam memory-usage emms eglot org code-cells coterm which-key windower ampc python auctex gnu-elpa))
 '(python-shell-completion-native-enable t)
 '(python-shell-interpreter "python3")
 '(python-shell-interpreter-args "-m IPython")
 '(scroll-conservatively 100))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.



;; EMMS player (custom suggestion from emacswiki.org/emacs/EMMS#h5o-20)
(add-to-list 'exec-path "C:/Program Files (x86)/MPlayer for Windows/")
(add-to-list 'exec-path "C:/Program Files (x86)/Windows Media Player/")
(require 'emms)
(require 'emms-player-mplayer)
(setq emms-player-list '(emms-player-mplayer))
;; Make Windows Media Player to work for MIDI files
(require 'emms-player-simple)
(define-emms-simple-player wmplayer '(file)(emms-player-simple-regexp "mid") "wmplayer")
(add-to-list 'emms-player-list 'emms-player-wmplayer)
;; Custom keybindings for playing files
(global-set-key (kbd "C-c e f") 'emms-play-file)
(global-set-key (kbd "C-c e 3") 'emms-play-m3u-playlist)
(global-set-key (kbd "C-c e s") 'emms-stop)

;; Settings for org-roam
;; Automatically sync the org-roam database
(org-roam-db-autosync-mode)
;; Keybinding suggestions for ORG-ROAM (from David Wilson of System Crafters)
;; https://systemcrafters.cc/build-a-second-brain-in-emacs/getting-started-with-org-roam/
(global-set-key (kbd "C-c n l") 'org-roam-buffer-toggle)
(global-set-key (kbd "C-c n f") 'org-roam-node-find)
(global-set-key (kbd "C-c n i") 'org-roam-node-insert)

(put 'upcase-region 'disabled nil)
