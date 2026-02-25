(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (re.+ (re.* (str.to_re "50"))) (re.* (re.range "5" "7")))))
(assert (str.in_re x (re.++ (re.* (str.to_re "87")) (re.union (str.to_re "485") (str.to_re "297")))))

(assert (<= (+ (* (- 4) (str.len x)) (* 8 (str.to_int x)) (* 3 (str.to_int y))) 94))
(assert (>= (+ (* (- 5) (str.to_int x)) (* 4 (str.to_int y))) 46))

(check-sat)