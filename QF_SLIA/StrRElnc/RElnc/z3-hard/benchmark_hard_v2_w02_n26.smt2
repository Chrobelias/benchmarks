(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "37")))

(assert (str.in_re y (re.* (re.++ (re.+ (str.to_re "7")) (re.* (str.to_re "937"))))))
(assert (str.in_re x (re.+ (re.union (re.range "4" "7") (re.union (re.* (str.to_re "613")) (re.range "0" "6"))))))

(assert (= (+ (* 2 (str.len y)) (* (- 3) (str.to_int x))) 69))

(check-sat)