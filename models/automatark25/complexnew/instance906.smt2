(declare-const X String)
; ^(\d{1,})$|^(\d{1,}\.)$|^(\d{0,}?\.\d{1,})$|^([+-]\d{1,}(\.)?)$|^([+-](\d{1,})?\.\d{1,})$
(assert (not (str.in.re X (re.union (re.+ (re.range "0" "9")) (re.++ (re.+ (re.range "0" "9")) (str.to.re ".")) (re.++ (re.* (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9"))) (re.++ (re.union (str.to.re "+") (str.to.re "-")) (re.+ (re.range "0" "9")) (re.opt (str.to.re "."))) (re.++ (str.to.re "\x0a") (re.union (str.to.re "+") (str.to.re "-")) (re.opt (re.+ (re.range "0" "9"))) (str.to.re ".") (re.+ (re.range "0" "9")))))))
; Netspy\s\x3Aauto\x2Eisearch\x2EcomUser-Agent\x3Aaohobygi\x2fzwiwHWAEfhfksjzsfu\x2fahm\.uqs
(assert (not (str.in.re X (re.++ (str.to.re "Netspy") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re ":auto.isearch.comUser-Agent:aohobygi/zwiwHWAEfhfksjzsfu/ahm.uqs\x0a")))))
; ['`~!@#&$%^&*()-_=+{}|?><,.:;{}\"\\/\\[\\]]
(assert (not (str.in.re X (re.++ (re.union (str.to.re "'") (str.to.re "`") (str.to.re "~") (str.to.re "!") (str.to.re "@") (str.to.re "#") (str.to.re "&") (str.to.re "$") (str.to.re "%") (str.to.re "^") (str.to.re "*") (str.to.re "(") (re.range ")" "_") (str.to.re "=") (str.to.re "+") (str.to.re "{") (str.to.re "}") (str.to.re "|") (str.to.re "?") (str.to.re ">") (str.to.re "<") (str.to.re ",") (str.to.re ".") (str.to.re ":") (str.to.re ";") (str.to.re "\x22") (str.to.re "\x5c") (str.to.re "/") (str.to.re "[")) (str.to.re "]\x0a")))))
; ^((\+989)|(989)|(00989)|(09|9))([1|2|3][0-9]\d{7}$)
(assert (str.in.re X (re.++ (re.union (str.to.re "+989") (str.to.re "989") (str.to.re "00989") (str.to.re "09") (str.to.re "9")) (str.to.re "\x0a") (re.union (str.to.re "1") (str.to.re "|") (str.to.re "2") (str.to.re "3")) (re.range "0" "9") ((_ re.loop 7 7) (re.range "0" "9")))))
; User-Agent\x3AFiltered
(assert (str.in.re X (str.to.re "User-Agent:Filtered\x0a")))
(check-sat)
