(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (re.+ (re.* (re.range "6" "8"))) (re.* (str.to_re "7")))))
(assert (str.in_re x (re.+ (re.union (str.to_re "4") (str.to_re "442")))))

(assert (>= (+ (* 4 (str.len y)) (* (- 7) (str.to_int y))) 79))

(check-sat)