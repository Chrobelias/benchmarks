(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (str.to_re "593"))))

(assert (< (* 10 (str.len x)) 50))
(assert (>= (* (- 6) (str.len x)) 74))
(assert (<= (+ (* 10 (str.len x)) (* 3 (str.to_int x))) 11))
(assert (>= (* (- 4) (str.len x)) 72))

(check-sat)