(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (str.to_re "3") (re.+ (str.to_re "6")))))
(assert (str.in_re y (re.* (re.union (re.* (str.to_re "38")) (re.range "4" "6")))))

(assert (= (+ (* (- 8) (str.to_int x)) (* 7 (str.to_int y))) 11))
(assert (= (* (- 7) (str.len x)) 76))

(check-sat)