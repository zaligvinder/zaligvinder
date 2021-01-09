(declare-const X String)
; /[^\n -~\r]{4}/P
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 4 4) (re.union (str.to.re "\x0a") (re.range " " "~") (str.to.re "\x0d"))) (str.to.re "/P\x0a"))))
; User-Agent\x3A.*User-Agent\x3A.*spyblini\x2Einidata\.warezclient\.com
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "spyblini.inidata.warezclient.com\x0a"))))
; href\s*=\s*\"((\/)([i])(\/)+([\w\-\.,@?^=%&:/~\+#]*[\w\-\@?^=%&/~\+#]+)*)\"
(assert (not (str.in.re X (re.++ (str.to.re "href") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22\x22\x0a/i") (re.+ (str.to.re "/")) (re.* (re.++ (re.* (re.union (str.to.re "-") (str.to.re ".") (str.to.re ",") (str.to.re "@") (str.to.re "?") (str.to.re "^") (str.to.re "=") (str.to.re "%") (str.to.re "&") (str.to.re ":") (str.to.re "/") (str.to.re "~") (str.to.re "+") (str.to.re "#") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.+ (re.union (str.to.re "-") (str.to.re "@") (str.to.re "?") (str.to.re "^") (str.to.re "=") (str.to.re "%") (str.to.re "&") (str.to.re "/") (str.to.re "~") (str.to.re "+") (str.to.re "#") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))))))
; ^[A]$|^[C]$|^[D]$|^[F]$|^[H]$|^[K]$|^[L]$|^[M]$|^[O]$|^[P]$
(assert (str.in.re X (re.union (str.to.re "A") (str.to.re "C") (str.to.re "D") (str.to.re "F") (str.to.re "H") (str.to.re "K") (str.to.re "L") (str.to.re "M") (str.to.re "O") (str.to.re "P\x0a"))))
; ^([1-9]{1}[0-9]{0,7})+((,[1-9]{1}[0-9]{0,7}){0,1})+$
(assert (not (str.in.re X (re.++ (re.+ (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 7) (re.range "0" "9")))) (re.+ (re.opt (re.++ (str.to.re ",") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 7) (re.range "0" "9"))))) (str.to.re "\x0a")))))
(check-sat)
