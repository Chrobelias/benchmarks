(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.* (str.to_re "870"))))
(assert (str.in_re z (re.union (re.* (str.to_re "8")) (re.++ (re.+ (str.to_re "314")) (str.to_re "816")))))
(assert (str.in_re y (re.++ (re.+ (str.to_re "868")) (str.to_re "40"))))

(assert (<= (+ (* (- 5) (str.len x)) (* 8 (str.len y)) (* (- 10) (str.len z))) 32))
(assert (<= (+ (* 4 (str.to_int x)) (* 6 (str.to_int y)) (* 3 (str.to_int z))) 44))

(check-sat)