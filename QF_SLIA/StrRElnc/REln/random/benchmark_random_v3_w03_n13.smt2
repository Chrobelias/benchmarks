(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.+ (str.to_re "91"))))
(assert (str.in_re y (re.union (re.+ (str.to_re "8")) (re.range "2" "9"))))
(assert (str.in_re x (re.* (re.* (re.+ (str.to_re "3"))))))

(assert (<= (+ (* 7 (str.len x)) (* 2 (str.to_int y))) 65))
(assert (= (+ (* (- 6) (str.len x)) (* 6 (str.len y))) 71))

(check-sat)