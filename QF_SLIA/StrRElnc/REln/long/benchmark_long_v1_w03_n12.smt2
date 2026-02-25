(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.union (str.to_re "166") (re.* (re.range "0" "3"))) (str.to_re "306"))))

(assert (<= (+ (* 3 (str.len x)) (* 10 (str.to_int x))) 51))
(assert (>= (* (- 6) (str.to_int x)) 2))

(check-sat)