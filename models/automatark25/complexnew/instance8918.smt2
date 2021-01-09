(declare-const X String)
; HWAE.*wowokay\s%3fsearchresltX-Mailer\x3AisSubject\x3a
(assert (str.in.re X (re.++ (str.to.re "HWAE") (re.* re.allchar) (str.to.re "wowokay") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "%3fsearchresltX-Mailer:\x13isSubject:\x0a"))))
; ToolbarUser-Agent\x3AFrom\x3A
(assert (str.in.re X (str.to.re "ToolbarUser-Agent:From:\x0a")))
; /filename=[^\n]*\x2edcr/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dcr/i\x0a")))))
(check-sat)
