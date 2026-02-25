(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (str.to_re "447") (re.++ (re.+ (str.to_re "10")) (str.to_re "18")))))
(assert (str.in_re a (re.+ (re.++ (str.to_re "920") (re.+ (re.+ (re.range "1" "8")))))))
(assert (str.in_re z (re.+ (re.+ (re.++ (re.* (str.to_re "88")) (str.to_re "0"))))))
(assert (str.in_re y (re.++ (str.to_re "226") (re.+ (str.to_re "94")))))

(assert (> (+ (* (- 10) (str.len x)) (* (- 9) (str.len a)) (* (- 8) (str.to_int z))) 64))

(check-sat)