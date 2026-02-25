(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.+ (str.to_re "849")) (re.* (re.+ (str.to_re "617"))))))

(assert (>= (* 8 (str.to_int x)) 13))
(assert (<= (* 7 (str.to_int x)) 34))
(assert (<= (+ (* 10 (str.len x)) (* 5 (str.to_int x))) 52))

(check-sat)