(declare-const X String)
; /filename=[^\n]*\x2es3m/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".s3m/i\x0a"))))
; ("[^"]*")|('[^\r]*)(\r\n)?
(assert (str.in.re X (re.union (re.++ (str.to.re "\x22") (re.* (re.comp (str.to.re "\x22"))) (str.to.re "\x22")) (re.++ (re.opt (str.to.re "\x0d\x0a")) (str.to.re "\x0a'") (re.* (re.comp (str.to.re "\x0d")))))))
; [^A-Za-z0-9]
(assert (str.in.re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (str.to.re "\x0a"))))
; SecureNet\sHost\x3AX-Mailer\x3Aas\x2Estarware\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "SecureNet") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:X-Mailer:\x13as.starware.com\x0a")))))
(check-sat)
