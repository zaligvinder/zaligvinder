(declare-const X String)
; /\x2eqt([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.qt") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /^From\x3A[^\r\n]*Trojaner-Info<webmaster@trojaner-info\x2Ede>/smi
(assert (not (str.in.re X (re.++ (str.to.re "/From:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "Trojaner-Info<webmaster@trojaner-info.de>/smi\x0a")))))
; \S*?[\["].*?[\]"]|\S+
(assert (not (str.in.re X (re.union (re.++ (re.* (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (re.union (str.to.re "[") (str.to.re "\x22")) (re.* re.allchar) (re.union (str.to.re "]") (str.to.re "\x22"))) (re.++ (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "\x0a"))))))
(check-sat)
