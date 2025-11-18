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

(assert (str.in_re x (re.union (str.to_re "12") (re.+ (str.to_re "61")))))
(assert (str.in_re y (re.++ (re.* (str.to_re "19")) (re.* (re.* (str.to_re "86"))))))
(assert (str.in_re z (re.+ (re.++ (str.to_re "67") (re.range "3" "8")))))

(assert (= (+ (* 7 (str.to_int x)) (* (- 9) (str.to_int y)) (* 2 (str.to_int z))) 14))
(assert (< (+ (* 2 (str.to_int x)) (* 8 (str.to_int y)) (* (- 3) (str.to_int z))) 98))
(assert (< (+ (* 9 (str.len z)) (* (- 3) (str.to_int y))) 32))

(check-sat)