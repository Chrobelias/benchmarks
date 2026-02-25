(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.union (re.* (re.range "4" "8")) (re.* (str.to_re "6"))) (str.to_re "57"))))

(assert (> (* 2 (str.to_int x)) 15))
(assert (<= (* (- 7) (str.len x)) 91))
(assert (> (+ (* 9 (str.len x)) (* (- 3) (str.to_int x))) 12))

(check-sat)