(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re z (re.+ (re.range "4" "6"))))
(assert (str.in_re a (re.union (str.to_re "836") (re.+ (re.* (str.to_re "88"))))))
(assert (str.in_re y (re.+ (re.union (str.to_re "77") (re.* (str.to_re "350"))))))
(assert (str.in_re x (re.+ (re.union (re.++ (str.to_re "806") (str.to_re "482")) (str.to_re "760")))))

(assert (= (+ (* 8 (str.len x)) (* 7 (str.to_int z))) 32))

(check-sat)