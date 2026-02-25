(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (re.+ (re.range "5" "8")) (re.+ (str.to_re "719")))))
(assert (str.in_re x (re.union (re.* (str.to_re "850")) (re.union (re.+ (re.range "3" "7")) (str.to_re "417")))))

(assert (<= (+ (* 3 (str.len x)) (* (- 8) (str.len y))) 78))
(assert (= (* 3 (str.to_int y)) 82))

(check-sat)