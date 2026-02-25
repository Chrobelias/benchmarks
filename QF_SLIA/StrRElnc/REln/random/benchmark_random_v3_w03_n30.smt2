(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.* (re.union (str.to_re "82") (re.* (re.* (str.to_re "99")))))))
(assert (str.in_re y (re.++ (re.* (str.to_re "60")) (re.+ (str.to_re "93")))))
(assert (str.in_re z (re.union (str.to_re "5") (re.+ (re.range "5" "9")))))

(assert (<= (+ (* (- 10) (str.len x)) (* 10 (str.len y)) (* (- 5) (str.len z))) 10))
(assert (> (+ (* (- 6) (str.len x)) (* (- 8) (str.to_int y))) 35))

(check-sat)