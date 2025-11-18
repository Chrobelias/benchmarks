(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 10))

(assert (str.in_re x (re.++ (re.++ (str.to_re "95") (re.+ (str.to_re "65"))) (re.+ (str.to_re "254")))))
(assert (str.in_re y (re.+ (re.union (re.union (str.to_re "422") (re.* (str.to_re "739"))) (str.to_re "9")))))
(assert (str.in_re z (re.union (re.+ (re.range "3" "7")) (str.to_re "831"))))

(assert (= (+ (* 6 (str.to_int x)) (* (- 4) (str.to_int y)) (* 6 (str.to_int z))) 10))
(assert (> (+ (* 8 (str.len y)) (* (- 7) (str.to_int z))) 31))

(check-sat)