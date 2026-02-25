(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "47" y)))

(assert (str.in_re x (re.+ (re.union (re.union (str.to_re "574") (str.to_re "695")) (re.range "4" "9")))))
(assert (str.in_re y (re.union (re.* (str.to_re "6")) (re.range "3" "5"))))

(assert (< (+ (* (- 7) (str.len x)) (* (- 5) (str.len y)) (* 10 (str.to_int x))) 17))

(check-sat)