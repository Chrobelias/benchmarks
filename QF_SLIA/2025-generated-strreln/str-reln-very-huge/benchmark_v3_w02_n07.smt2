(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 100))

(assert (str.in_re x (re.+ (re.union (str.to_re "938") (re.+ (re.* (str.to_re "9")))))))
(assert (str.in_re y (re.++ (re.* (str.to_re "58")) (re.union (str.to_re "834") (str.to_re "2")))))
(assert (str.in_re z (re.union (re.+ (re.union (str.to_re "669") (re.+ (str.to_re "69")))) (str.to_re "10"))))

(assert (>= (+ (* (- 8) (str.len x)) (* 7 (str.len y)) (* (- 5) (str.len z))) 40))
(assert (< (+ (* 2 (str.to_int x)) (* 9 (str.to_int y)) (* 8 (str.to_int z))) 75))

(check-sat)