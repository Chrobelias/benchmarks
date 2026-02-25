(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.union (re.* (str.to_re "1")) (re.+ (re.* (str.to_re "56"))))))
(assert (str.in_re y (re.++ (re.* (str.to_re "0")) (re.+ (str.to_re "94")))))
(assert (str.in_re x (re.+ (re.+ (re.range "6" "9")))))

(assert (> (+ (* 7 (str.len x)) (* 5 (str.len y))) 2))
(assert (> (+ (* (- 2) (str.to_int x)) (* 7 (str.to_int z))) 11))
(assert (>= (+ (* (- 10) (str.to_int x)) (* 2 (str.to_int y)) (* 7 (str.to_int z))) 97))

(check-sat)