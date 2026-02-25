(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ "94" y) (str.++ "94" x)))

(assert (str.in_re x (re.union (re.+ (str.to_re "731")) (str.to_re "8"))))
(assert (str.in_re y (re.union (re.union (re.* (str.to_re "125")) (str.to_re "4")) (re.+ (re.range "7" "9")))))

(assert (<= (* 10 (str.to_int y)) 0))
(assert (< (+ (* (- 2) (str.len x)) (* 10 (str.to_int y))) 83))

(check-sat)