(declare-const X String)
; /^User\x2dAgent\x3a\s*[^\n]*Safari[^\n]*\r\n/smi
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.comp (str.to.re "\x0a"))) (str.to.re "Safari") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re "\x0d\x0a/smi\x0a")))))
(check-sat)
