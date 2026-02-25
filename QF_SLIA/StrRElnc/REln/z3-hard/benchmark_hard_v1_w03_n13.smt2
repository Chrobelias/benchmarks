(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "82") (re.* (re.++ (re.+ (str.to_re "52")) (str.to_re "935"))))))

(assert (>= (* 6 (str.len x)) 16))
(assert (<= (+ (* (- 7) (str.len x)) (* 3 (str.to_int x))) 58))

(check-sat)