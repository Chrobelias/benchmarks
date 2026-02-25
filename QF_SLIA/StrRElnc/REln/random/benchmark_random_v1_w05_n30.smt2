(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.* (re.++ (str.to_re "22") (str.to_re "3"))))))

(assert (> (+ (* (- 9) (str.len x)) (* (- 9) (str.to_int x))) 16))
(assert (<= (* (- 4) (str.to_int x)) 3))
(assert (<= (+ (* (- 7) (str.len x)) (* (- 3) (str.to_int x))) 11))

(check-sat)