(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.* (re.union (re.range "6" "9") (re.++ (str.to_re "94") (str.to_re "54"))))))
(assert (str.in_re z (re.+ (re.++ (re.+ (str.to_re "7")) (str.to_re "55")))))
(assert (str.in_re y (re.* (re.union (str.to_re "84") (str.to_re "276")))))

(assert (> (+ (* 6 (str.to_int x)) (* (- 6) (str.to_int y)) (* 8 (str.to_int z))) 49))
(assert (< (+ (* (- 4) (str.len x)) (* 9 (str.len y)) (* (- 4) (str.len z))) 90))

(check-sat)