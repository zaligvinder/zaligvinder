(declare-const X String)
; Authorization\x3a\d+lnzzlnbk\x2fpkrm\.fin
(assert (str.in.re X (re.++ (str.to.re "Authorization:") (re.+ (re.range "0" "9")) (str.to.re "lnzzlnbk/pkrm.fin\x0a"))))
; /SOAPAction\x3a[^\r\n]*Get(ServerTime|FileList|File)\x22/i
(assert (not (str.in.re X (re.++ (str.to.re "/SOAPAction:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "Get") (re.union (str.to.re "ServerTime") (str.to.re "FileList") (str.to.re "File")) (str.to.re "\x22/i\x0a")))))
; www\x2Epurityscan\x2Ecom.*
(assert (not (str.in.re X (re.++ (str.to.re "www.purityscan.com") (re.* re.allchar) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2etga/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".tga/i\x0a"))))
; Host\x3A.*NETObserve\d+Host\x3aohgdhkzfhdzo\x2fuwpOK\r\n
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "NETObserve") (re.+ (re.range "0" "9")) (str.to.re "Host:ohgdhkzfhdzo/uwpOK\x0d\x0a\x0a"))))
(check-sat)
