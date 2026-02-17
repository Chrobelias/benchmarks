(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.+ (re.union (str.to_re "9") (re.+ (str.to_re "93")))))))

(assert (<= (* (- 2) (str.len x)) 43))
(assert (<= (+ (* (- 6) (str.len x)) (* 4 (str.to_int x))) 26))
(assert (< (* (- 3) (str.len x)) 71))

(check-sat)