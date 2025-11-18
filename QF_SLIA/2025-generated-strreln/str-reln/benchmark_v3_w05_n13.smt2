(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.union (re.++ (re.* (str.to_re "2")) (str.to_re "76")) (re.* (re.range "7" "9")))))
(assert (str.in_re y (re.+ (re.union (str.to_re "400") (str.to_re "23")))))
(assert (str.in_re z (re.union (str.to_re "287") (re.+ (re.+ (re.+ (str.to_re "969")))))))

(assert (<= (+ (str.len x) (* 9 (str.to_int y)) (* (- 7) (str.to_int z))) 78))
(assert (> (+ (* 3 (str.len x)) (* (- 9) (str.len y)) (* (- 2) (str.len z))) 85))
(assert (<= (+ (* (- 9) (str.len y)) (* 2 (str.len z)) (* (- 3) (str.to_int x)) (* 4 (str.to_int y))) 70))

(check-sat)