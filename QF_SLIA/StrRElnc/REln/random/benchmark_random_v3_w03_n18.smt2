(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.* (re.++ (re.++ (str.to_re "568") (str.to_re "3")) (str.to_re "1")))))
(assert (str.in_re z (re.++ (str.to_re "64") (re.+ (str.to_re "738")))))
(assert (str.in_re x (re.union (str.to_re "445") (re.union (str.to_re "45") (re.+ (str.to_re "93"))))))

(assert (< (+ (* (- 5) (str.to_int x)) (* (- 5) (str.to_int y)) (* (- 8) (str.to_int z))) 68))
(assert (= (+ (* (- 9) (str.len x)) (* (- 8) (str.len y)) (* 5 (str.len z))) 78))
(assert (< (+ (* 5 (str.to_int x)) (* (- 9) (str.to_int y)) (* (- 8) (str.to_int z))) 32))

(check-sat)