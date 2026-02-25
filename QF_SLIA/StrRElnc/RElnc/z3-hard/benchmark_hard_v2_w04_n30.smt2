(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "38" y)))

(assert (str.in_re y (re.+ (re.union (str.to_re "33") (str.to_re "43")))))
(assert (str.in_re x (re.* (re.range "1" "9"))))

(assert (>= (+ (* 7 (str.len y)) (* (- 3) (str.to_int y))) 13))
(assert (< (+ (* 7 (str.to_int x)) (* 8 (str.to_int y))) 46))
(assert (> (+ (* 5 (str.to_int x)) (* (- 4) (str.to_int y))) 13))

(check-sat)