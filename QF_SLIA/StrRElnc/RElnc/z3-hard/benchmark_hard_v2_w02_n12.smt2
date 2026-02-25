(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "51" y)))

(assert (str.in_re y (re.+ (re.union (re.union (str.to_re "610") (str.to_re "9")) (str.to_re "34")))))
(assert (str.in_re x (re.* (re.union (re.* (re.range "0" "5")) (str.to_re "5")))))

(assert (< (+ (* (- 10) (str.len x)) (* 7 (str.len y)) (* 4 (str.to_int x))) 23))

(check-sat)