(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.union (str.to_re "211") (re.+ (str.to_re "739"))) (re.range "2" "5"))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "592") (str.to_re "626")))))
(assert (str.in_re z (re.* (re.+ (str.to_re "596")))))
(assert (str.in_re a (re.union (re.+ (re.range "7" "9")) (re.* (str.to_re "30")))))

(assert (> (+ (* 8 (str.len x)) (* (- 10) (str.to_int z))) 86))

(check-sat)