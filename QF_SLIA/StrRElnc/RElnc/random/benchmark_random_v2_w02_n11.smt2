(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "12" y)))

(assert (str.in_re y (re.+ (re.+ (re.* (str.to_re "524"))))))
(assert (str.in_re x (re.union (re.union (re.range "3" "6") (str.to_re "566")) (re.+ (re.range "1" "7")))))

(assert (> (+ (* 7 (str.len x)) (* 2 (str.to_int x)) (* (- 6) (str.to_int y))) 80))

(check-sat)