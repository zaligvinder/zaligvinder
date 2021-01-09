(declare-const X String)
; /\x2eogx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.ogx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ("[^"]*")|('[^\r]*)(\r\n)?
(assert (not (str.in.re X (re.union (re.++ (str.to.re "\x22") (re.* (re.comp (str.to.re "\x22"))) (str.to.re "\x22")) (re.++ (re.opt (str.to.re "\x0d\x0a")) (str.to.re "\x0a'") (re.* (re.comp (str.to.re "\x0d"))))))))
; &#\d{2,5};
(assert (str.in.re X (re.++ (str.to.re "&#") ((_ re.loop 2 5) (re.range "0" "9")) (str.to.re ";\x0a"))))
(check-sat)
