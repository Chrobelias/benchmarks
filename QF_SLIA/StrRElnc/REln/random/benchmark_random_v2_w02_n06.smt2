(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (re.* (re.* (str.to_re "62"))) (str.to_re "807"))))
(assert (str.in_re x (re.++ (re.range "6" "8") (re.+ (str.to_re "8")))))

(assert (< (+ (* (- 5) (str.len y)) (str.to_int y)) 56))

(check-sat)