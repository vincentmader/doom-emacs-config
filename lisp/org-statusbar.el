  (add-hook 
    'org-clock-in-hook 
    (lambda () 
      (call-process 
        "/usr/bin/osascript" nil 0 nil "-e" 
        (concat 
          "tell application \"org-clock-statusbar\" to clock in \"" 
          (replace-regexp-in-string "\"" "\\\\\"" org-clock-current-task) 
          "\""
          )
        )
      )
    )

  (add-hook 
    'org-clock-out-hook 
    (lambda () 
      (call-process 
        "/usr/bin/osascript" nil 0 nil "-e" 
        "tell application \"org-clock-statusbar\" to clock out"
        )
      )
    )
