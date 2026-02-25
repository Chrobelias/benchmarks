(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (re.+ (str.to_re "5")) (re.union (str.to_re "88") (re.* (str.to_re "8"))))))
(assert (str.in_re x (re.+ (re.++ (str.to_re "704") (re.++ (re.range "3" "6") (re.+ (str.to_re "1")))))))

(assert (<= (+ (* (- 9) (str.to_int x)) (* (- 7) (str.to_int y))) 38))
(assert (= (* (- 5) (str.len x)) 18))

(check-sat)