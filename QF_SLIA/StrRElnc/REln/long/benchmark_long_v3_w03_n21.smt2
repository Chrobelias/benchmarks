(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.range "0" "6"))))
(assert (str.in_re z (re.++ (re.union (str.to_re "425") (re.+ (str.to_re "1"))) (str.to_re "3"))))
(assert (str.in_re y (re.* (re.++ (str.to_re "728") (str.to_re "4")))))

(assert (<= (+ (* (- 8) (str.len z)) (* (- 2) (str.to_int y))) 78))
(assert (<= (+ (str.to_int x) (* (- 6) (str.to_int y)) (* 3 (str.to_int z))) 57))

(check-sat)