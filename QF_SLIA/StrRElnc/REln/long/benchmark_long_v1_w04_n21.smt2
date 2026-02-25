(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (str.to_re "78"))))

(assert (> (+ (* (- 4) (str.len x)) (* 9 (str.to_int x))) 31))
(assert (>= (* (- 4) (str.to_int x)) 99))
(assert (< (* (- 7) (str.to_int x)) 8))

(check-sat)