(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.union (re.* (str.to_re "338")) (re.++ (str.to_re "29") (re.range "0" "9")))))
(assert (str.in_re x (re.* (str.to_re "211"))))
(assert (str.in_re z (re.union (re.+ (re.range "0" "6")) (str.to_re "578"))))

(assert (= (+ (* 8 (str.len x)) (* (- 5) (str.to_int x)) (* (- 2) (str.to_int y)) (* (- 10) (str.to_int z))) 1))

(check-sat)