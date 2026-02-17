(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.union (str.to_re "649") (re.* (re.range "0" "3"))) (str.to_re "5"))))

(assert (>= (* 7 (str.to_int x)) 15))
(assert (<= (* (- 2) (str.len x)) 63))
(assert (>= (+ (* (- 8) (str.len x)) (* 7 (str.to_int x))) 43))

(check-sat)
(get-model)