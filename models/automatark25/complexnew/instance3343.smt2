(declare-const X String)
; /filename=[a-z0-9]+\x0d\x0a/H
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "\x0d\x0a/H\x0a")))))
; thesearchresltLoggerHost\x3ABetaHWAEHost\x3Ais
(assert (not (str.in.re X (str.to.re "thesearchresltLoggerHost:BetaHWAEHost:is\x0a"))))
; ^([A-Z]+[a-zA-Z]*)(\s|\-)?([A-Z]+[a-zA-Z]*)?(\s|\-)?([A-Z]+[a-zA-Z]*)?$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.++ (re.+ (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))))) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.++ (re.+ (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re "\x0a") (re.+ (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))))))
(check-sat)
