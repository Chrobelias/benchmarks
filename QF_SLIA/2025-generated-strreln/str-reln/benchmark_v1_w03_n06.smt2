(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "398")) (re.++ (str.to_re "74") (re.* (str.to_re "29"))))))

(assert (<= (+ (* (- 5) (str.len x)) (* (- 4) (str.to_int x))) 96))
(assert (< (* 8 (str.to_int x)) 60))

(check-sat)