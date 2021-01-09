(declare-const X String)
; port\s+aresflashdownloader\x2Ecom\s+adfsgecoiwnf\x23\x23\x23\x23User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "port") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "aresflashdownloader.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "adfsgecoiwnf\x1b####User-Agent:\x0a"))))
; ^(\(?\+?[0-9]*\)?)?[0-9_\- \(\)]*$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "(")) (re.opt (str.to.re "+")) (re.* (re.range "0" "9")) (re.opt (str.to.re ")")))) (re.* (re.union (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re " ") (str.to.re "(") (str.to.re ")"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ef4b/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".f4b/i\x0a")))))
; /\x2ert([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.rt") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
