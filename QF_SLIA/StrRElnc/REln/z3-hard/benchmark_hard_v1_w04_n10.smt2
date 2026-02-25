(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "42") (re.++ (str.to_re "149") (str.to_re "18"))))))

(assert (<= (* (- 7) (str.len x)) 45))
(assert (> (+ (* 4 (str.len x)) (* 8 (str.to_int x))) 4))
(assert (<= (* 8 (str.to_int x)) 23))

(check-sat)