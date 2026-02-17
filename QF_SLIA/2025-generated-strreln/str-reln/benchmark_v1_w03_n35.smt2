(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "25") (re.union (re.* (str.to_re "650")) (str.to_re "210")))))

(assert (< (+ (* (- 3) (str.len x)) (* (- 5) (str.to_int x))) 21))
(assert (<= (* 4 (str.to_int x)) 70))

(check-sat)