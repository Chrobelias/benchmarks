(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "99")))

(assert (str.in_re x (re.++ (re.+ (re.range "2" "9")) (re.union (re.* (str.to_re "603")) (str.to_re "354")))))
(assert (str.in_re y (re.union (re.++ (re.range "3" "9") (str.to_re "8")) (re.* (str.to_re "897")))))

(assert (<= (+ (* (- 10) (str.len x)) (* 8 (str.to_int x)) (* 4 (str.to_int y))) 69))

(check-sat)