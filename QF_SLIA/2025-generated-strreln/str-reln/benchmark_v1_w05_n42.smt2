(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "9") (re.union (re.+ (str.to_re "515")) (str.to_re "75")))))

(assert (>= (* 8 (str.len x)) 9))
(assert (>= (+ (* 2 (str.len x)) (* (- 3) (str.to_int x))) 61))
(assert (<= (+ (* (- 10) (str.len x)) (* (- 10) (str.to_int x))) 58))

(check-sat)