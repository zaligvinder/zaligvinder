(declare-const X String)
; /filename=[^\n]*\x2edocx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".docx/i\x0a")))))
; Hourspjpoptwql\x2frlnjFrom\x3Asbver\x3aGhost
(assert (not (str.in.re X (str.to.re "Hourspjpoptwql/rlnjFrom:sbver:Ghost\x13\x0a"))))
; ^(.|\n){0,16}$
(assert (str.in.re X (re.++ ((_ re.loop 0 16) (re.union re.allchar (str.to.re "\x0a"))) (str.to.re "\x0a"))))
; v\x2E\s+ocllceclbhs\x2fgth\w+http\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (str.in.re X (re.++ (str.to.re "v.") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ocllceclbhs/gth") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "http://www.searchinweb.com/search.php?said=bar\x0a"))))
(check-sat)
