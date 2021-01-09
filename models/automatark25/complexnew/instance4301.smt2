(declare-const X String)
; ^(0|1)+$
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "0") (str.to.re "1"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2esearch-ms/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".search-ms/i\x0a")))))
; zmnjgmomgbdz\x2fzzmw\.gzt\s+Reports\s+HostHost\x3aHost\x3AHost\x3AMyWebSearchSearchAssistant
(assert (str.in.re X (re.++ (str.to.re "zmnjgmomgbdz/zzmw.gzt") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Reports") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HostHost:Host:Host:MyWebSearchSearchAssistant\x0a"))))
; Host\x3A\d+UI2.*areprotocolhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "UI2") (re.* re.allchar) (str.to.re "areprotocolhttp://www.searchinweb.com/search.php?said=bar\x0a"))))
(check-sat)
