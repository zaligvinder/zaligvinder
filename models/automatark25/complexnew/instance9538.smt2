(declare-const X String)
; <\?xml.*</note>
(assert (str.in.re X (re.++ (str.to.re "<?xml") (re.* re.allchar) (str.to.re "</note>\x0a"))))
; ^[a-zA-z0-9]+[@]{1}[a-zA-Z]+[.]{1}[a-zA-Z]+$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9"))) ((_ re.loop 1 1) (str.to.re "@")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 1) (str.to.re ".")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
; ((<body)|(<BODY))([^>]*)>
(assert (not (str.in.re X (re.++ (re.union (str.to.re "<body") (str.to.re "<BODY")) (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a")))))
; Porta\s+SSKC\s+\.cfgmPOPrtCUSTOMPalToolbarUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Porta") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SSKC") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ".cfgmPOPrtCUSTOMPalToolbarUser-Agent:\x0a")))))
; <[^/bp][^><]*>|<p[a-z][^><]*>|<b[^r][^><]*>|<br[a-z][^><]*>|</[^bp]+>|</p[a-z]+>|</b[^r]+>|</br[a-z]+>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.union (re.++ (re.union (str.to.re "/") (str.to.re "b") (str.to.re "p")) (re.* (re.union (str.to.re ">") (str.to.re "<"))) (str.to.re ">")) (re.++ (str.to.re "p") (re.range "a" "z") (re.* (re.union (str.to.re ">") (str.to.re "<"))) (str.to.re ">")) (re.++ (str.to.re "b") (re.comp (str.to.re "r")) (re.* (re.union (str.to.re ">") (str.to.re "<"))) (str.to.re ">")) (re.++ (str.to.re "br") (re.range "a" "z") (re.* (re.union (str.to.re ">") (str.to.re "<"))) (str.to.re ">")) (re.++ (str.to.re "/") (re.+ (re.union (str.to.re "b") (str.to.re "p"))) (str.to.re ">")) (re.++ (str.to.re "/p") (re.+ (re.range "a" "z")) (str.to.re ">")) (re.++ (str.to.re "/b") (re.+ (re.comp (str.to.re "r"))) (str.to.re ">")) (re.++ (str.to.re "/br") (re.+ (re.range "a" "z")) (str.to.re ">\x0a")))))))
(check-sat)
