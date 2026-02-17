(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (re.++ (re.* (re.range "6" "8")) (str.to_re "564")) (str.to_re "371")))))

(assert (> (* 2 (str.to_int x)) 14))
(assert (= (+ (* 4 (str.len x)) (* (- 5) (str.to_int x))) 24))
(assert (>= (* 4 (str.to_int x)) 20))

(check-sat)