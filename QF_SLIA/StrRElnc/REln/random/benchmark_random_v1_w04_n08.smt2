(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.* (re.range "7" "9")) (str.to_re "3"))))

(assert (<= (* (- 3) (str.len x)) 75))
(assert (= (* 8 (str.to_int x)) 98))
(assert (>= (+ (* (- 3) (str.len x)) (* (- 5) (str.to_int x))) 15))

(check-sat)