(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.union (re.union (re.* (str.to_re "21")) (str.to_re "453")) (re.+ (str.to_re "4")))))
(assert (str.in_re y (re.union (re.* (str.to_re "21")) (re.+ (re.* (str.to_re "85"))))))
(assert (str.in_re z (re.+ (re.union (re.* (str.to_re "209")) (str.to_re "801")))))

(assert (>= (+ (* 3 (str.to_int x)) (* (- 8) (str.to_int y)) (* (- 3) (str.to_int z))) 61))
(assert (< (+ (* (- 9) (str.len y)) (* 2 (str.len z)) (* 4 (str.to_int y))) 40))
(assert (<= (+ (* 6 (str.len x)) (* (- 4) (str.len y)) (* 4 (str.len z))) 73))

(check-sat)