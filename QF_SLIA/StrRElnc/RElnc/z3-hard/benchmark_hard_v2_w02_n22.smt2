(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "65" x)))

(assert (str.in_re x (re.+ (re.union (re.* (str.to_re "96")) (re.* (str.to_re "434"))))))
(assert (str.in_re y (re.+ (re.union (re.union (str.to_re "800") (re.range "5" "9")) (str.to_re "55")))))

(assert (< (+ (* (- 2) (str.len y)) (* 6 (str.to_int y))) 74))

(check-sat)