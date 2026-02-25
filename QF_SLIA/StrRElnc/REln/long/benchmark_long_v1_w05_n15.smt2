(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.+ (str.to_re "963")))))

(assert (> (* (- 10) (str.len x)) 66))
(assert (> (+ (* (- 3) (str.len x)) (* (- 5) (str.to_int x))) 35))
(assert (<= (* (- 5) (str.len x)) 95))
(assert (< (* 4 (str.len x)) 42))

(check-sat)