(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.++ (str.to_re "309") (re.union (str.to_re "747") (re.* (re.range "7" "9")))) (str.to_re "199"))))

(assert (> (+ (* 9 (str.len x)) (* (- 5) (str.to_int x))) 63))
(assert (> (* 9 (str.len x)) 95))
(assert (<= (* (- 9) (str.to_int x)) 98))

(check-sat)