(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.union (re.* (str.to_re "0")) (re.+ (str.to_re "45"))))))

(assert (= (+ (* 4 (str.len x)) (* 9 (str.to_int x))) 90))
(assert (<= (* 8 (str.len x)) 98))
(assert (> (* 7 (str.len x)) 74))

(check-sat)