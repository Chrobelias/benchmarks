(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "28")) (re.++ (str.to_re "152") (re.range "4" "6")))))
(assert (str.in_re y (re.* (re.union (re.+ (str.to_re "867")) (re.* (re.range "4" "8"))))))

(assert (<= (+ (* (- 2) (str.len x)) (* 8 (str.len y)) (* 4 (str.to_int x))) 12))
(assert (>= (+ (* 10 (str.to_int x)) (* 3 (str.to_int y))) 65))

(check-sat)